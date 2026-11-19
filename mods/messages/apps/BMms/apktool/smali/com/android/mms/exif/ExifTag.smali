.class public Lcom/android/mms/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TYPE_TO_SIZE_MAP:[I

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 70
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/mms/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    .line 78
    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v2

    .line 79
    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v4

    .line 80
    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 81
    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v3, v0, v3

    .line 82
    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 83
    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 84
    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 85
    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 31
    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-short p1, p0, Lcom/android/mms/exif/ExifTag;->mTagId:S

    .line 130
    iput-short p2, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    .line 131
    iput p3, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    .line 132
    iput-boolean p5, p0, Lcom/android/mms/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 133
    iput p4, p0, Lcom/android/mms/exif/ExifTag;->mIfd:I

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/android/mms/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    .line 884
    const/4 v0, 0x1

    return v0

    .line 886
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkOverflowForRational([Lcom/android/mms/exif/Rational;)Z
    .locals 10

    .prologue
    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, -0x80000000

    const/4 v1, 0x0

    .line 951
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 952
    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 955
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 953
    :cond_1
    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    .line 954
    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-gtz v3, :cond_0

    .line 951
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 958
    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 931
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    .line 932
    if-gez v3, :cond_0

    .line 933
    const/4 v0, 0x1

    return v0

    .line 931
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 936
    :cond_1
    return v1
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 922
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-wide v4, p1, v0

    .line 923
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const-wide v6, 0xffffffffL

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 924
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 922
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 927
    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedRational([Lcom/android/mms/exif/Rational;)Z
    .locals 10

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 940
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 941
    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 944
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 942
    :cond_1
    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    .line 943
    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-gtz v3, :cond_0

    .line 940
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 947
    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 913
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget v3, p1, v0

    .line 914
    const v4, 0xffff

    if-gt v3, v4, :cond_0

    if-gez v3, :cond_1

    .line 915
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 913
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 918
    :cond_2
    return v1
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1

    .prologue
    .line 890
    packed-switch p0, :pswitch_data_0

    .line 908
    :pswitch_0
    const-string/jumbo v0, ""

    return-object v0

    .line 892
    :pswitch_1
    const-string/jumbo v0, "UNSIGNED_BYTE"

    return-object v0

    .line 894
    :pswitch_2
    const-string/jumbo v0, "ASCII"

    return-object v0

    .line 896
    :pswitch_3
    const-string/jumbo v0, "UNSIGNED_SHORT"

    return-object v0

    .line 898
    :pswitch_4
    const-string/jumbo v0, "UNSIGNED_LONG"

    return-object v0

    .line 900
    :pswitch_5
    const-string/jumbo v0, "UNSIGNED_RATIONAL"

    return-object v0

    .line 902
    :pswitch_6
    const-string/jumbo v0, "UNDEFINED"

    return-object v0

    .line 904
    :pswitch_7
    const-string/jumbo v0, "LONG"

    return-object v0

    .line 906
    :pswitch_8
    const-string/jumbo v0, "RATIONAL"

    return-object v0

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v0, v0, p0

    return v0
.end method

.method public static isValidIfd(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 111
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    .line 113
    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isValidType(S)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 120
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 122
    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 123
    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 963
    if-nez p1, :cond_0

    .line 964
    return v0

    .line 966
    :cond_0
    instance-of v1, p1, Lcom/android/mms/exif/ExifTag;

    if-eqz v1, :cond_c

    .line 967
    check-cast p1, Lcom/android/mms/exif/ExifTag;

    .line 968
    iget-short v1, p1, Lcom/android/mms/exif/ExifTag;->mTagId:S

    iget-short v2, p0, Lcom/android/mms/exif/ExifTag;->mTagId:S

    if-ne v1, v2, :cond_1

    .line 969
    iget v1, p1, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    iget v2, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    if-eq v1, v2, :cond_2

    .line 971
    :cond_1
    return v0

    .line 970
    :cond_2
    iget-short v1, p1, Lcom/android/mms/exif/ExifTag;->mDataType:S

    iget-short v2, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v1, v2, :cond_1

    .line 973
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v1, :cond_a

    .line 974
    iget-object v1, p1, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 975
    return v0

    .line 976
    :cond_3
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_5

    .line 977
    iget-object v1, p1, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-nez v1, :cond_4

    .line 978
    return v0

    .line 980
    :cond_4
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 981
    :cond_5
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/android/mms/exif/Rational;

    if-eqz v1, :cond_7

    .line 982
    iget-object v1, p1, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/android/mms/exif/Rational;

    if-nez v1, :cond_6

    .line 983
    return v0

    .line 985
    :cond_6
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/android/mms/exif/Rational;

    iget-object v1, p1, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Lcom/android/mms/exif/Rational;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 986
    :cond_7
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_9

    .line 987
    iget-object v1, p1, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-nez v1, :cond_8

    .line 988
    return v0

    .line 990
    :cond_8
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 992
    :cond_9
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 995
    :cond_a
    iget-object v1, p1, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 998
    :cond_c
    return v0
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 748
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 749
    const-string/jumbo v0, ""

    return-object v0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    .line 751
    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 752
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    sget-object v2, Lcom/android/mms/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_4

    .line 757
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    if-ne v0, v2, :cond_3

    .line 758
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 760
    :cond_3
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 762
    :cond_4
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 763
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-ne v0, v2, :cond_6

    .line 764
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 765
    if-nez v0, :cond_5

    .line 766
    const-string/jumbo v0, ""

    return-object v0

    .line 768
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 771
    :cond_6
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 774
    :cond_7
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected forceSetComponentCount(I)V
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    .line 215
    return-void
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lcom/android/mms/exif/ExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    .prologue
    .line 190
    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/mms/exif/ExifTag;->mIfd:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Lcom/android/mms/exif/ExifTag;->mOffset:I

    return v0
.end method

.method public getTagId()S
    .locals 1

    .prologue
    .line 174
    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mTagId:S

    return v0
.end method

.method public getValueAsInts()[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 653
    return-object v1

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    .line 656
    array-length v1, v0

    new-array v2, v1, [I

    .line 657
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 658
    aget-wide v4, v0, v1

    long-to-int v3, v4

    aput v3, v2, v1

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_1
    return-object v2

    .line 662
    :cond_2
    return-object v1
.end method

.method protected getValueAt(I)J
    .locals 3

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, p1

    return-wide v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 794
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 795
    iget-short v2, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/mms/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    .line 794
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasDefinedCount()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/android/mms/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0

    .prologue
    .line 875
    iput-boolean p1, p0, Lcom/android/mms/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 876
    return-void
.end method

.method protected setIfd(I)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lcom/android/mms/exif/ExifTag;->mIfd:I

    .line 168
    return-void
.end method

.method protected setOffset(I)V
    .locals 0

    .prologue
    .line 871
    iput p1, p0, Lcom/android/mms/exif/ExifTag;->mOffset:I

    .line 872
    return-void
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 328
    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v0, v2, :cond_0

    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v0, v5, :cond_0

    .line 329
    return v3

    .line 332
    :cond_0
    sget-object v0, Lcom/android/mms/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 334
    array-length v1, v0

    if-lez v1, :cond_3

    .line 335
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    if-eqz v1, :cond_1

    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v1, v5, :cond_2

    .line 340
    :cond_1
    :goto_0
    array-length v1, v0

    .line 341
    invoke-direct {p0, v1}, Lcom/android/mms/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 342
    return v3

    .line 336
    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 335
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_3
    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    if-ne v1, v4, :cond_1

    .line 338
    new-array v0, v4, [B

    aput-byte v3, v0, v3

    goto :goto_0

    .line 344
    :cond_4
    iput v1, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    .line 345
    iput-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 346
    return v4
.end method

.method public setValue([B)Z
    .locals 2

    .prologue
    .line 428
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/mms/exif/ExifTag;->setValue([BII)Z

    move-result v0

    return v0
.end method

.method public setValue([BII)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 412
    invoke-direct {p0, p3}, Lcom/android/mms/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    return v2

    .line 415
    :cond_0
    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 416
    return v2

    .line 418
    :cond_1
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iput p3, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    .line 421
    return v3
.end method

.method public setValue([I)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 237
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/android/mms/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    return v0

    .line 240
    :cond_0
    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v1, v3, :cond_1

    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    .line 241
    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v1, v4, :cond_1

    .line 242
    return v0

    .line 244
    :cond_1
    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v1, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    return v0

    .line 246
    :cond_2
    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v1, v4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    return v0

    .line 250
    :cond_3
    array-length v1, p1

    new-array v1, v1, [J

    .line 251
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 252
    aget v2, p1, v0

    int-to-long v2, v2

    aput-wide v2, v1, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_4
    iput-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 255
    array-length v0, p1

    iput v0, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([J)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/mms/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 288
    :cond_0
    return v2

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    return v2

    .line 293
    :cond_2
    iput-object p1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 294
    array-length v0, p1

    iput v0, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public setValue([Lcom/android/mms/exif/Rational;)Z
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 364
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/mms/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    return v1

    .line 367
    :cond_0
    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v0, v2, :cond_1

    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v0, v3, :cond_1

    .line 368
    return v1

    .line 370
    :cond_1
    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/android/mms/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    return v1

    .line 372
    :cond_2
    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v0, v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifTag;->checkOverflowForRational([Lcom/android/mms/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    return v1

    .line 376
    :cond_3
    iput-object p1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 377
    array-length v0, p1

    iput v0, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tag id: %04X\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-short v3, p0, Lcom/android/mms/exif/ExifTag;->mTagId:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1004
    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    invoke-static {v1}, Lcom/android/mms/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1004
    const-string/jumbo v1, "\ncount: "

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1004
    iget v1, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1005
    const-string/jumbo v1, "\noffset: "

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1005
    iget v1, p0, Lcom/android/mms/exif/ExifTag;->mOffset:I

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1005
    const-string/jumbo v1, "\nvalue: "

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1005
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1005
    const-string/jumbo v1, "\n"

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
