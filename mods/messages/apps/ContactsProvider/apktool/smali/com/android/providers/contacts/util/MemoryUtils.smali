.class public final Lcom/android/providers/contacts/util/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field private static sTotalMemorySize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/providers/contacts/util/MemoryUtils;->sTotalMemorySize:J

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getTotalMemorySize()J
    .locals 4

    .prologue
    .line 34
    sget-wide v0, Lcom/android/providers/contacts/util/MemoryUtils;->sTotalMemorySize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 36
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 39
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    sput-wide v0, Lcom/android/providers/contacts/util/MemoryUtils;->sTotalMemorySize:J

    .line 41
    :cond_0
    sget-wide v0, Lcom/android/providers/contacts/util/MemoryUtils;->sTotalMemorySize:J

    return-wide v0
.end method
