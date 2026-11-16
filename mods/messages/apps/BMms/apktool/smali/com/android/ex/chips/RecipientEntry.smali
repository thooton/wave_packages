.class public Lcom/android/ex/chips/RecipientEntry;
.super Ljava/lang/Object;
.source "RecipientEntry.java"


# instance fields
.field private final mContactId:J

.field private final mDataId:J

.field private final mDestination:Ljava/lang/String;

.field private final mDestinationLabel:Ljava/lang/String;

.field private final mDestinationType:I

.field private final mDirectoryId:Ljava/lang/Long;

.field private final mDisplayName:Ljava/lang/String;

.field private final mEntryType:I

.field private mInReplacedChip:Z

.field private mIndicatorIconId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mIndicatorText:Ljava/lang/String;

.field private mIsFirstLevel:Z

.field private mIsValid:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mPermissions:[Ljava/lang/String;

.field private mPhotoBytes:[B

.field private final mPhotoThumbnailUri:Landroid/net/Uri;

.field private final mShouldDisplayIcon:Z


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;)V
    .locals 16

    .prologue
    .line 144
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    .line 142
    invoke-direct/range {v0 .. v15}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 112
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 110
    invoke-direct/range {v0 .. v16}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZZLjava/lang/String;[Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZZLjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    .line 120
    iput-boolean p13, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    .line 121
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    .line 123
    iput p4, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    .line 124
    iput-object p5, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    .line 125
    iput-wide p6, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    .line 126
    iput-object p8, p0, Lcom/android/ex/chips/RecipientEntry;->mDirectoryId:Ljava/lang/Long;

    .line 127
    iput-wide p9, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    .line 128
    iput-object p11, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    .line 129
    iput-boolean p12, p0, Lcom/android/ex/chips/RecipientEntry;->mShouldDisplayIcon:Z

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B

    .line 131
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsValid:Z

    .line 132
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mLookupKey:Ljava/lang/String;

    .line 133
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/chips/RecipientEntry;->mIndicatorIconId:I

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mIndicatorText:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPermissions:[Ljava/lang/String;

    .line 136
    return-void
.end method

.method public static constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 16

    .prologue
    .line 165
    invoke-static/range {p0 .. p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 166
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 168
    :goto_0
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    .line 169
    const-wide/16 v6, -0x1

    .line 170
    const-wide/16 v9, -0x1

    .line 168
    const/4 v1, 0x0

    .line 169
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 170
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v3, v2

    move/from16 v13, p1

    .line 168
    invoke-direct/range {v0 .. v15}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object/from16 v2, p0

    .line 166
    goto :goto_0
.end method

.method public static constructFakePhoneEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 16

    .prologue
    .line 178
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    .line 179
    const-wide/16 v6, -0x1

    .line 180
    const-wide/16 v9, -0x1

    .line 178
    const/4 v1, 0x0

    .line 179
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 180
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move/from16 v13, p1

    .line 178
    invoke-direct/range {v0 .. v15}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 16

    .prologue
    .line 190
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    .line 191
    const-wide/16 v6, -0x2

    const-wide/16 v9, -0x2

    .line 190
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 191
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 192
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v13, p2

    .line 190
    invoke-direct/range {v0 .. v15}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructPermissionEntry([Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 16

    .prologue
    .line 228
    new-instance v0, Lcom/android/ex/chips/RecipientEntry;

    .line 230
    const-string/jumbo v2, ""

    .line 231
    const-string/jumbo v3, ""

    .line 233
    const-string/jumbo v5, ""

    .line 234
    const-wide/16 v6, -0x1

    .line 236
    const-wide/16 v9, -0x1

    .line 229
    const/4 v1, 0x1

    .line 232
    const/4 v4, 0x0

    .line 235
    const/4 v8, 0x0

    .line 237
    const/4 v11, 0x0

    .line 238
    const/4 v12, 0x1

    .line 239
    const/4 v13, 0x0

    .line 240
    const/4 v14, 0x0

    move-object/from16 v15, p0

    .line 228
    invoke-direct/range {v0 .. v15}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 19

    .prologue
    .line 220
    new-instance v3, Lcom/android/ex/chips/RecipientEntry;

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 222
    if-eqz p10, :cond_0

    .line 223
    invoke-static/range {p10 .. p10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 220
    :goto_0
    const/4 v4, 0x0

    .line 223
    const/4 v15, 0x0

    .line 224
    const/16 v18, 0x0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v16, p11

    move-object/from16 v17, p12

    .line 220
    invoke-direct/range {v3 .. v18}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V

    return-object v3

    .line 223
    :cond_0
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public static constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 19

    .prologue
    .line 209
    new-instance v3, Lcom/android/ex/chips/RecipientEntry;

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    if-eqz p10, :cond_0

    .line 212
    invoke-static/range {p10 .. p10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 209
    :goto_0
    const/4 v4, 0x0

    .line 212
    const/4 v15, 0x1

    .line 213
    const/16 v18, 0x0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v16, p11

    move-object/from16 v17, p12

    .line 209
    invoke-direct/range {v3 .. v18}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;[Ljava/lang/String;)V

    return-object v3

    .line 212
    :cond_0
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public static constructTopLevelEntryForGroup(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 18

    .prologue
    .line 262
    new-instance v3, Lcom/android/ex/chips/RecipientEntry;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/RecipientEntry;->pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    if-eqz p11, :cond_0

    .line 265
    invoke-static/range {p11 .. p11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    :goto_0
    const/4 v15, 0x1

    move/from16 v4, p0

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v16, p12

    move-object/from16 v17, p13

    .line 262
    invoke-direct/range {v3 .. v17}, Lcom/android/ex/chips/RecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;)V

    return-object v3

    .line 265
    :cond_0
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public static isCreatedRecipient(J)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 156
    const-wide/16 v2, -0x1

    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    const-wide/16 v2, -0x2

    cmp-long v1, p0, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static pickDisplayName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientEntry;->mContactId:J

    return-wide v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDataId:J

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationType()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDestinationType:I

    return v0
.end method

.method public getDirectoryId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDirectoryId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryType()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    return v0
.end method

.method public getIndicatorIconId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 358
    iget v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIndicatorIconId:I

    return v0
.end method

.method public getIndicatorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIndicatorText:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPhotoBytes()[B
    .locals 1

    .prologue
    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhotoThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFirstLevel()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsFirstLevel:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 336
    iget v2, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    iget v2, p0, Lcom/android/ex/chips/RecipientEntry;->mEntryType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mIsValid:Z

    return v0
.end method

.method public setInReplacedChip(Z)V
    .locals 0

    .prologue
    .line 394
    iput-boolean p1, p0, Lcom/android/ex/chips/RecipientEntry;->mInReplacedChip:Z

    .line 395
    return-void
.end method

.method public declared-synchronized setPhotoBytes([B)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 315
    :try_start_0
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 316
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldDisplayIcon()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEntry;->mShouldDisplayIcon:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEntry;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">, isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEntry;->mIsValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
