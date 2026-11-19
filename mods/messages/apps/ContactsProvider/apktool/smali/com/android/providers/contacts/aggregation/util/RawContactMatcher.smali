.class public Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;
.super Ljava/lang/Object;
.source "RawContactMatcher.java"


# static fields
.field private static sMaxScore:[I

.field private static sMinScore:[I


# instance fields
.field private final mNameDistanceApproximate:Lcom/android/providers/contacts/aggregation/util/NameDistance;

.field private final mNameDistanceConservative:Lcom/android/providers/contacts/aggregation/util/NameDistance;

.field private mScoreCount:I

.field private final mScoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/MatchScore;",
            ">;"
        }
    .end annotation
.end field

.field private final mScores:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/contacts/aggregation/util/MatchScore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x3c

    const/16 v4, 0x32

    .line 92
    const/16 v0, 0x19

    new-array v0, v0, [I

    .line 91
    sput-object v0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->sMinScore:[I

    .line 94
    const/16 v0, 0x19

    new-array v0, v0, [I

    .line 93
    sput-object v0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->sMaxScore:[I

    .line 105
    const/4 v0, 0x0

    .line 106
    const/4 v1, 0x0

    const/16 v2, 0x63

    const/16 v3, 0x63

    .line 105
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->setScoreRange(IIII)V

    .line 107
    const/4 v0, 0x1

    .line 108
    const/4 v1, 0x1

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    .line 107
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->setScoreRange(IIII)V

    .line 110
    const/16 v0, 0x50

    .line 109
    invoke-static {v6, v6, v4, v0}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->setScoreRange(IIII)V

    .line 113
    const/16 v0, 0x1e

    .line 112
    invoke-static {v6, v8, v0, v5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->setScoreRange(IIII)V

    .line 114
    invoke-static {v6, v7, v4, v5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->setScoreRange(IIII)V

    .line 117
    invoke-static {v8, v8, v4, v5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->setScoreRange(IIII)V

    .line 119
    invoke-static {v8, v6, v4, v5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->setScoreRange(IIII)V

    .line 121
    invoke-static {v8, v7, v4, v5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->setScoreRange(IIII)V

    .line 124
    invoke-static {v7, v7, v4, v5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->setScoreRange(IIII)V

    .line 126
    invoke-static {v7, v6, v4, v5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->setScoreRange(IIII)V

    .line 128
    invoke-static {v7, v8, v4, v5}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->setScoreRange(IIII)V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScores:Landroid/util/ArrayMap;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreList:Ljava/util/ArrayList;

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreCount:I

    .line 165
    new-instance v0, Lcom/android/providers/contacts/aggregation/util/NameDistance;

    invoke-direct {v0}, Lcom/android/providers/contacts/aggregation/util/NameDistance;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mNameDistanceConservative:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    .line 166
    new-instance v0, Lcom/android/providers/contacts/aggregation/util/NameDistance;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/aggregation/util/NameDistance;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mNameDistanceApproximate:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    .line 30
    return-void
.end method

.method private getMatchingScore(JJJ)Lcom/android/providers/contacts/aggregation/util/MatchScore;
    .locals 9

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScores:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 170
    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreCount:I

    if-le v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .line 173
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->reset(JJJ)V

    .line 178
    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreCount:I

    .line 179
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScores:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :goto_1
    return-object v1

    .line 175
    :cond_0
    new-instance v1, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/contacts/aggregation/util/MatchScore;-><init>(JJJ)V

    .line 176
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method private static getMaxScore(II)I
    .locals 2

    .prologue
    .line 157
    mul-int/lit8 v0, p1, 0x5

    add-int/2addr v0, p0

    .line 158
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->sMaxScore:[I

    aget v0, v1, v0

    return v0
.end method

.method private static getMinScore(II)I
    .locals 2

    .prologue
    .line 148
    mul-int/lit8 v0, p1, 0x5

    add-int/2addr v0, p0

    .line 149
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->sMinScore:[I

    aget v0, v1, v0

    return v0
.end method

.method private static setScoreRange(IIII)V
    .locals 2

    .prologue
    .line 138
    mul-int/lit8 v0, p1, 0x5

    add-int/2addr v0, p0

    .line 139
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->sMinScore:[I

    aput p2, v1, v0

    .line 140
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->sMaxScore:[I

    aput p3, v1, v0

    .line 141
    return-void
.end method

.method private updatePrimaryScore(JJJI)V
    .locals 1

    .prologue
    .line 259
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->getMatchingScore(JJJ)Lcom/android/providers/contacts/aggregation/util/MatchScore;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->updatePrimaryScore(I)V

    .line 260
    return-void
.end method

.method private updateSecondaryScore(JJJI)V
    .locals 1

    .prologue
    .line 264
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->getMatchingScore(JJJ)Lcom/android/providers/contacts/aggregation/util/MatchScore;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->updateSecondaryScore(I)V

    .line 265
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScores:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreCount:I

    .line 278
    return-void
.end method

.method public keepIn(JJJ)V
    .locals 1

    .prologue
    .line 268
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->getMatchingScore(JJJ)Lcom/android/providers/contacts/aggregation/util/MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->keepIn()V

    .line 269
    return-void
.end method

.method public keepOut(JJJ)V
    .locals 1

    .prologue
    .line 272
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->getMatchingScore(JJJ)Lcom/android/providers/contacts/aggregation/util/MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->keepOut()V

    .line 273
    return-void
.end method

.method public matchIdentity(JJJ)V
    .locals 9

    .prologue
    .line 243
    const/16 v8, 0x47

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->updateSecondaryScore(JJJI)V

    .line 244
    return-void
.end method

.method public matchName(JJJILjava/lang/String;ILjava/lang/String;I)V
    .locals 11

    .prologue
    .line 193
    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static {v0, v1}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->getMaxScore(II)I

    move-result v10

    .line 194
    if-nez v10, :cond_0

    .line 195
    return-void

    .line 198
    :cond_0
    move-object/from16 v0, p8

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    .line 199
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->updatePrimaryScore(JJJI)V

    .line 200
    return-void

    .line 203
    :cond_1
    if-nez p11, :cond_2

    .line 204
    return-void

    .line 207
    :cond_2
    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static {v0, v1}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->getMinScore(II)I

    move-result v3

    .line 208
    if-ne v3, v10, :cond_3

    .line 209
    return-void

    .line 215
    :cond_3
    :try_start_0
    invoke-static/range {p8 .. p8}, Lcom/android/providers/contacts/util/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object v4

    .line 216
    invoke-static/range {p10 .. p10}, Lcom/android/providers/contacts/util/Hex;->decodeHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 223
    const/4 v2, 0x1

    move/from16 v0, p11

    if-ne v0, v2, :cond_4

    .line 224
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mNameDistanceConservative:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    .line 227
    :goto_0
    invoke-virtual {v2, v4, v5}, Lcom/android/providers/contacts/aggregation/util/NameDistance;->getDistance([B[B)F

    move-result v4

    .line 228
    const/4 v2, 0x4

    move/from16 v0, p7

    if-eq v0, v2, :cond_5

    .line 229
    const/4 v2, 0x4

    move/from16 v0, p9

    if-ne v0, v2, :cond_6

    const/4 v2, 0x1

    .line 230
    :goto_1
    if-eqz v2, :cond_7

    .line 231
    const v2, 0x3f733333    # 0.95f

    .line 233
    :goto_2
    cmpl-float v2, v4, v2

    if-lez v2, :cond_8

    .line 234
    int-to-float v2, v3

    sub-int v3, v10, v3

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v10, v2

    :goto_3
    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    .line 239
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->updatePrimaryScore(JJJI)V

    .line 240
    return-void

    .line 217
    :catch_0
    move-exception v2

    .line 219
    const-string/jumbo v3, "ContactMatcher"

    const-string/jumbo v4, "Failed to decode normalized name.  Skipping."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    return-void

    .line 224
    :cond_4
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mNameDistanceApproximate:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    goto :goto_0

    .line 228
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 229
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 232
    :cond_7
    const v2, 0x3f51eb85    # 0.82f

    goto :goto_2

    .line 236
    :cond_8
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public matchNoName(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 9

    .prologue
    .line 357
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v8, 0x32

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->updatePrimaryScore(JJJI)V

    .line 358
    return-void
.end method

.method public pickBestMatches()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x32

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 311
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreCount:I

    if-ge v1, v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 313
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->isKeepOut()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->isKeepIn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    :cond_2
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getPrimaryScore()I

    move-result v3

    const/16 v4, 0x46

    if-ge v3, v4, :cond_3

    .line 323
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getPrimaryScore()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getSecondaryScore()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 325
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 328
    :cond_4
    return-object v2
.end method

.method public pickBestMatches(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 335
    mul-int/lit16 v4, p1, 0x3e8

    .line 336
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreCount:I

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 337
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v1, v2

    move v3, v2

    .line 339
    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreCount:I

    if-ge v1, v0, :cond_0

    .line 340
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 341
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getScore()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 342
    add-int/lit8 v3, v3, 0x1

    .line 339
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 348
    :cond_0
    invoke-interface {v5, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public prepareSecondaryMatchCandidates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x46

    const/4 v2, 0x0

    move v1, v2

    move-object v3, v0

    .line 289
    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreCount:I

    if-ge v1, v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 291
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->isKeepOut()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getPrimaryScore()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 289
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getSecondaryScore()I

    move-result v4

    if-lt v4, v6, :cond_3

    .line 296
    if-nez v3, :cond_2

    .line 297
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 299
    :cond_2
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getRawContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->setPrimaryScore(I)V

    goto :goto_1

    .line 303
    :cond_4
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->mScoreCount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateScoreWithEmailMatch(JJJ)V
    .locals 9

    .prologue
    .line 251
    const/16 v8, 0x47

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->updateSecondaryScore(JJJI)V

    .line 252
    return-void
.end method

.method public updateScoreWithNicknameMatch(JJJ)V
    .locals 9

    .prologue
    .line 255
    const/16 v8, 0x47

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->updateSecondaryScore(JJJI)V

    .line 256
    return-void
.end method

.method public updateScoreWithPhoneNumberMatch(JJJ)V
    .locals 9

    .prologue
    .line 247
    const/16 v8, 0x47

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/providers/contacts/aggregation/util/RawContactMatcher;->updateSecondaryScore(JJJI)V

    .line 248
    return-void
.end method
