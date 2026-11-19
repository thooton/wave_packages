.class public Lcom/android/providers/contacts/aggregation/util/ContactMatcher;
.super Ljava/lang/Object;
.source "ContactMatcher.java"


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

    .line 88
    const/16 v0, 0x19

    new-array v0, v0, [I

    .line 87
    sput-object v0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMinScore:[I

    .line 90
    const/16 v0, 0x19

    new-array v0, v0, [I

    .line 89
    sput-object v0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMaxScore:[I

    .line 101
    const/4 v0, 0x0

    .line 102
    const/4 v1, 0x0

    const/16 v2, 0x63

    const/16 v3, 0x63

    .line 101
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 103
    const/4 v0, 0x1

    .line 104
    const/4 v1, 0x1

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    .line 103
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 106
    const/16 v0, 0x50

    .line 105
    invoke-static {v6, v6, v4, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 109
    const/16 v0, 0x1e

    .line 108
    invoke-static {v6, v8, v0, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 110
    invoke-static {v6, v7, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 113
    invoke-static {v8, v8, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 115
    invoke-static {v8, v6, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 117
    invoke-static {v8, v7, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 120
    invoke-static {v7, v7, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 122
    invoke-static {v7, v6, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 124
    invoke-static {v7, v8, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->setScoreRange(IIII)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScores:Landroid/util/ArrayMap;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    .line 160
    new-instance v0, Lcom/android/providers/contacts/aggregation/util/NameDistance;

    invoke-direct {v0}, Lcom/android/providers/contacts/aggregation/util/NameDistance;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mNameDistanceConservative:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    .line 161
    new-instance v0, Lcom/android/providers/contacts/aggregation/util/NameDistance;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/aggregation/util/NameDistance;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mNameDistanceApproximate:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    .line 31
    return-void
.end method

.method private getMatchingScore(J)Lcom/android/providers/contacts/aggregation/util/MatchScore;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScores:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 165
    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    if-le v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 168
    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->reset(J)V

    .line 173
    :goto_0
    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    .line 174
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScores:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    return-object v0

    .line 170
    :cond_1
    new-instance v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    invoke-direct {v0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/MatchScore;-><init>(J)V

    .line 171
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getMaxScore(II)I
    .locals 2

    .prologue
    .line 152
    mul-int/lit8 v0, p1, 0x5

    add-int/2addr v0, p0

    .line 153
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMaxScore:[I

    aget v0, v1, v0

    return v0
.end method

.method private static getMinScore(II)I
    .locals 2

    .prologue
    .line 143
    mul-int/lit8 v0, p1, 0x5

    add-int/2addr v0, p0

    .line 144
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMinScore:[I

    aget v0, v1, v0

    return v0
.end method

.method private static setScoreRange(IIII)V
    .locals 2

    .prologue
    .line 133
    mul-int/lit8 v0, p1, 0x5

    add-int/2addr v0, p0

    .line 134
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMinScore:[I

    aput p2, v1, v0

    .line 135
    sget-object v1, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->sMaxScore:[I

    aput p3, v1, v0

    .line 136
    return-void
.end method

.method private updatePrimaryScore(JI)V
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/aggregation/util/MatchScore;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->updatePrimaryScore(I)V

    .line 258
    return-void
.end method

.method private updateSecondaryScore(JI)V
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/aggregation/util/MatchScore;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->updateSecondaryScore(I)V

    .line 262
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScores:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    .line 275
    return-void
.end method

.method public keepIn(J)V
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/aggregation/util/MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->keepIn()V

    .line 266
    return-void
.end method

.method public keepOut(J)V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMatchingScore(J)Lcom/android/providers/contacts/aggregation/util/MatchScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->keepOut()V

    .line 270
    return-void
.end method

.method public matchIdentity(J)V
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updatePrimaryScore(JI)V

    .line 184
    return-void
.end method

.method public matchName(JILjava/lang/String;ILjava/lang/String;I)V
    .locals 11

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    move/from16 v0, p5

    invoke-static {p3, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMaxScore(II)I

    move-result v4

    .line 196
    if-nez v4, :cond_0

    .line 197
    return-void

    .line 200
    :cond_0
    move-object/from16 v0, p6

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-direct {p0, p1, p2, v4}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updatePrimaryScore(JI)V

    .line 202
    return-void

    .line 205
    :cond_1
    if-nez p7, :cond_2

    .line 206
    return-void

    .line 209
    :cond_2
    move/from16 v0, p5

    invoke-static {p3, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->getMinScore(II)I

    move-result v5

    .line 210
    if-ne v5, v4, :cond_3

    .line 211
    return-void

    .line 217
    :cond_3
    :try_start_0
    invoke-static {p4}, Lcom/android/providers/contacts/util/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object v6

    .line 218
    invoke-static/range {p6 .. p6}, Lcom/android/providers/contacts/util/Hex;->decodeHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 225
    move/from16 v0, p7

    if-ne v0, v3, :cond_4

    .line 226
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mNameDistanceConservative:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    .line 229
    :goto_0
    invoke-virtual {v1, v6, v7}, Lcom/android/providers/contacts/aggregation/util/NameDistance;->getDistance([B[B)F

    move-result v6

    .line 230
    if-eq p3, v8, :cond_5

    .line 231
    move/from16 v0, p5

    if-ne v0, v8, :cond_6

    move v1, v3

    .line 232
    :goto_1
    if-eqz v1, :cond_7

    .line 233
    const v1, 0x3f733333    # 0.95f

    .line 235
    :goto_2
    cmpl-float v1, v6, v1

    if-lez v1, :cond_8

    .line 236
    int-to-float v1, v5

    sub-int v2, v4, v5

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 241
    :goto_3
    invoke-direct {p0, p1, p2, v1}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updatePrimaryScore(JI)V

    .line 242
    return-void

    .line 219
    :catch_0
    move-exception v1

    .line 221
    const-string/jumbo v2, "ContactMatcher"

    const-string/jumbo v3, "Failed to decode normalized name.  Skipping."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    return-void

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mNameDistanceApproximate:Lcom/android/providers/contacts/aggregation/util/NameDistance;

    goto :goto_0

    :cond_5
    move v1, v3

    .line 230
    goto :goto_1

    :cond_6
    move v1, v2

    .line 231
    goto :goto_1

    .line 234
    :cond_7
    const v1, 0x3f51eb85    # 0.82f

    goto :goto_2

    :cond_8
    move v1, v2

    .line 238
    goto :goto_3
.end method

.method public pickBestMatch(IZ)J
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    move-wide v4, v6

    .line 314
    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    if-ge v1, v0, :cond_6

    .line 315
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 316
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->isKeepOut()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->isKeepIn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v0

    return-wide v0

    .line 324
    :cond_2
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getPrimaryScore()I

    move-result v3

    .line 325
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    .line 326
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getSecondaryScore()I

    move-result v3

    .line 329
    :cond_3
    if-lt v3, p1, :cond_0

    .line 330
    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    xor-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_4

    .line 331
    const-wide/16 v0, -0x2

    return-wide v0

    .line 335
    :cond_4
    if-gt v3, v2, :cond_5

    if-ne v3, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 336
    :cond_5
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v4

    move v2, v3

    .line 337
    goto :goto_1

    .line 341
    :cond_6
    return-wide v4
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

    .line 348
    mul-int/lit16 v4, p1, 0x3e8

    .line 349
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 350
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v1, v2

    move v3, v2

    .line 352
    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    if-ge v1, v0, :cond_0

    .line 353
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 354
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getScore()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 355
    add-int/lit8 v3, v3, 0x1

    .line 352
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 361
    :cond_0
    invoke-interface {v5, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public prepareSecondaryMatchCandidates(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 287
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    if-ge v1, v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 289
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->isKeepOut()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getSecondaryScore()I

    move-result v3

    .line 294
    if-lt v3, p1, :cond_2

    .line 295
    if-nez v2, :cond_1

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    :cond_1
    invoke-virtual {v0}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_2
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->setPrimaryScore(I)V

    goto :goto_1

    .line 302
    :cond_3
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->mScoreCount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateScoreWithEmailMatch(J)V
    .locals 1

    .prologue
    .line 249
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateSecondaryScore(JI)V

    .line 250
    return-void
.end method

.method public updateScoreWithNicknameMatch(J)V
    .locals 1

    .prologue
    .line 253
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateSecondaryScore(JI)V

    .line 254
    return-void
.end method

.method public updateScoreWithPhoneNumberMatch(J)V
    .locals 1

    .prologue
    .line 245
    const/16 v0, 0x47

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateSecondaryScore(JI)V

    .line 246
    return-void
.end method
