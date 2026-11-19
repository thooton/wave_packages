.class public Lcom/android/providers/contacts/NameNormalizer;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

.field private static sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

.field private static sCollatorLocale:Ljava/util/Locale;

.field private static final sCollatorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareComplexity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->getComplexityCollator()Ljava/text/RuleBasedCollator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 90
    if-eqz v2, :cond_0

    .line 91
    return v2

    .line 96
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    return v0

    .line 100
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static ensureCollators()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 44
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    sput-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLocale:Ljava/util/Locale;

    .line 49
    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    .line 50
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 51
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, v3}, Ljava/text/RuleBasedCollator;->setDecomposition(I)V

    .line 53
    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    .line 54
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, v3}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 55
    return-void
.end method

.method static getComplexityCollator()Ljava/text/RuleBasedCollator;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 67
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->ensureCollators()V

    .line 69
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getCompressingCollator()Ljava/text/RuleBasedCollator;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 59
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->ensureCollators()V

    .line 61
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 108
    if-nez p0, :cond_0

    .line 109
    const-string/jumbo v0, ""

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 113
    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_2

    .line 114
    aget-char v5, v4, v0

    .line 115
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    add-int/lit8 v3, v2, 0x1

    aput-char v5, v4, v2

    move v2, v3

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    array-length v0, v4

    if-eq v2, v0, :cond_3

    .line 121
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 124
    :cond_3
    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->getCompressingCollator()Ljava/text/RuleBasedCollator;

    move-result-object v0

    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/util/Hex;->encodeHex([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
