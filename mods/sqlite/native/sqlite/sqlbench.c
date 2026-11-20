/*
 * sqlbench: replay SQL against a database copy with whatever libsqlite.so the dynamic linker picks
 * (LD_LIBRARY_PATH selects stock vs new), set up the way android.database.sqlite does it (Android
 * functions + localized collators, UTF-16 column reads). Prints only row counts, result hashes and
 * timings, never data. Built by tools/sqlite/build.sh, driven by tools/sqlite/bench.sh.
 *
 *   sqlbench <db> <queries.sql> [iterations]
 *
 * queries.sql: statements separated by lines that are exactly ";;". A line "-- name: X" before a
 * statement labels it. Each run is wrapped in SAVEPOINT/ROLLBACK, so writes are measured but undone.
 * Output per statement: name, rows, ordered hash, order-independent hash, median/min ms.
 */
#include <fcntl.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <time.h>
#include <unistd.h>

#include <sqlite3.h>
#include <unicode/udata.h>
#include "sqlite3_android.h"

static double now_ms(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return ts.tv_sec * 1e3 + ts.tv_nsec / 1e6;
}

static uint64_t fnv(uint64_t h, const void *p, size_t n) {
    const unsigned char *b = p;
    while (n--) { h ^= *b++; h *= 1099511628211ULL; }
    return h;
}

static void icu_init(void) {  /* what libicuandroid_utils' InitializeIcuOrDie does on 8.1 */
    const char *path = "/system/usr/icu/icudt58l.dat";
    int fd = open(path, O_RDONLY);
    struct stat st;
    if (fd < 0 || fstat(fd, &st) < 0) { fprintf(stderr, "cannot open %s\n", path); exit(2); }
    void *data = mmap(NULL, st.st_size, PROT_READ, MAP_SHARED, fd, 0);
    UErrorCode status = U_ZERO_ERROR;
    udata_setCommonData(data, &status);
    if (U_FAILURE(status)) { fprintf(stderr, "udata_setCommonData failed: %d\n", status); exit(2); }
}

static int cmpd(const void *a, const void *b) {
    double x = *(const double *)a, y = *(const double *)b;
    return x < y ? -1 : x > y;
}

/* one execution: returns ms; fills rows/hashes */
static double run(sqlite3 *db, const char *sql, long *rows, uint64_t *oh, uint64_t *uh, int *err) {
    sqlite3_exec(db, "SAVEPOINT bench", 0, 0, 0);
    double t0 = now_ms();
    sqlite3_stmt *st = NULL;
    const char *tail = sql;
    *rows = 0; *oh = 1469598103934665603ULL; *uh = 0; *err = 0;
    while (tail && *tail) {
        if (sqlite3_prepare_v2(db, tail, -1, &st, &tail) != SQLITE_OK) { *err = 1; break; }
        if (!st) break;  /* trailing whitespace/comment */
        int rc;
        while ((rc = sqlite3_step(st)) == SQLITE_ROW) {
            uint64_t rh = 1469598103934665603ULL;
            int n = sqlite3_column_count(st);
            for (int i = 0; i < n; i++) {
                int t = sqlite3_column_type(st, i);
                rh = fnv(rh, &t, sizeof t);
                if (t == SQLITE_INTEGER) { sqlite3_int64 v = sqlite3_column_int64(st, i); rh = fnv(rh, &v, sizeof v); }
                else if (t == SQLITE_FLOAT) { double v = sqlite3_column_double(st, i); rh = fnv(rh, &v, sizeof v); }
                else if (t == SQLITE_TEXT) { const void *v = sqlite3_column_text16(st, i); rh = fnv(rh, v, sqlite3_column_bytes16(st, i)); }
                else if (t == SQLITE_BLOB) { const void *v = sqlite3_column_blob(st, i); rh = fnv(rh, v, sqlite3_column_bytes(st, i)); }
            }
            *oh = fnv(*oh, &rh, sizeof rh);
            *uh += rh * 0x9E3779B97F4A7C15ULL;
            (*rows)++;
        }
        if (rc != SQLITE_DONE) *err = 1;
        sqlite3_finalize(st); st = NULL;
        if (*err) break;
    }
    double t = now_ms() - t0;
    if (*err) fprintf(stderr, "  error: %s\n", sqlite3_errmsg(db));
    sqlite3_exec(db, "ROLLBACK TO bench; RELEASE bench", 0, 0, 0);
    return t;
}

int main(int argc, char **argv) {
    if (argc < 3) { fprintf(stderr, "usage: sqlbench <db> <queries.sql> [iterations]\n"); return 2; }
    int iters = argc > 3 ? atoi(argv[3]) : 15;
    setvbuf(stdout, NULL, _IOLBF, 0);
    icu_init();
    sqlite3 *db;
    if (sqlite3_open_v2(argv[1], &db, SQLITE_OPEN_READWRITE, NULL) != SQLITE_OK) {
        fprintf(stderr, "open %s: %s\n", argv[1], sqlite3_errmsg(db)); return 1;
    }
    sqlite3_busy_timeout(db, 2500);
    if (register_localized_collators(db, "en_US", 0) != SQLITE_OK ||
        register_android_functions(db, 0) != SQLITE_OK) {
        fprintf(stderr, "registering Android functions failed\n"); return 1;
    }
    printf("# sqlite %s  db=%s  iterations=%d\n", sqlite3_libversion(), argv[1], iters);

    FILE *f = fopen(argv[2], "r");
    if (!f) { perror(argv[2]); return 1; }
    char line[65536], name[256] = "", *sql = calloc(1, 1);
    size_t len = 0;
    int q = 0;
    double *times = malloc(sizeof(double) * (iters > 0 ? iters : 1)), total = 0;
    for (;;) {
        char *got = fgets(line, sizeof line, f);
        if (got && strncmp(line, "-- name:", 8) == 0) {
            sscanf(line + 8, " %255[^\n]", name);
            continue;
        }
        if (!got || strcmp(line, ";;\n") == 0 || strcmp(line, ";;") == 0) {
            if (len > 0 && strspn(sql, " \t\r\n") < len) {
                q++;
                if (getenv("SQLBENCH_TRACE")) fprintf(stderr, "> %s\n", name[0] ? name : "q");
                long rows = 0; uint64_t oh = 0, uh = 0; int err = 0;
                run(db, sql, &rows, &oh, &uh, &err);  /* warm-up (page cache, schema) */
                run(db, sql, &rows, &oh, &uh, &err);
                for (int i = 0; i < iters; i++) times[i] = run(db, sql, &rows, &oh, &uh, &err);
                qsort(times, iters, sizeof(double), cmpd);
                double med = iters ? times[iters / 2] : 0;
                total += med;
                printf("%-28s rows=%-6ld ohash=%016llx uhash=%016llx med=%8.3f min=%8.3f%s\n",
                       name[0] ? name : "q", rows, (unsigned long long)oh, (unsigned long long)uh,
                       med, iters ? times[0] : 0, err ? " ERROR" : "");
                (void)q;
            }
            len = 0; sql[0] = 0; name[0] = 0;
            if (!got) break;
            continue;
        }
        size_t n = strlen(line);
        sql = realloc(sql, len + n + 1);
        memcpy(sql + len, line, n + 1);
        len += n;
    }
    printf("# total of medians: %.3f ms\n", total);
    sqlite3_close(db);
    return 0;
}
