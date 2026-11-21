.class public Lcom/nuance/flext9_OEM/input/WriteAlpha;
.super Lcom/nuance/flext9_OEM/input/Input;
.source "WriteAlpha.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;


# instance fields
.field private mCandidate:[C

.field private mCandidateEndsWithInstGest:[I

.field private mCandidateLength:[I

.field private mDatabaseConfigFile:Ljava/lang/String;

.field private mIsInstantGesture:[I

.field private final mLock:Ljava/lang/Object;

.field private mRegcognizerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mResultCount:[I

.field private mSession:I

.field private mSessionStarted:Z

.field private mStartWord:[C

.field private mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Input;-><init>()V

    .line 23
    iput v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    .line 26
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mResultCount:[I

    .line 27
    sget v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidate:[C

    .line 28
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateLength:[I

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    .line 30
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mIsInstantGesture:[I

    .line 31
    sget v0, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mStartWord:[C

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mDatabaseConfigFile:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;-><init>(Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    .line 43
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mStartWord:[C

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 44
    return-void
.end method

.method private isGestureCharacer(C)Z
    .locals 1

    .prologue
    .line 384
    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->isInstantGestureCharacter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/WriteAlphaCategory;->isMultiTouchGesturesCharacter(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private normalizeReturnChar(C)C
    .locals 1

    .prologue
    .line 366
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    :cond_0
    return p1
.end method

.method private notifyWriteEventListeners(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;

    .line 361
    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;->onHandleWriteEvent(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method private trimInstantGestureCharacterRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 372
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->isGestureCharacer(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 377
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 380
    :cond_1
    return-object p1
.end method


# virtual methods
.method public addRecognizeListener(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    return-void
.end method

.method public addWordToUserDictionary(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 145
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 146
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_addWordToUserDictionary(I[CI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 150
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public changeSettings(Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;)Z
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addSettings(Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 131
    const/4 v0, 0x0

    return v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public consume(Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;)V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 222
    iget-object v9, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 223
    :try_start_0
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    if-eqz v1, :cond_0

    .line 224
    iget v1, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v9

    .line 343
    return-void

    .line 227
    :pswitch_0
    :try_start_1
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_beginArc(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1

    .line 231
    :pswitch_1
    :try_start_2
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_endArc(I)I

    goto :goto_0

    .line 236
    :pswitch_2
    iget v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    move-object v0, p1

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ArcQueueItem;

    move-object v1, v0

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ArcQueueItem;->mArc1:Ljava/util/List;

    .line 237
    check-cast p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ArcQueueItem;

    iget-object v3, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ArcQueueItem;->mArc2:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mIsInstantGesture:[I

    .line 236
    invoke-static {v2, v1, v3, v4}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_addArc(ILjava/util/List;Ljava/util/List;[I)I

    .line 239
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mIsInstantGesture:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v1, v7, :cond_0

    .line 245
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mStartWord:[C

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 246
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mStartWord:[C

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mResultCount:[I

    invoke-static {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_recognize(I[C[I)I

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidate:[C

    sget v4, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateLength:[I

    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_getRecognitionCandidate(II[CI[I[I)I

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v1, v7, :cond_0

    .line 252
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidate:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateLength:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    .line 253
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->normalizeReturnChar(C)C

    move-result v7

    .line 258
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    move v2, v8

    .line 260
    :goto_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mResultCount:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    if-ge v2, v1, :cond_1

    .line 261
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidate:[C

    sget v4, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateLength:[I

    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    invoke-static/range {v1 .. v6}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_getRecognitionCandidate(II[CI[I[I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    :cond_1
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_endArc(I)I

    .line 273
    new-instance v1, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;

    invoke-direct {v1, v7, v10}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;-><init>(CLjava/util/List;)V

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_0

    .line 265
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidate:[C

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateLength:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->trimInstantGestureCharacterRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 281
    :pswitch_3
    check-cast p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$RecognizeQueueItem;

    iget-object v1, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$RecognizeQueueItem;->mStartWord:Ljava/lang/CharSequence;

    .line 282
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mStartWord:[C

    invoke-virtual {p0, v2, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->copyWordArray([CLjava/lang/CharSequence;)V

    .line 284
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mStartWord:[C

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mResultCount:[I

    invoke-static {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_recognize(I[C[I)I

    move-result v1

    if-nez v1, :cond_0

    .line 287
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 289
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidate:[C

    sget v4, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateLength:[I

    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_getRecognitionCandidate(II[CI[I[I)I

    move-result v1

    if-nez v1, :cond_7

    .line 290
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateLength:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lez v1, :cond_7

    .line 291
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidate:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateLength:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    .line 292
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->normalizeReturnChar(C)C

    move-result v1

    .line 293
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->isGestureCharacer(C)Z

    move-result v2

    if-nez v2, :cond_6

    move v7, v8

    :goto_2
    move v2, v8

    .line 298
    :goto_3
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mResultCount:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    if-ge v2, v1, :cond_4

    .line 299
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidate:[C

    sget v4, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateLength:[I

    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateEndsWithInstGest:[I

    invoke-static/range {v1 .. v6}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_getRecognitionCandidate(II[CI[I[I)I

    move-result v1

    if-nez v1, :cond_3

    .line 301
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidate:[C

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mCandidateLength:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->trimInstantGestureCharacterRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 303
    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 308
    :cond_4
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_endArc(I)I

    .line 310
    if-eqz v7, :cond_5

    .line 311
    new-instance v1, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;

    invoke-direct {v1, v7, v10}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;-><init>(CLjava/util/List;)V

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_0

    .line 313
    :cond_5
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 314
    new-instance v1, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;

    invoke-direct {v1, v10}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_0

    .line 321
    :pswitch_4
    check-cast p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$CharQueueItem;

    iget-char v1, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$CharQueueItem;->mChar:C

    .line 322
    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;

    invoke-direct {v2, v1}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;-><init>(C)V

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_0

    .line 326
    :pswitch_5
    check-cast p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$KeyQueueItem;

    iget v1, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$KeyQueueItem;->mKey:I

    .line 327
    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$KeyWriteEvent;

    invoke-direct {v2, v1}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$KeyWriteEvent;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_0

    .line 331
    :pswitch_6
    check-cast p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$TextQueueItem;

    iget-object v1, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$TextQueueItem;->mText:Ljava/lang/CharSequence;

    .line 332
    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;

    invoke-direct {v2, v1}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/WriteAlpha;->notifyWriteEventListeners(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    goto/16 :goto_0

    .line 336
    :pswitch_7
    check-cast p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeAlphaSettings;

    iget-object v1, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeAlphaSettings;->mSettings:Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    .line 337
    iget v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-static {v2, v1}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_changeSettings(ILcom/nuance/flext9_OEM/input/WriteAlphaSettings;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_6
    move v7, v1

    goto/16 :goto_2

    :cond_7
    move v7, v8

    goto/16 :goto_2

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method copyWordArray([CLjava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 346
    if-eqz p2, :cond_1

    move v0, v1

    .line 348
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 349
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {p1, v0, v2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([CIIC)V

    .line 357
    :goto_1
    return-void

    .line 354
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([CIIC)V

    goto :goto_1
.end method

.method public create()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->start()V

    .line 49
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mDatabaseConfigFile:Ljava/lang/String;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_create(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 51
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 51
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->stop()V

    .line 79
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    if-eqz v0, :cond_0

    .line 80
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_destroy(I)I

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    .line 85
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 87
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public endArcsAddingSequence()V
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->endArcSequence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 166
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->clearQueue()V

    .line 69
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_finish(I)I

    .line 70
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mStartWord:[C

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 74
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDatabaseVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    if-eqz v0, :cond_0

    .line 114
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_getDatabaseVersion(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 117
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_getVersion(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 107
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public noteSelectedCandidate(I)V
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 137
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_noteSelectedCandidate(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 140
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 171
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 172
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3, p3}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 182
    return-void

    .line 174
    :cond_1
    if-eqz p1, :cond_2

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p3}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 177
    :cond_2
    if-eqz p2, :cond_0

    .line 178
    :try_start_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, p3}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public queueChar(C)V
    .locals 2

    .prologue
    .line 202
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addChar(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 207
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public queueKey(I)V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 215
    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public queueRecognition(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addRecognize(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 191
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public queueText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 199
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeRecognizeListener(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void
.end method

.method public start(Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;Landroid/content/Context;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mStartWord:[C

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 58
    iget v2, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSession:I

    invoke-static {p3}, Lcom/nuance/flext9_OEM/input/Input;->normalizeXT9LanguageID(I)I

    move-result v3

    invoke-static {v2, p1, p2, v3}, Lcom/nuance/flext9_OEM/input/NativeWriteAlpha;->Write_Alpha_start(ILcom/nuance/flext9_OEM/input/WriteAlphaSettings;Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    .line 61
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startArcsAddingSequence()V
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteAlpha;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->startArcSequence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 158
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
