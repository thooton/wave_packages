.class public Lcom/android/providers/contacts/NameSplitter;
.super Ljava/lang/Object;
.source "NameSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/NameSplitter$Name;,
        Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
    }
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;


# instance fields
.field private final mConjuctions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguage:Ljava/lang/String;

.field private final mLastNamePrefixesSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocale:Ljava/util/Locale;

.field private final mMaxSuffixLength:I

.field private final mPrefixesSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuffixesSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 51
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    .line 54
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->CHINESE_LANGUAGE:Ljava/lang/String;

    .line 68
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "\uac15\uc804"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "\ub0a8\uad81"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "\ub3c5\uace0"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "\ub3d9\ubc29"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "\ub9dd\uc808"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "\uc0ac\uacf5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "\uc11c\ubb38"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "\uc120\uc6b0"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "\uc18c\ubd09"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "\uc5b4\uae08"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "\uc7a5\uace1"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "\uc81c\uac08"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "\ud669\ubcf4"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 68
    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-static {p1}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Landroid/util/ArraySet;

    .line 287
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Landroid/util/ArraySet;

    .line 288
    invoke-static {p3}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Landroid/util/ArraySet;

    .line 289
    invoke-static {p4}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter;->mConjuctions:Landroid/util/ArraySet;

    .line 290
    if-eqz p5, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/android/providers/contacts/NameSplitter;->mLocale:Ljava/util/Locale;

    .line 291
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Landroid/util/ArraySet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 296
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    move v1, v0

    goto :goto_1

    .line 290
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p5

    goto :goto_0

    .line 300
    :cond_1
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    .line 301
    return-void

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private static convertToSet(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 309
    if-eqz p0, :cond_0

    .line 310
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 311
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 312
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-object v1
.end method

.method private guessCJKNameStyle(Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 1015
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1016
    :goto_0
    if-ge p2, v0, :cond_2

    .line 1017
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1018
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1019
    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 1020
    invoke-static {v2}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1021
    const/4 v0, 0x4

    return v0

    .line 1023
    :cond_0
    invoke-static {v2}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1024
    const/4 v0, 0x5

    return v0

    .line 1027
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    .line 1030
    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method private guessFullNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 926
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    if-eqz v0, :cond_0

    .line 927
    return-void

    .line 930
    :cond_0
    iget-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 933
    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_1

    .line 934
    if-eq v1, v2, :cond_1

    .line 935
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 936
    return-void

    .line 939
    :cond_1
    iget-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 940
    if-eqz v0, :cond_2

    .line 941
    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    .line 942
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 943
    return-void

    :cond_2
    move v0, v1

    .line 948
    :cond_3
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 949
    if-eqz v1, :cond_5

    .line 950
    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_4

    .line 951
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 952
    return-void

    :cond_4
    move v0, v1

    .line 957
    :cond_5
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 958
    if-eqz v1, :cond_7

    .line 959
    if-eq v1, v3, :cond_6

    if-eq v1, v2, :cond_6

    .line 960
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 961
    return-void

    :cond_6
    move v0, v1

    .line 966
    :cond_7
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 967
    if-eqz v1, :cond_9

    .line 968
    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_8

    .line 969
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 970
    return-void

    :cond_8
    move v0, v1

    .line 975
    :cond_9
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 976
    return-void
.end method

.method private guessPhoneticNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1034
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    if-eqz v0, :cond_0

    .line 1035
    return-void

    .line 1038
    :cond_0
    iget-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 1039
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    .line 1040
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 1041
    return-void

    .line 1044
    :cond_1
    iget-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 1045
    if-eqz v0, :cond_2

    .line 1046
    if-eq v0, v1, :cond_2

    .line 1047
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 1048
    return-void

    .line 1053
    :cond_2
    iget-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 1054
    if-eqz v0, :cond_3

    .line 1055
    if-eq v0, v1, :cond_3

    .line 1056
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 1057
    return-void

    .line 1061
    :cond_3
    return-void
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1100
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1101
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v1, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return v0

    .line 1102
    :cond_1
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1103
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1104
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1105
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1106
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1107
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1108
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFamilyNamePrefix(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 840
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 842
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Landroid/util/ArraySet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 842
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1118
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1119
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v1, :cond_1

    .line 1118
    :cond_0
    :goto_0
    return v0

    .line 1120
    :cond_1
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1121
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1112
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1113
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v1, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return v0

    .line 1114
    :cond_1
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1092
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1093
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v1, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return v0

    .line 1094
    :cond_1
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1095
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    .line 1096
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 12

    .prologue
    .line 561
    if-nez p1, :cond_5

    const/4 v6, 0x0

    .line 562
    :goto_0
    if-nez p2, :cond_6

    const/4 v5, 0x0

    .line 563
    :goto_1
    if-nez p3, :cond_7

    const/4 v4, 0x0

    .line 564
    :goto_2
    if-nez p4, :cond_8

    const/4 v3, 0x0

    .line 565
    :goto_3
    if-nez p5, :cond_9

    const/4 v0, 0x0

    .line 567
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v7, v1, 0x1

    .line 568
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    .line 569
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v9, v1, 0x1

    .line 570
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v10, v1, 0x1

    .line 571
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v11, v1, 0x1

    .line 573
    const/4 v2, 0x1

    .line 574
    const/4 v1, 0x0

    .line 576
    if-eqz v7, :cond_0

    move-object v1, v6

    .line 580
    :cond_0
    if-eqz v8, :cond_1

    .line 581
    if-eqz v1, :cond_a

    .line 582
    const/4 v2, 0x0

    .line 588
    :cond_1
    :goto_5
    if-eqz v9, :cond_2

    .line 589
    if-eqz v1, :cond_b

    .line 590
    const/4 v2, 0x0

    .line 596
    :cond_2
    :goto_6
    if-eqz v10, :cond_3

    .line 597
    if-eqz v1, :cond_c

    .line 598
    const/4 v2, 0x0

    .line 604
    :cond_3
    :goto_7
    if-eqz v11, :cond_4

    .line 605
    if-eqz v1, :cond_d

    .line 606
    const/4 v2, 0x0

    .line 612
    :cond_4
    :goto_8
    if-eqz v2, :cond_e

    .line 613
    return-object v1

    .line 561
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 562
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 563
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 564
    :cond_8
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 565
    :cond_9
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v1, v5

    .line 584
    goto :goto_5

    :cond_b
    move-object v1, v4

    .line 592
    goto :goto_6

    :cond_c
    move-object v1, v3

    .line 600
    goto :goto_7

    .line 608
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 616
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    if-eqz v7, :cond_f

    .line 619
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_f
    if-eqz v8, :cond_11

    .line 623
    if-eqz v7, :cond_10

    .line 624
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    :cond_10
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_11
    if-eqz v9, :cond_15

    .line 630
    if-nez v7, :cond_12

    if-eqz v8, :cond_14

    .line 631
    :cond_12
    if-eqz p7, :cond_13

    .line 632
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 634
    :cond_13
    if-eqz p6, :cond_14

    .line 635
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    :cond_14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_15
    if-eqz v10, :cond_18

    .line 642
    if-nez v7, :cond_16

    if-nez v8, :cond_16

    if-eqz v9, :cond_17

    .line 643
    :cond_16
    if-eqz p6, :cond_17

    .line 644
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    :cond_17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :cond_18
    if-eqz v11, :cond_1c

    .line 651
    if-nez v7, :cond_19

    if-nez v8, :cond_19

    if-nez v9, :cond_19

    if-eqz v10, :cond_1b

    .line 652
    :cond_19
    if-eqz p8, :cond_1a

    .line 653
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    :cond_1a
    if-eqz p6, :cond_1b

    .line 656
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    :cond_1b
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v1, 0x2e

    .line 670
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 671
    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 672
    :cond_0
    return-object p1

    .line 675
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 677
    return-object v0

    .line 679
    :cond_2
    return-object p1
.end method

.method private parseGivenNames(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 3

    .prologue
    .line 866
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 867
    return-void

    .line 870
    :cond_0
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 871
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 885
    :goto_0
    return-void

    .line 873
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 874
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    :goto_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 875
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 876
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 878
    :cond_2
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 880
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 874
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 883
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseLastName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 793
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 794
    return-void

    .line 798
    :cond_0
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 800
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-set1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    .line 801
    return-void

    .line 807
    :cond_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 808
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v0

    .line 807
    if-eqz v0, :cond_3

    .line 809
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->isFamilyNamePrefix(Ljava/lang/String;)Z

    move-result v0

    .line 807
    if-eqz v0, :cond_3

    .line 810
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    aget-object v0, v0, v1

    .line 811
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 815
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-set1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    .line 816
    return-void

    .line 820
    :cond_3
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 821
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-set0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    .line 824
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_5

    .line 825
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 826
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->isFamilyNamePrefix(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 827
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 831
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-set0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    .line 834
    :cond_5
    return-void
.end method

.method private parseMiddleName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 3

    .prologue
    .line 848
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 849
    return-void

    .line 852
    :cond_0
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 853
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 854
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter;->mConjuctions:Landroid/util/ArraySet;

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 853
    if-eqz v0, :cond_3

    .line 856
    :cond_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 857
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 860
    :cond_2
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-set0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    .line 863
    :cond_3
    return-void
.end method

.method private parsePrefix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 3

    .prologue
    .line 716
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 717
    return-void

    .line 720
    :cond_0
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    aget-object v0, v0, v1

    .line 721
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 725
    :cond_1
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 726
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-set1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    .line 728
    :cond_2
    return-void
.end method

.method private parseSuffix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 6

    .prologue
    const/16 v3, 0x2e

    .line 734
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 735
    return-void

    .line 738
    :cond_0
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 741
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 742
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p2, v1}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v1

    .line 741
    if-eqz v1, :cond_2

    .line 743
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    :cond_1
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 747
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-set0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    .line 748
    return-void

    .line 751
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    if-le v1, v2, :cond_3

    .line 752
    return-void

    .line 755
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 756
    iget-object v2, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 757
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 758
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-set0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    .line 759
    return-void

    .line 762
    :cond_4
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 768
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v5, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v5

    .line 769
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    if-gt v3, v4, :cond_7

    .line 771
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 772
    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 773
    invoke-static {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-set0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    .line 774
    return-void

    .line 777
    :cond_6
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ne v0, v3, :cond_8

    .line 790
    :cond_7
    return-void

    .line 781
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 782
    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 788
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 785
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private splitChineseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 420
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 421
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 423
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 424
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 425
    :cond_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 426
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 427
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 428
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 429
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 430
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 432
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 433
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 438
    :cond_3
    iget-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 439
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 440
    if-ne v0, v4, :cond_5

    .line 441
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 442
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 454
    :cond_4
    :goto_1
    return-void

    .line 443
    :cond_5
    if-ne v0, v7, :cond_6

    .line 444
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 445
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 446
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_1

    .line 447
    :cond_6
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 448
    invoke-virtual {p2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 449
    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 450
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_1
.end method

.method private splitJapaneseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 463
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 464
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 465
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 466
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 467
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 468
    :cond_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 469
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 470
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 472
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 475
    :cond_2
    return-void
.end method

.method private splitKoreanName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 484
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 487
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 488
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 490
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 491
    :cond_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 492
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 493
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 495
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 504
    :cond_2
    sget-object v3, Lcom/android/providers/contacts/NameSplitter;->KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 505
    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 506
    const/4 v0, 0x2

    .line 511
    :cond_3
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 512
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 513
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 516
    :cond_4
    return-void

    .line 504
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private splitWesternName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 395
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    invoke-direct {v0, p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parsePrefix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 400
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseSuffix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 404
    :cond_0
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 405
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    aget-object v0, v1, v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 411
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseLastName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 408
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseMiddleName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 409
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseGivenNames(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdjustedFullNameStyle(I)I
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 690
    if-nez p1, :cond_3

    .line 691
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    return v3

    .line 693
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    return v4

    .line 695
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->CHINESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    return v2

    .line 698
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 700
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 701
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 702
    return v3

    .line 703
    :cond_4
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 704
    return v4

    .line 706
    :cond_5
    return v2

    .line 709
    :cond_6
    return p1
.end method

.method public getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 906
    if-eqz p2, :cond_3

    .line 907
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_3

    .line 908
    :cond_0
    if-ne p2, v2, :cond_1

    .line 909
    return v2

    .line 910
    :cond_1
    if-ne p2, v3, :cond_2

    .line 911
    return v3

    .line 913
    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 914
    return v1

    .line 918
    :cond_3
    return p1
.end method

.method public guessFullNameStyle(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 979
    if-nez p1, :cond_0

    .line 980
    return v0

    .line 984
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 986
    :goto_0
    if-ge v1, v2, :cond_5

    .line 987
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 988
    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 989
    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 991
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 993
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 996
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->guessCJKNameStyle(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 999
    :cond_1
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1000
    const/4 v0, 0x4

    return v0

    .line 1003
    :cond_2
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1004
    const/4 v0, 0x5

    return v0

    .line 1007
    :cond_3
    const/4 v0, 0x1

    .line 1009
    :cond_4
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 1011
    :cond_5
    return v0
.end method

.method public guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 2

    .prologue
    .line 894
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 895
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 896
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 897
    iget v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 896
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I

    move-result v0

    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 898
    return-void
.end method

.method public guessPhoneticNameStyle(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1064
    if-nez p1, :cond_0

    .line 1065
    return v1

    .line 1069
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 1071
    :goto_0
    if-ge v0, v2, :cond_4

    .line 1072
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1073
    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1074
    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 1075
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1076
    const/4 v0, 0x4

    return v0

    .line 1078
    :cond_1
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1079
    const/4 v0, 0x5

    return v0

    .line 1081
    :cond_2
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1082
    const/4 v0, 0x3

    return v0

    .line 1085
    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 1088
    :cond_4
    return v1
.end method

.method public join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;
    .locals 9

    .prologue
    .line 524
    if-eqz p3, :cond_0

    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 525
    :goto_0
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    packed-switch v0, :pswitch_data_0

    .line 537
    if-eqz p2, :cond_1

    .line 538
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 539
    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    .line 538
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 524
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 529
    :pswitch_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 530
    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 529
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 533
    :pswitch_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 534
    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 533
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 541
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 542
    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    .line 541
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 552
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 553
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v1

    move v8, v7

    .line 552
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 346
    if-nez p2, :cond_0

    .line 347
    return-void

    .line 350
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 351
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v0

    .line 355
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;I)V

    .line 356
    return-void
.end method

.method public split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 363
    if-nez p2, :cond_0

    .line 364
    return-void

    .line 367
    :cond_0
    iput p3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 369
    packed-switch p3, :pswitch_data_0

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitWesternName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 385
    :goto_0
    return-void

    .line 371
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitChineseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitJapaneseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitKoreanName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public tokenize([Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 322
    if-nez p2, :cond_0

    .line 323
    return v1

    .line 326
    :cond_0
    new-instance v3, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    invoke-direct {v3, p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-static {v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 329
    return v1

    .line 332
    :cond_1
    invoke-static {v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    aget-object v0, v0, v2

    .line 334
    invoke-static {v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get1(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    :goto_0
    invoke-static {v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get0(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 335
    add-int/lit8 v2, v1, 0x1

    invoke-static {v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->-get2(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, p1, v1

    .line 334
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 338
    :cond_2
    return v1
.end method
