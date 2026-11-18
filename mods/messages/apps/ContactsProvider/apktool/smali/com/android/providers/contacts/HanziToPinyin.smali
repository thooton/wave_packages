.class public Lcom/android/providers/contacts/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/providers/contacts/HanziToPinyin;


# instance fields
.field private mAsciiTransliterator:Landroid/icu/text/Transliterator;

.field private mPinyinTransliterator:Landroid/icu/text/Transliterator;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    :try_start_0
    const-string/jumbo v0, "Han-Latin/Names; Latin-Ascii; Any-Upper"

    .line 76
    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/HanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    .line 78
    const-string/jumbo v0, "Latin-Ascii"

    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/HanziToPinyin;->mAsciiTransliterator:Landroid/icu/text/Transliterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string/jumbo v0, "HanziToPinyin"

    const-string/jumbo v1, "Han-Latin/Names transliterator data is missing, HanziToPinyin is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/android/providers/contacts/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lcom/android/providers/contacts/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 187
    return-void
.end method

.method public static getInstance()Lcom/android/providers/contacts/HanziToPinyin;
    .locals 2

    .prologue
    .line 90
    const-class v1, Lcom/android/providers/contacts/HanziToPinyin;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->sInstance:Lcom/android/providers/contacts/HanziToPinyin;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/providers/contacts/HanziToPinyin;

    invoke-direct {v0}, Lcom/android/providers/contacts/HanziToPinyin;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/HanziToPinyin;->sInstance:Lcom/android/providers/contacts/HanziToPinyin;

    .line 94
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/HanziToPinyin;->sInstance:Lcom/android/providers/contacts/HanziToPinyin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private tokenize(CLcom/android/providers/contacts/HanziToPinyin$Token;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 102
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 103
    iput v1, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 104
    iget-object v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 105
    return-void

    .line 109
    :cond_0
    const/16 v0, 0x250

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1e00

    if-gt v0, p1, :cond_3

    const/16 v0, 0x1eff

    if-ge p1, v0, :cond_3

    .line 110
    :cond_1
    iput v1, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 111
    iget-object v0, p0, Lcom/android/providers/contacts/HanziToPinyin;->mAsciiTransliterator:Landroid/icu/text/Transliterator;

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    :goto_0
    iput-object v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 113
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/HanziToPinyin;->mAsciiTransliterator:Landroid/icu/text/Transliterator;

    iget-object v1, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_3
    const/4 v0, 0x2

    iput v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 117
    iget-object v0, p0, Lcom/android/providers/contacts/HanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    iget-object v1, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 118
    iget-object v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 119
    iget-object v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 120
    :cond_4
    const/4 v0, 0x3

    iput v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    .line 121
    iget-object v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 123
    :cond_5
    return-void
.end method


# virtual methods
.method public getTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/android/providers/contacts/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    return-object v3

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    const/4 v2, 0x1

    .line 147
    new-instance v1, Lcom/android/providers/contacts/HanziToPinyin$Token;

    invoke-direct {v1}, Lcom/android/providers/contacts/HanziToPinyin$Token;-><init>()V

    move v8, v0

    move-object v0, v1

    move v1, v2

    move v2, v8

    .line 153
    :goto_0
    if-ge v2, v4, :cond_7

    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 155
    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 156
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 157
    invoke-direct {p0, v5, v3, v1}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 153
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_3
    invoke-direct {p0, v6, v0}, Lcom/android/providers/contacts/HanziToPinyin;->tokenize(CLcom/android/providers/contacts/HanziToPinyin$Token;)V

    .line 161
    iget v6, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 163
    invoke-direct {p0, v5, v3, v1}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 165
    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lcom/android/providers/contacts/HanziToPinyin$Token;

    invoke-direct {v0}, Lcom/android/providers/contacts/HanziToPinyin$Token;-><init>()V

    .line 173
    :goto_2
    iget v1, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    goto :goto_1

    .line 168
    :cond_5
    iget v6, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->type:I

    if-eq v1, v6, :cond_6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 169
    invoke-direct {p0, v5, v3, v1}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 171
    :cond_6
    iget-object v1, v0, Lcom/android/providers/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 176
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 177
    invoke-direct {p0, v5, v3, v1}, Lcom/android/providers/contacts/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 179
    :cond_8
    return-object v3
.end method

.method public hasChineseTransliterator()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/providers/contacts/HanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/providers/contacts/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/HanziToPinyin;->mPinyinTransliterator:Landroid/icu/text/Transliterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
