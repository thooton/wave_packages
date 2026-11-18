.class Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
.super Ljava/util/StringTokenizer;
.source "NameSplitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/NameSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameTokenizer"
.end annotation


# instance fields
.field private mCommaBitmask:I

.field private mDotBitmask:I

.field private mEndPointer:I

.field private mStartPointer:I

.field private final mTokens:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .locals 1

    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .locals 1

    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    return p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 230
    const-string/jumbo v0, " .,"

    invoke-direct {p0, p1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 232
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;

    .line 236
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    if-ge v0, v5, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 239
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 240
    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 245
    :cond_1
    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    if-lez v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 246
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mDotBitmask:I

    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v4, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mDotBitmask:I

    goto :goto_0

    .line 247
    :cond_2
    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    if-lez v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    .line 248
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mCommaBitmask:I

    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v4, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mCommaBitmask:I

    goto :goto_0

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;

    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    aput-object v0, v1, v2

    .line 251
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    goto :goto_0

    .line 254
    :cond_4
    return-void
.end method


# virtual methods
.method public hasComma(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mCommaBitmask:I

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hasDot(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mDotBitmask:I

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
