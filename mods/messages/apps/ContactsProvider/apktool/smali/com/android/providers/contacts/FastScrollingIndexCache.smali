.class public Lcom/android/providers/contacts/FastScrollingIndexCache;
.super Ljava/lang/Object;
.source "FastScrollingIndexCache.java"


# static fields
.field static final PREFERENCE_KEY:Ljava/lang/String; = "LetterCountCache"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SAVE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceLoaded:Z

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "\u0001"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/FastScrollingIndexCache;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 68
    const-string/jumbo v0, "\u0002"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/FastScrollingIndexCache;->SAVE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    .line 112
    iput-object p1, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPrefs:Landroid/content/SharedPreferences;

    .line 113
    return-void
.end method

.method private static appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    return-void
.end method

.method private static buildCacheKey(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-static {v1, p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 132
    const-string/jumbo v0, "\u0001"

    invoke-static {v1, v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 133
    invoke-static {v1, p1}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 134
    const-string/jumbo v0, "\u0001"

    invoke-static {v1, v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 135
    invoke-static {v1, p3}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 136
    const-string/jumbo v0, "\u0001"

    invoke-static {v1, v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 137
    invoke-static {v1, p4}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 139
    if-eqz p2, :cond_0

    .line 140
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 141
    const-string/jumbo v2, "\u0001"

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 142
    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static buildCacheValue([Ljava/lang/String;[I)Ljava/lang/String;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 153
    if-lez v0, :cond_0

    .line 154
    const-string/jumbo v2, "\u0001"

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 156
    :cond_0
    aget-object v2, p0, v0

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 157
    const-string/jumbo v2, "\u0001"

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 158
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final buildExtraBundle([Ljava/lang/String;[I)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    const-string/jumbo v1, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 171
    return-object v0
.end method

.method static buildExtraBundleFromValue(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-array v0, v1, [Ljava/lang/String;

    .line 183
    :goto_0
    array-length v2, v0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 184
    return-object v6

    .line 180
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/FastScrollingIndexCache;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_1
    :try_start_0
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 189
    new-array v3, v2, [Ljava/lang/String;

    .line 190
    new-array v4, v2, [I

    .line 192
    :goto_1
    if-ge v1, v2, :cond_2

    .line 193
    mul-int/lit8 v5, v1, 0x2

    aget-object v5, v0, v5

    aput-object v5, v3, v1

    .line 194
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    :cond_2
    invoke-static {v3, v4}, Lcom/android/providers/contacts/FastScrollingIndexCache;->buildExtraBundle([Ljava/lang/String;[I)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string/jumbo v1, "LetterCountCache"

    const-string/jumbo v2, "Failed to parse cached value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    return-object v6
.end method

.method private ensureLoaded()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 284
    iget-boolean v1, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPreferenceLoaded:Z

    if-eqz v1, :cond_0

    return-void

    .line 286
    :cond_0
    const-string/jumbo v1, "LetterCountCache"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    const-string/jumbo v1, "LetterCountCache"

    const-string/jumbo v2, "Loading..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    iput-boolean v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPreferenceLoaded:Z

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "LetterCountCache"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 299
    sget-object v2, Lcom/android/providers/contacts/FastScrollingIndexCache;->SAVE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 301
    array-length v2, v1

    rem-int/lit8 v2, v2, 0x2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->invalidate()V

    .line 302
    return-void

    .line 305
    :cond_2
    :goto_0
    :try_start_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 306
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    .line 307
    aget-object v3, v1, v0

    .line 309
    const-string/jumbo v4, "LetterCountCache"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 310
    const-string/jumbo v4, "LetterCountCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_3
    iget-object v4, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    :try_start_2
    const-string/jumbo v1, "LetterCountCache"

    const-string/jumbo v2, "Failed to load from preferences"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    invoke-virtual {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->invalidate()V

    .line 325
    :cond_4
    return-void

    .line 320
    :catchall_0
    move-exception v0

    .line 322
    invoke-virtual {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->invalidate()V

    .line 320
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/FastScrollingIndexCache;
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/android/providers/contacts/FastScrollingIndexCache;->sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 95
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    new-instance v2, Lcom/android/providers/contacts/FastScrollingIndexCache;

    invoke-direct {v2, v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v2, Lcom/android/providers/contacts/FastScrollingIndexCache;->sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 101
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/FastScrollingIndexCache;->sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 97
    throw v0
.end method

.method static declared-synchronized getInstanceForTest(Landroid/content/SharedPreferences;)Lcom/android/providers/contacts/FastScrollingIndexCache;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-class v1, Lcom/android/providers/contacts/FastScrollingIndexCache;

    monitor-enter v1

    .line 107
    :try_start_0
    new-instance v0, Lcom/android/providers/contacts/FastScrollingIndexCache;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/android/providers/contacts/FastScrollingIndexCache;->sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;

    .line 108
    sget-object v0, Lcom/android/providers/contacts/FastScrollingIndexCache;->sSingleton:Lcom/android/providers/contacts/FastScrollingIndexCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private save()V
    .locals 4

    .prologue
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    iget-object v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 274
    const-string/jumbo v3, "\u0002"

    invoke-static {v1, v3}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 276
    :cond_0
    invoke-static {v1, v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 277
    const-string/jumbo v3, "\u0002"

    invoke-static {v1, v3}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 278
    iget-object v3, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->appendIfNotNull(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "LetterCountCache"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    return-void
.end method


# virtual methods
.method public get(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 206
    iget-object v1, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    monitor-enter v1

    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->ensureLoaded()V

    .line 208
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/providers/contacts/FastScrollingIndexCache;->buildCacheKey(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    iget-object v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    if-nez v0, :cond_1

    .line 212
    const-string/jumbo v0, "LetterCountCache"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string/jumbo v0, "LetterCountCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Miss: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 215
    return-object v5

    .line 218
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->buildExtraBundleFromValue(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 219
    if-nez v0, :cond_3

    .line 221
    iget-object v3, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-direct {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    .line 228
    return-object v0

    .line 224
    :cond_3
    :try_start_2
    const-string/jumbo v3, "LetterCountCache"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    const-string/jumbo v3, "LetterCountCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Hit:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "LetterCountCache"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    iget-object v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mPreferenceLoaded:Z

    .line 259
    const-string/jumbo v0, "LetterCountCache"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string/jumbo v0, "LetterCountCache"

    const-string/jumbo v2, "Invalidated"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 263
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public put(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    monitor-enter v1

    .line 239
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->ensureLoaded()V

    .line 240
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/providers/contacts/FastScrollingIndexCache;->buildCacheKey(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v2, p0, Lcom/android/providers/contacts/FastScrollingIndexCache;->mCache:Ljava/util/Map;

    .line 243
    const-string/jumbo v3, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    invoke-virtual {p6, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 244
    const-string/jumbo v4, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    invoke-virtual {p6, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 242
    invoke-static {v3, v4}, Lcom/android/providers/contacts/FastScrollingIndexCache;->buildCacheValue([Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-direct {p0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->save()V

    .line 247
    const-string/jumbo v2, "LetterCountCache"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const-string/jumbo v2, "LetterCountCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Put: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 251
    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
