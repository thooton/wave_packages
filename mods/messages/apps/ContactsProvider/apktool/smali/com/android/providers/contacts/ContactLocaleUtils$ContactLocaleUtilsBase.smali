.class Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
.super Ljava/lang/Object;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactLocaleUtilsBase"
.end annotation


# instance fields
.field protected final mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

.field private final mAlphabeticIndexBucketCount:I

.field private final mNumberBucketIndex:I

.field private final mUsePinyinTransliterator:Z


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/LocaleSet;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Lcom/android/providers/contacts/LocaleSet;->shouldPreferSimplifiedChinese()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mUsePinyinTransliterator:Z

    .line 123
    invoke-static {p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getLocalesForBuckets(Lcom/android/providers/contacts/LocaleSet;)Ljava/util/List;

    move-result-object v3

    .line 125
    new-instance v1, Landroid/icu/text/AlphabeticIndex;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-direct {v1, v0}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    .line 126
    const/16 v0, 0x12c

    .line 125
    invoke-virtual {v1, v0}, Landroid/icu/text/AlphabeticIndex;->setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;

    move-result-object v4

    move v1, v2

    .line 127
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 128
    new-array v5, v2, [Ljava/util/Locale;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v4}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    .line 132
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketCount()I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    .line 133
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    .line 137
    return-void
.end method

.method static getLocalesForBuckets(Lcom/android/providers/contacts/LocaleSet;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/contacts/LocaleSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/android/providers/contacts/LocaleSet;->getAllLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 152
    new-instance v4, Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v0

    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->-get0()[Ljava/util/Locale;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v0, v3

    .line 152
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 154
    :goto_0
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 155
    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 157
    :goto_1
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->-get0()[Ljava/util/Locale;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 158
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->-get0()[Ljava/util/Locale;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    const/4 v0, 0x1

    move v2, v1

    move v3, v0

    .line 165
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 166
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 168
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 165
    :cond_2
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 171
    :cond_3
    invoke-static {v0}, Lcom/android/providers/contacts/LocaleSet;->isLanguageChinese(Ljava/util/Locale;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 172
    if-eqz v3, :cond_2

    move v3, v1

    .line 177
    :cond_4
    invoke-static {v0}, Lcom/android/providers/contacts/LocaleSet;->isLanguageJapanese(Ljava/util/Locale;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v1

    .line 183
    :cond_5
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 185
    :cond_6
    return-object v5
.end method


# virtual methods
.method public getBucketCount()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 209
    :goto_0
    if-ge v1, v2, :cond_0

    .line 210
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 213
    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    const/4 v0, 0x1

    .line 224
    :cond_0
    if-eqz v0, :cond_3

    .line 225
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    return v0

    .line 216
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 217
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x28

    if-eq v3, v4, :cond_2

    .line 218
    const/16 v4, 0x29

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    .line 219
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x23

    if-ne v3, v4, :cond_0

    .line 222
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 235
    :cond_3
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mUsePinyinTransliterator:Z

    if-eqz v0, :cond_4

    .line 236
    invoke-static {}, Lcom/android/providers/contacts/HanziToPinyin;->getInstance()Lcom/android/providers/contacts/HanziToPinyin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/HanziToPinyin;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v0

    .line 239
    if-gez v0, :cond_5

    .line 240
    const/4 v0, -0x1

    return v0

    .line 242
    :cond_5
    iget v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    if-lt v0, v1, :cond_6

    .line 243
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 245
    :cond_6
    return v0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 263
    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 264
    :cond_1
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    if-ne p1, v0, :cond_2

    .line 265
    const-string/jumbo v0, "#"

    return-object v0

    .line 266
    :cond_2
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    if-le p1, v0, :cond_3

    .line 267
    add-int/lit8 p1, p1, -0x1

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketCount()I

    move-result v1

    .line 279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 281
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    return-object v2
.end method

.method public getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberBucketIndex()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    return v0
.end method
