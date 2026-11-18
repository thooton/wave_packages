.class Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;
.super Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JapaneseContactUtils"
.end annotation


# static fields
.field private static final CJ_BLOCKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitializedTransliterator:Z

.field private static mJapaneseTransliterator:Landroid/icu/text/Transliterator;


# instance fields
.field private final mMiscBucketIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 317
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->CJ_BLOCKS:Ljava/util/Set;

    .line 296
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/LocaleSet;)V
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/android/providers/contacts/LocaleSet;)V

    .line 307
    const-string/jumbo v0, "\u65e5"

    invoke-super {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    .line 308
    return-void
.end method

.method private static getJapaneseTransliterator()Landroid/icu/text/Transliterator;
    .locals 4

    .prologue
    .line 397
    const-class v1, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;

    monitor-enter v1

    .line 398
    :try_start_0
    sget-boolean v0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mInitializedTransliterator:Z

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mInitializedTransliterator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    const/4 v0, 0x0

    .line 402
    :try_start_1
    const-string/jumbo v2, "Hiragana-Latin; Katakana-Latin; Latin-Ascii"

    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 408
    :goto_0
    :try_start_2
    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mJapaneseTransliterator:Landroid/icu/text/Transliterator;

    .line 410
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mJapaneseTransliterator:Landroid/icu/text/Transliterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 404
    :catch_0
    move-exception v2

    .line 405
    :try_start_3
    const-string/jumbo v2, "ContactLocale"

    const-string/jumbo v3, "Hiragana/Katakana-Latin transliterator data is missing"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRomajiNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->getJapaneseTransliterator()Landroid/icu/text/Transliterator;

    move-result-object v0

    .line 416
    if-nez v0, :cond_0

    .line 417
    return-object v2

    .line 419
    :cond_0
    invoke-virtual {v0, p0}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 421
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 420
    if-eqz v1, :cond_2

    .line 422
    :cond_1
    return-object v2

    .line 424
    :cond_2
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 425
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static isChineseOrJapanese(I)Z
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->CJ_BLOCKS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBucketCount()I
    .locals 1

    .prologue
    .line 365
    invoke-super {p0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    .line 351
    iget v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-ne v0, v1, :cond_0

    .line 352
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->isChineseOrJapanese(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 351
    if-nez v1, :cond_1

    .line 353
    :cond_0
    iget v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-le v0, v1, :cond_2

    .line 354
    :cond_1
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 356
    :cond_2
    return v0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-ne p1, v0, :cond_0

    .line 377
    const-string/jumbo v0, "\u4ed6"

    return-object v0

    .line 378
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-le p1, v0, :cond_1

    .line 379
    add-int/lit8 p1, p1, -0x1

    .line 381
    :cond_1
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 387
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 388
    invoke-static {p1}, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->getRomajiNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 390
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberBucketIndex()I
    .locals 2

    .prologue
    .line 435
    invoke-super {p0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getNumberBucketIndex()I

    move-result v0

    .line 436
    iget v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-le v0, v1, :cond_0

    .line 437
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 439
    :cond_0
    return v0
.end method
