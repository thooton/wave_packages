.class public Lcom/android/providers/contacts/PostalSplitter;
.super Ljava/lang/Object;
.source "PostalSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/PostalSplitter$Postal;
    }
.end annotation


# static fields
.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/PostalSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    .line 64
    return-void
.end method

.method private static arePrintableAsciiOnly([Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 232
    if-nez p0, :cond_0

    .line 233
    return v5

    .line 235
    :cond_0
    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, p0, v0

    .line 236
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    return v1

    .line 243
    :cond_3
    return v5
.end method

.method private joinEnUs(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v0, 0x1

    .line 166
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    .line 167
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    .line 168
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    .line 169
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 170
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v7, v1, 0x1

    .line 171
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 172
    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v8, v2, 0x1

    .line 178
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    if-nez v4, :cond_11

    if-nez v5, :cond_11

    move v2, v3

    .line 181
    :goto_0
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    move v0, v1

    .line 184
    :cond_0
    if-eqz v2, :cond_6

    .line 185
    if-eqz v4, :cond_1

    .line 186
    iget-object v10, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_1
    if-eqz v5, :cond_3

    .line 189
    if-eqz v4, :cond_2

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_2
    iget-object v10, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_3
    if-eqz v3, :cond_6

    .line 193
    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    const-string/jumbo v3, "\n"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_5
    iget-object v3, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_6
    if-eqz v0, :cond_d

    .line 199
    if-eqz v2, :cond_7

    .line 200
    const-string/jumbo v3, "\n"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_7
    if-eqz v6, :cond_8

    .line 203
    iget-object v3, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_8
    if-eqz v7, :cond_a

    .line 206
    if-eqz v6, :cond_9

    const-string/jumbo v3, ", "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_9
    iget-object v3, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_a
    if-eqz v1, :cond_d

    .line 210
    if-nez v6, :cond_b

    if-eqz v7, :cond_c

    :cond_b
    const-string/jumbo v1, " "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_c
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_d
    if-eqz v8, :cond_10

    .line 216
    if-nez v2, :cond_e

    if-eqz v0, :cond_f

    .line 217
    :cond_e
    const-string/jumbo v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_f
    if-eqz v8, :cond_10

    .line 220
    iget-object v0, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_10
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 225
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    move v2, v0

    .line 180
    goto :goto_0

    .line 227
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private joinJaJp(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v0, 0x1

    .line 100
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 101
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 102
    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    .line 103
    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    .line 104
    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v8, v2, 0x1

    .line 105
    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    .line 106
    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v9, v2, 0x1

    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    if-nez v9, :cond_10

    move v4, v5

    .line 115
    :goto_0
    if-nez v8, :cond_11

    if-nez v7, :cond_11

    move v2, v3

    .line 116
    :goto_1
    if-nez v6, :cond_0

    move v0, v1

    .line 118
    :cond_0
    if-eqz v4, :cond_3

    .line 119
    if-eqz v9, :cond_1

    .line 120
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_1
    if-eqz v5, :cond_3

    .line 123
    if-eqz v9, :cond_2

    const-string/jumbo v5, " "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_2
    iget-object v5, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_3
    if-eqz v2, :cond_a

    .line 129
    if-eqz v4, :cond_4

    .line 130
    const-string/jumbo v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_4
    if-eqz v8, :cond_5

    .line 133
    iget-object v5, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_5
    if-eqz v7, :cond_7

    .line 136
    if-eqz v8, :cond_6

    const-string/jumbo v5, " "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_6
    iget-object v5, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_7
    if-eqz v3, :cond_a

    .line 140
    if-nez v8, :cond_8

    if-eqz v7, :cond_9

    :cond_8
    const-string/jumbo v3, " "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_9
    iget-object v3, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_a
    if-eqz v0, :cond_f

    .line 146
    if-nez v4, :cond_b

    if-eqz v2, :cond_c

    .line 147
    :cond_b
    const-string/jumbo v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_c
    if-eqz v6, :cond_d

    .line 150
    iget-object v0, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_d
    if-eqz v1, :cond_f

    .line 153
    if-eqz v6, :cond_e

    const-string/jumbo v0, " "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_e
    iget-object v0, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 159
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    move v4, v0

    .line 114
    goto :goto_0

    :cond_11
    move v2, v0

    .line 115
    goto :goto_1

    .line 161
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public join(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 86
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 87
    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 90
    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Lcom/android/providers/contacts/PostalSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 90
    if-eqz v1, :cond_0

    .line 92
    invoke-static {v0}, Lcom/android/providers/contacts/PostalSplitter;->arePrintableAsciiOnly([Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 90
    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->joinJaJp(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->joinEnUs(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Lcom/android/providers/contacts/PostalSplitter$Postal;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iput-object p2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    .line 74
    :cond_0
    return-void
.end method
