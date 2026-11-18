.class public Lcom/android/providers/contacts/ContactLocaleUtils;
.super Ljava/lang/Object;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;,
        Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;,
        Lcom/android/providers/contacts/ContactLocaleUtils$SimplifiedChineseContactUtils;
    }
.end annotation


# static fields
.field public static final LOCALE_ARABIC:Ljava/util/Locale;

.field public static final LOCALE_GREEK:Ljava/util/Locale;

.field public static final LOCALE_HEBREW:Ljava/util/Locale;

.field public static final LOCALE_SERBIAN:Ljava/util/Locale;

.field public static final LOCALE_THAI:Ljava/util/Locale;

.field public static final LOCALE_UKRAINIAN:Ljava/util/Locale;

.field private static final sDefaultLabelLocales:[Ljava/util/Locale;

.field private static sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;


# instance fields
.field private final mLocales:Lcom/android/providers/contacts/LocaleSet;

.field private final mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;


# direct methods
.method static synthetic -get0()[Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sDefaultLabelLocales:[Ljava/util/Locale;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "ar"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    .line 52
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "el"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_GREEK:Ljava/util/Locale;

    .line 53
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "he"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    .line 55
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "sr"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_SERBIAN:Ljava/util/Locale;

    .line 56
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "uk"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    .line 57
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "th"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_THAI:Ljava/util/Locale;

    .line 73
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/util/Locale;

    .line 74
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 75
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 76
    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 77
    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_THAI:Ljava/util/Locale;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 78
    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 79
    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 80
    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_GREEK:Ljava/util/Locale;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 81
    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 82
    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_SERBIAN:Ljava/util/Locale;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 73
    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sDefaultLabelLocales:[Ljava/util/Locale;

    .line 46
    return-void
.end method

.method private constructor <init>(Lcom/android/providers/contacts/LocaleSet;)V
    .locals 3

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    if-nez p1, :cond_0

    .line 515
    invoke-static {}, Lcom/android/providers/contacts/LocaleSet;->newDefault()Lcom/android/providers/contacts/LocaleSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocales:Lcom/android/providers/contacts/LocaleSet;

    .line 519
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocales:Lcom/android/providers/contacts/LocaleSet;

    invoke-virtual {v0}, Lcom/android/providers/contacts/LocaleSet;->shouldPreferJapanese()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocales:Lcom/android/providers/contacts/LocaleSet;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;-><init>(Lcom/android/providers/contacts/LocaleSet;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 526
    :goto_1
    const-string/jumbo v0, "ContactLocale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AddressBook Labels ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocales:Lcom/android/providers/contacts/LocaleSet;

    invoke-virtual {v2}, Lcom/android/providers/contacts/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 527
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getLabels()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void

    .line 517
    :cond_0
    iput-object p1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocales:Lcom/android/providers/contacts/LocaleSet;

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocales:Lcom/android/providers/contacts/LocaleSet;

    invoke-virtual {v0}, Lcom/android/providers/contacts/LocaleSet;->shouldPreferSimplifiedChinese()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$SimplifiedChineseContactUtils;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocales:Lcom/android/providers/contacts/LocaleSet;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils$SimplifiedChineseContactUtils;-><init>(Lcom/android/providers/contacts/LocaleSet;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    goto :goto_1

    .line 524
    :cond_2
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocales:Lcom/android/providers/contacts/LocaleSet;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/android/providers/contacts/LocaleSet;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    goto :goto_1
.end method

.method static dumpIndex(Landroid/icu/text/AlphabeticIndex$ImmutableIndex;)V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string/jumbo v1, ""

    .line 89
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0, v0}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v1, ","

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    const-string/jumbo v0, "ContactLocale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Labels=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/providers/contacts/ContactLocaleUtils;
    .locals 3

    .prologue
    const-class v1, Lcom/android/providers/contacts/ContactLocaleUtils;

    monitor-enter v1

    .line 535
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils;

    invoke-static {}, Lcom/android/providers/contacts/LocaleSet;->newDefault()Lcom/android/providers/contacts/LocaleSet;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/ContactLocaleUtils;-><init>(Lcom/android/providers/contacts/LocaleSet;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    .line 538
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs newInstanceForTest([Ljava/util/Locale;)Lcom/android/providers/contacts/ContactLocaleUtils;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 543
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils;

    invoke-static {p0}, Lcom/android/providers/contacts/LocaleSet;->newForTest([Ljava/util/Locale;)Lcom/android/providers/contacts/LocaleSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils;-><init>(Lcom/android/providers/contacts/LocaleSet;)V

    return-object v0
.end method

.method public static varargs declared-synchronized setLocaleForTest([Ljava/util/Locale;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-class v1, Lcom/android/providers/contacts/ContactLocaleUtils;

    monitor-enter v1

    .line 548
    :try_start_0
    invoke-static {p0}, Lcom/android/providers/contacts/LocaleSet;->newForTest([Ljava/util/Locale;)Lcom/android/providers/contacts/LocaleSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->setLocales(Lcom/android/providers/contacts/LocaleSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 549
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLocales(Lcom/android/providers/contacts/LocaleSet;)V
    .locals 2

    .prologue
    const-class v1, Lcom/android/providers/contacts/ContactLocaleUtils;

    monitor-enter v1

    .line 552
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    invoke-virtual {v0, p0}, Lcom/android/providers/contacts/ContactLocaleUtils;->isLocale(Lcom/android/providers/contacts/LocaleSet;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/ContactLocaleUtils;-><init>(Lcom/android/providers/contacts/LocaleSet;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 558
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBucketIndex(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Ljava/util/ArrayList;
    .locals 1
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
    .line 585
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getLabels()Ljava/util/ArrayList;

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
    .line 601
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocales:Lcom/android/providers/contacts/LocaleSet;

    invoke-virtual {v0}, Lcom/android/providers/contacts/LocaleSet;->isPrimaryLocaleCJK()Z

    move-result v0

    if-nez v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocales:Lcom/android/providers/contacts/LocaleSet;

    invoke-virtual {v0}, Lcom/android/providers/contacts/LocaleSet;->shouldPreferSimplifiedChinese()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 604
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 605
    :cond_0
    invoke-static {p1}, Lcom/android/providers/contacts/ContactLocaleUtils$SimplifiedChineseContactUtils;->getPinyinNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 608
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 609
    invoke-static {p1}, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->getRomajiNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNumberBucketIndex()I
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getNumberBucketIndex()I

    move-result v0

    return v0
.end method

.method public isLocale(Lcom/android/providers/contacts/LocaleSet;)Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocales:Lcom/android/providers/contacts/LocaleSet;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/LocaleSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
