.class public Lcom/android/providers/contacts/LocaleSet;
.super Ljava/lang/Object;
.source "LocaleSet.java"


# instance fields
.field private final mDefaultLocaleOverrideForTest:Ljava/util/Locale;

.field private final mLocaleList:Landroid/os/LocaleList;


# direct methods
.method private constructor <init>(Landroid/os/LocaleList;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/providers/contacts/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    .line 38
    iput-object p2, p0, Lcom/android/providers/contacts/LocaleSet;->mDefaultLocaleOverrideForTest:Ljava/util/Locale;

    .line 39
    return-void
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    return-object v0

    .line 78
    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getScriptIfChinese(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/providers/contacts/LocaleSet;->isLanguageChinese(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/providers/contacts/LocaleSet;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLanguageChinese(Ljava/util/Locale;)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 53
    if-eqz p0, :cond_0

    const-string/jumbo v0, "zh"

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLanguageJapanese(Ljava/util/Locale;)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 58
    if-eqz p0, :cond_0

    const-string/jumbo v0, "ja"

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLanguageKorean(Ljava/util/Locale;)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 63
    if-eqz p0, :cond_0

    const-string/jumbo v0, "ko"

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLocaleCJK(Ljava/util/Locale;)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/providers/contacts/LocaleSet;->isLanguageChinese(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/android/providers/contacts/LocaleSet;->isLanguageJapanese(Ljava/util/Locale;)Z

    move-result v0

    .line 68
    if-nez v0, :cond_0

    .line 70
    invoke-static {p0}, Lcom/android/providers/contacts/LocaleSet;->isLanguageKorean(Ljava/util/Locale;)Z

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isLocaleSimplifiedChinese(Ljava/util/Locale;)Z
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "Hans"

    invoke-static {p0}, Lcom/android/providers/contacts/LocaleSet;->getScriptIfChinese(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isLocaleTraditionalChinese(Ljava/util/Locale;)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 96
    const-string/jumbo v0, "Hant"

    invoke-static {p0}, Lcom/android/providers/contacts/LocaleSet;->getScriptIfChinese(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newDefault()Lcom/android/providers/contacts/LocaleSet;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/android/providers/contacts/LocaleSet;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 42
    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/LocaleSet;-><init>(Landroid/os/LocaleList;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static varargs newForTest([Ljava/util/Locale;)Lcom/android/providers/contacts/LocaleSet;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/android/providers/contacts/LocaleSet;

    new-instance v1, Landroid/os/LocaleList;

    invoke-direct {v1, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/LocaleSet;-><init>(Landroid/os/LocaleList;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 168
    if-ne p1, p0, :cond_0

    .line 169
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_0
    instance-of v0, p1, Lcom/android/providers/contacts/LocaleSet;

    if-eqz v0, :cond_1

    .line 172
    check-cast p1, Lcom/android/providers/contacts/LocaleSet;

    .line 173
    iget-object v0, p0, Lcom/android/providers/contacts/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    iget-object v1, p1, Lcom/android/providers/contacts/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 175
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getAllLocales()Landroid/os/LocaleList;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/providers/contacts/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getPrimaryLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/providers/contacts/LocaleSet;->mDefaultLocaleOverrideForTest:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/providers/contacts/LocaleSet;->mDefaultLocaleOverrideForTest:Ljava/util/Locale;

    return-object v0

    .line 107
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public isCurrent()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/providers/contacts/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimaryLocaleCJK()Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/providers/contacts/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/LocaleSet;->isLocaleCJK(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public shouldPreferJapanese()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/android/providers/contacts/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/LocaleSet;->isLanguageJapanese(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    return v4

    :cond_0
    move v0, v1

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/android/providers/contacts/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 127
    invoke-static {v2}, Lcom/android/providers/contacts/LocaleSet;->isLanguageJapanese(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    return v4

    .line 130
    :cond_1
    invoke-static {v2}, Lcom/android/providers/contacts/LocaleSet;->isLanguageChinese(Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    return v1

    .line 125
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_3
    return v1
.end method

.method public shouldPreferSimplifiedChinese()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/android/providers/contacts/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/LocaleSet;->isLocaleSimplifiedChinese(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    return v4

    :cond_0
    move v0, v1

    .line 144
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 145
    iget-object v2, p0, Lcom/android/providers/contacts/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 146
    invoke-static {v2}, Lcom/android/providers/contacts/LocaleSet;->isLocaleSimplifiedChinese(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    return v4

    .line 149
    :cond_1
    invoke-static {v2}, Lcom/android/providers/contacts/LocaleSet;->isLanguageJapanese(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    return v1

    .line 152
    :cond_2
    invoke-static {v2}, Lcom/android/providers/contacts/LocaleSet;->isLocaleTraditionalChinese(Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    return v1

    .line 144
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_4
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/providers/contacts/LocaleSet;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
