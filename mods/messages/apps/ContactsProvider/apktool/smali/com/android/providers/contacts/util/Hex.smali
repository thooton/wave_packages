.class public Lcom/android/providers/contacts/util/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final DIGITS:[B

.field private static final FIRST_CHAR:[C

.field private static final HEX_DIGITS:[C

.field private static final SECOND_CHAR:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/16 v5, 0xa

    const/4 v0, 0x0

    .line 25
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/providers/contacts/util/Hex;->HEX_DIGITS:[C

    .line 30
    new-array v1, v6, [C

    sput-object v1, Lcom/android/providers/contacts/util/Hex;->FIRST_CHAR:[C

    .line 31
    new-array v1, v6, [C

    sput-object v1, Lcom/android/providers/contacts/util/Hex;->SECOND_CHAR:[C

    move v1, v0

    .line 33
    :goto_0
    if-ge v1, v6, :cond_0

    .line 34
    sget-object v2, Lcom/android/providers/contacts/util/Hex;->FIRST_CHAR:[C

    sget-object v3, Lcom/android/providers/contacts/util/Hex;->HEX_DIGITS:[C

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    .line 35
    sget-object v2, Lcom/android/providers/contacts/util/Hex;->SECOND_CHAR:[C

    sget-object v3, Lcom/android/providers/contacts/util/Hex;->HEX_DIGITS:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const/16 v1, 0x67

    new-array v1, v1, [B

    sput-object v1, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    move v1, v0

    .line 41
    :goto_1
    const/16 v2, 0x46

    if-gt v1, v2, :cond_1

    .line 42
    sget-object v2, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 44
    :goto_2
    if-ge v1, v5, :cond_2

    .line 45
    sget-object v2, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    add-int/lit8 v3, v1, 0x30

    aput-byte v1, v2, v3

    .line 44
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_2

    .line 47
    :cond_2
    :goto_3
    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    .line 48
    sget-object v1, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 49
    sget-object v1, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 47
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_3

    .line 23
    :cond_3
    return-void

    .line 25
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 11

    .prologue
    const/16 v10, 0x66

    const/4 v9, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 85
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Odd number of characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    shr-int/lit8 v2, v4, 0x1

    new-array v5, v2, [B

    move v2, v1

    move v3, v1

    .line 91
    :goto_0
    if-ge v2, v4, :cond_4

    .line 92
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 93
    if-le v2, v10, :cond_2

    .line 119
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid hexadecimal digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    sget-object v7, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    aget-byte v7, v7, v2

    .line 99
    if-eq v7, v9, :cond_1

    .line 104
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 105
    if-gt v6, v10, :cond_1

    .line 110
    sget-object v8, Lcom/android/providers/contacts/util/Hex;->DIGITS:[B

    aget-byte v6, v8, v6

    .line 111
    if-eq v6, v9, :cond_1

    .line 116
    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_3
    return-object v5

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static encodeHex([BZ)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 59
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [C

    move v0, v1

    move v2, v1

    .line 62
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 63
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    .line 64
    if-eqz p1, :cond_1

    if-nez v4, :cond_1

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 68
    :cond_1
    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/android/providers/contacts/util/Hex;->FIRST_CHAR:[C

    aget-char v6, v6, v4

    aput-char v6, v3, v2

    .line 69
    add-int/lit8 v2, v5, 0x1

    sget-object v6, Lcom/android/providers/contacts/util/Hex;->SECOND_CHAR:[C

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
