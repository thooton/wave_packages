.class public Lcom/android/providers/contacts/sqlite/SqlChecker;
.super Ljava/lang/Object;
.source "SqlChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;
    }
.end annotation


# static fields
.field static final OPTION_NONE:I = 0x0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final OPTION_TOKEN_ONLY:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private final mInvalidTokens:Landroid/util/ArraySet;
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
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    sput-boolean v0, Lcom/android/providers/contacts/sqlite/SqlChecker;->VERBOSE_LOGGING:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/sqlite/SqlChecker;->mInvalidTokens:Landroid/util/ArraySet;

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 49
    iget-object v2, p0, Lcom/android/providers/contacts/sqlite/SqlChecker;->mInvalidTokens:Landroid/util/ArraySet;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 51
    :cond_0
    sget-boolean v0, Lcom/android/providers/contacts/sqlite/SqlChecker;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    .line 52
    const-string/jumbo v0, "SqlChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initialized with invalid tokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1
    return-void
.end method

.method static findTokens(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x2d

    const/4 v0, 0x0

    .line 141
    if-nez p0, :cond_0

    .line 142
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v0

    move v1, p1

    .line 146
    :goto_0
    if-ge v2, v4, :cond_11

    .line 147
    invoke-static {p0, v2}, Lcom/android/providers/contacts/sqlite/SqlChecker;->peek(Ljava/lang/String;I)C

    move-result v5

    .line 150
    invoke-static {v5}, Lcom/android/providers/contacts/sqlite/SqlChecker;->isAlpha(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    add-int/lit8 v0, v2, 0x1

    .line 153
    :goto_1
    invoke-static {p0, v0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->peek(Ljava/lang/String;I)C

    move-result v3

    invoke-static {v3}, Lcom/android/providers/contacts/sqlite/SqlChecker;->isAlNum(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v2, v0

    .line 161
    goto :goto_0

    .line 165
    :cond_2
    const-string/jumbo v0, "\'\"`"

    invoke-static {v5, v0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->isAnyOf(CLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    add-int/lit8 v0, v2, 0x1

    .line 170
    :goto_2
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 171
    if-gez v0, :cond_3

    .line 172
    const-string/jumbo v0, "Unterminated quote"

    invoke-static {v0, p0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->genException(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;

    move-result-object v0

    throw v0

    .line 174
    :cond_3
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3}, Lcom/android/providers/contacts/sqlite/SqlChecker;->peek(Ljava/lang/String;I)C

    move-result v3

    if-eq v3, v5, :cond_6

    .line 181
    add-int/lit8 v3, v0, 0x1

    .line 183
    const/16 v6, 0x27

    if-eq v5, v6, :cond_7

    .line 185
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v0, v1

    :cond_5
    move v2, v3

    move v1, v0

    .line 202
    goto :goto_0

    .line 178
    :cond_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 198
    :cond_7
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_5

    .line 199
    const-string/jumbo v0, "Non-token detected"

    invoke-static {v0, p0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->genException(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;

    move-result-object v0

    throw v0

    .line 205
    :cond_8
    const/16 v0, 0x5b

    if-ne v5, v0, :cond_a

    .line 207
    add-int/lit8 v0, v2, 0x1

    .line 209
    const/16 v3, 0x5d

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 210
    if-gez v3, :cond_9

    .line 211
    const-string/jumbo v0, "Unterminated quote"

    invoke-static {v0, p0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->genException(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;

    move-result-object v0

    throw v0

    .line 214
    :cond_9
    add-int/lit8 v0, v3, 0x1

    .line 216
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v2, v0

    .line 219
    goto/16 :goto_0

    .line 221
    :cond_a
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 222
    const-string/jumbo v0, "Non-token detected"

    invoke-static {v0, p0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->genException(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;

    move-result-object v0

    throw v0

    .line 226
    :cond_b
    if-ne v5, v7, :cond_d

    add-int/lit8 v0, v2, 0x1

    invoke-static {p0, v0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->peek(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v7, :cond_d

    .line 227
    add-int/lit8 v0, v2, 0x2

    .line 228
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 229
    if-gez v0, :cond_c

    .line 231
    const-string/jumbo v0, "Unterminated comment"

    invoke-static {v0, p0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->genException(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;

    move-result-object v0

    throw v0

    .line 233
    :cond_c
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 235
    goto/16 :goto_0

    .line 237
    :cond_d
    const/16 v0, 0x2f

    if-ne v5, v0, :cond_f

    add-int/lit8 v0, v2, 0x1

    invoke-static {p0, v0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->peek(Ljava/lang/String;I)C

    move-result v0

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_f

    .line 238
    add-int/lit8 v0, v2, 0x2

    .line 239
    const-string/jumbo v2, "*/"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 240
    if-gez v0, :cond_e

    .line 241
    const-string/jumbo v0, "Unterminated comment"

    invoke-static {v0, p0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->genException(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;

    move-result-object v0

    throw v0

    .line 243
    :cond_e
    add-int/lit8 v0, v0, 0x2

    move v2, v0

    .line 245
    goto/16 :goto_0

    .line 249
    :cond_f
    const/16 v0, 0x3b

    if-ne v5, v0, :cond_10

    .line 250
    const-string/jumbo v0, "Semicolon is not allowed"

    invoke-static {v0, p0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->genException(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;

    move-result-object v0

    throw v0

    .line 256
    :cond_10
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 258
    :cond_11
    return-void
.end method

.method private static genException(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlNum(C)Z
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->isNum(C)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isAlpha(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 57
    const/16 v1, 0x61

    if-gt v1, p0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x41

    if-gt v1, p0, :cond_2

    const/16 v1, 0x5a

    if-le p0, v1, :cond_0

    :cond_2
    const/16 v1, 0x5f

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAnyOf(CLjava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isNum(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    const/16 v1, 0x30

    if-gt v1, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static peek(Ljava/lang/String;I)C
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwIfContainsToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/providers/contacts/sqlite/SqlChecker;->mInvalidTokens:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "x_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Detected disallowed token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/providers/contacts/sqlite/SqlChecker;->genException(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;

    move-result-object v0

    throw v0

    .line 91
    :cond_1
    return-void
.end method


# virtual methods
.method public ensureNoInvalidTokens(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->findTokens(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 98
    return-void
.end method

.method public ensureSingleTokenOnly(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 107
    new-instance v1, Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/android/providers/contacts/sqlite/SqlChecker;->findTokens(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string/jumbo v0, "Token not found"

    invoke-static {v0, p1}, Lcom/android/providers/contacts/sqlite/SqlChecker;->genException(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;

    move-result-object v0

    throw v0

    .line 117
    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_providers_contacts_sqlite_SqlChecker_3155(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p2, p1}, Lcom/android/providers/contacts/sqlite/SqlChecker;->throwIfContainsToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_providers_contacts_sqlite_SqlChecker_3532(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string/jumbo v0, "Multiple tokens detected"

    invoke-static {v0, p2}, Lcom/android/providers/contacts/sqlite/SqlChecker;->genException(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;

    move-result-object v0

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    invoke-direct {p0, p3, p2}, Lcom/android/providers/contacts/sqlite/SqlChecker;->throwIfContainsToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
