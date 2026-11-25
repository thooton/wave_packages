/* Prints the CPUID feature bits XNNPACK's x86 hardware config reads. */
#include <cpuid.h>
#include <stdio.h>
#include <string.h>

static unsigned long long xgetbv0(int osxsave) {
  if (!osxsave) return 0;
  unsigned lo, hi;
  __asm__ volatile("xgetbv" : "=a"(lo), "=d"(hi) : "c"(0));
  return ((unsigned long long)hi << 32) | lo;
}

int main(void) {
  unsigned a, b, c, d;
  char vendor[13] = {0};
  __get_cpuid(0, &a, &b, &c, &d);
  memcpy(vendor, &b, 4); memcpy(vendor + 4, &d, 4); memcpy(vendor + 8, &c, 4);
  unsigned fam_model;
  __get_cpuid(1, &fam_model, &b, &c, &d);
  int fma = (c >> 12) & 1, avx = (c >> 28) & 1, f16c = (c >> 29) & 1, osxsave = (c >> 27) & 1;
  unsigned long long xcr0 = xgetbv0(osxsave);
  __get_cpuid_count(7, 0, &a, &b, &c, &d);
  int avx2 = (b >> 5) & 1, avx512f = (b >> 16) & 1, avx512dq = (b >> 17) & 1, avx512bw = (b >> 30) & 1,
      avx512vl = (b >> 31) & 1, avx512vbmi = (c >> 1) & 1, gfni = (c >> 8) & 1, avx512vnni = (c >> 11) & 1,
      avx512fp16 = (d >> 23) & 1, amx_int8 = (d >> 25) & 1;
  __get_cpuid_count(7, 1, &a, &b, &c, &d);
  int avxvnni = (a >> 4) & 1, avx512bf16 = (a >> 5) & 1, avxvnniint8 = (d >> 4) & 1;
  printf("vendor=%s leaf1.eax=0x%08x xcr0=0x%llx fma=%d avx=%d f16c=%d avx2=%d avx512f=%d avx512dq=%d "
         "avx512bw=%d avx512vl=%d avx512vbmi=%d avx512vnni=%d gfni=%d avx512fp16=%d avx512bf16=%d "
         "amx_int8=%d avxvnni=%d avxvnniint8=%d\n",
         vendor, fam_model, xcr0, fma, avx, f16c, avx2, avx512f, avx512dq, avx512bw, avx512vl, avx512vbmi,
         avx512vnni, gfni, avx512fp16, avx512bf16, amx_int8, avxvnni, avxvnniint8);
  return 0;
}
