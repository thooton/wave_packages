.class public Lcom/android/providers/contacts/ContactLookupKey;
.super Ljava/lang/Object;
.source "ContactLookupKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendEscapedSourceId(Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 93
    :goto_0
    const/16 v2, 0x2e

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 94
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 104
    return v1

    .line 99
    :cond_0
    const/4 v1, 0x1

    .line 100
    invoke-virtual {p0, p1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v0, v2, 0x1

    goto :goto_0
.end method

.method public static appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 68
    if-nez p6, :cond_0

    .line 69
    const-string/jumbo p6, ""

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    invoke-static {p1, p2}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    if-nez p5, :cond_3

    .line 78
    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    invoke-static {p6}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_2
    :goto_0
    return-void

    .line 81
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 82
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {p0, p5}, Lcom/android/providers/contacts/ContactLookupKey;->appendEscapedSourceId(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0
.end method

.method public static getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 58
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xfff

    return v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 113
    const-string/jumbo v0, "profile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;-><init>()V

    .line 115
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    .line 116
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-object v8

    .line 121
    :cond_0
    const/4 v4, 0x0

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 125
    const/4 v1, 0x0

    .line 126
    const/4 v2, 0x0

    .line 129
    :goto_0
    if-ge v4, v9, :cond_14

    .line 130
    const/4 v0, 0x0

    .line 133
    const/4 v3, 0x0

    move v7, v3

    .line 134
    :goto_1
    if-ge v4, v9, :cond_19

    .line 135
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 136
    const/16 v4, 0x30

    if-lt v0, v4, :cond_1

    const/16 v4, 0x39

    if-le v0, v4, :cond_2

    :cond_1
    move v11, v0

    move v0, v3

    move v3, v11

    .line 143
    :goto_2
    const/16 v4, 0x69

    if-ne v3, v4, :cond_3

    .line 144
    const/4 v3, 0x0

    .line 145
    const/4 v1, 0x0

    move v5, v1

    move v6, v3

    .line 161
    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 139
    :cond_2
    mul-int/lit8 v4, v7, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v4, v5

    move v7, v4

    move v4, v3

    goto :goto_1

    .line 146
    :cond_3
    const/16 v4, 0x65

    if-ne v3, v4, :cond_4

    .line 147
    const/4 v3, 0x0

    .line 148
    const/4 v1, 0x1

    move v5, v1

    move v6, v3

    goto :goto_3

    .line 149
    :cond_4
    const/16 v4, 0x6e

    if-ne v3, v4, :cond_5

    .line 150
    const/4 v3, 0x1

    move v5, v1

    move v6, v3

    goto :goto_3

    .line 151
    :cond_5
    const/16 v4, 0x72

    if-ne v3, v4, :cond_6

    .line 152
    const/4 v3, 0x2

    move v5, v1

    move v6, v3

    goto :goto_3

    .line 153
    :cond_6
    const/16 v0, 0x63

    if-ne v3, v0, :cond_7

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Work contact lookup key is not accepted here: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid lookup id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :pswitch_0
    if-eqz v5, :cond_c

    .line 164
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v0

    .line 165
    :goto_4
    if-ge v1, v9, :cond_a

    .line 166
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 168
    const/16 v4, 0x2e

    if-ne v1, v4, :cond_9

    .line 169
    if-ne v0, v9, :cond_8

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid lookup id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 175
    const/16 v4, 0x2e

    if-ne v1, v4, :cond_b

    .line 176
    const/16 v1, 0x2e

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 177
    add-int/lit8 v0, v0, 0x1

    :goto_5
    move v1, v0

    goto :goto_4

    .line 182
    :cond_9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_a
    move v0, v1

    .line 185
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    :goto_6
    move-object v11, v2

    move v2, v1

    move-object v1, v11

    .line 246
    :goto_7
    new-instance v3, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    invoke-direct {v3}, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;-><init>()V

    .line 247
    iput v7, v3, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    .line 248
    iput v6, v3, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    .line 249
    iput-object v1, v3, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->rawContactId:Ljava/lang/String;

    .line 250
    iput-object v0, v3, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    .line 251
    const-wide/16 v6, -0x1

    iput-wide v6, v3, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    .line 252
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    move-object v2, v1

    move v1, v5

    goto/16 :goto_0

    :cond_c
    move v3, v0

    .line 188
    :goto_8
    if-ge v3, v9, :cond_18

    .line 189
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 190
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_d

    .line 194
    :goto_9
    if-ne v1, v9, :cond_e

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    move v3, v1

    goto :goto_8

    .line 197
    :cond_e
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_1
    move v3, v0

    .line 204
    :goto_a
    if-ge v3, v9, :cond_17

    .line 205
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 206
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_f

    .line 210
    :goto_b
    if-ne v1, v9, :cond_10

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    move-object v11, v2

    move v2, v1

    move-object v1, v11

    .line 215
    goto :goto_7

    :cond_f
    move v3, v1

    goto :goto_a

    .line 213
    :cond_10
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 218
    :pswitch_2
    const/4 v1, -0x1

    move v3, v0

    .line 220
    :cond_11
    if-ge v3, v9, :cond_16

    .line 221
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 222
    const/16 v10, 0x2d

    if-ne v4, v10, :cond_12

    const/4 v10, -0x1

    if-ne v1, v10, :cond_12

    move v1, v3

    .line 225
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 226
    const/16 v10, 0x2e

    if-ne v4, v10, :cond_11

    move v4, v1

    .line 230
    :goto_d
    const/4 v1, -0x1

    if-eq v4, v1, :cond_15

    .line 231
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 232
    add-int/lit8 v0, v4, 0x1

    .line 234
    :goto_e
    if-ne v3, v9, :cond_13

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    move v2, v3

    .line 239
    goto :goto_7

    .line 237
    :cond_13
    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 255
    :cond_14
    return-object v8

    :cond_15
    move-object v1, v2

    goto :goto_e

    :cond_16
    move v4, v1

    goto :goto_d

    :cond_17
    move v1, v3

    goto :goto_b

    :cond_18
    move v1, v3

    goto :goto_9

    :cond_19
    move v3, v0

    move v0, v4

    goto/16 :goto_2

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
