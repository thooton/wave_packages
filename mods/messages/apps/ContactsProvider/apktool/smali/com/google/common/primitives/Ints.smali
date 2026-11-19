.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;
    }
.end annotation


# static fields
.field private static final asciiDigits:[B


# direct methods
.method static synthetic -wrap0([IIII)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([IIII)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 639
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    .line 642
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    move v1, v0

    .line 643
    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    .line 644
    sget-object v2, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    :cond_0
    :goto_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 647
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 648
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashCode(I)I
    .locals 0

    .prologue
    .line 76
    return p0
.end method

.method private static indexOf([IIII)I
    .locals 1

    .prologue
    .line 164
    :goto_0
    if-ge p2, p3, :cond_1

    .line 165
    aget v0, p0, p2

    if-ne v0, p1, :cond_0

    .line 166
    return p2

    .line 164
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static lastIndexOf([IIII)I
    .locals 2

    .prologue
    .line 218
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 219
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 220
    return v0

    .line 218
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static saturatedCast(J)I
    .locals 2

    .prologue
    .line 105
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 106
    const v0, 0x7fffffff

    return v0

    .line 108
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 109
    const/high16 v0, -0x80000000

    return v0

    .line 111
    :cond_1
    long-to-int v0, p0

    return v0
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 481
    instance-of v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v0, :cond_0

    .line 482
    check-cast p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->toIntArray()[I

    move-result-object v0

    return-object v0

    .line 485
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 486
    array-length v3, v2

    .line 487
    new-array v4, v3, [I

    .line 488
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 490
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    aput v0, v4, v1

    .line 488
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 492
    :cond_1
    return-object v4
.end method
