.class public Lcom/nuance/flext9_OEM/input/WriteChinese;
.super Lcom/nuance/flext9_OEM/input/Input;
.source "WriteChinese.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;


# static fields
.field public static final MAXWORDLEN:I = 0x20


# instance fields
.field private mDatabaseConfigFile:Ljava/lang/String;

.field private mEndsWithInstGest:[I

.field private mLock:Ljava/lang/Object;

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

.field private mScratchBuffer:[C

.field private mScratchInt:[I

.field private mSession:I

.field private mSessionStarted:Z

.field private mStartWord:[C

.field private mTextContext:Ljava/lang/String;

.field private mWordBuffer:[C

.field private mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Input;-><init>()V

    .line 22
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mScratchBuffer:[C

    .line 24
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mScratchInt:[I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    .line 33
    sget v0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->MAX_RESULT_CHARACTERS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mStartWord:[C

    .line 34
    sget v0, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->MAX_RESULT_CHARACTERS:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWordBuffer:[C

    .line 35
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mResultCount:[I

    .line 36
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mEndsWithInstGest:[I

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mTextContext:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mDatabaseConfigFile:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;-><init>(Lcom/nuance/flext9_OEM/input/WriteThreadQueue$OnWriteThreadQueueConsumer;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    .line 46
    return-void
.end method

.method private getRecognizeCandidates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 231
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 233
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mStartWord:[C

    aput-char v6, v0, v6

    .line 234
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mStartWord:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mResultCount:[I

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_recognize(I[C[I)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v6

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mResultCount:[I

    aget v0, v0, v6

    if-ge v1, v0, :cond_1

    .line 236
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWordBuffer:[C

    sget v3, Lcom/nuance/flext9_OEM/input/WriteChineseSettings;->MAX_RESULT_CHARACTERS:I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mScratchInt:[I

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mEndsWithInstGest:[I

    invoke-static/range {v0 .. v5}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_getRecognitionCandidate(II[CI[I[I)I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWordBuffer:[C

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mScratchInt:[I

    aget v3, v3, v6

    invoke-direct {v0, v2, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_1
    return-object v7
.end method

.method private notifyWriteEventListeners(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;

    .line 247
    invoke-interface {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;->onHandleWriteEvent(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public addRecognizeListener(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    return-void
.end method

.method public changeSettings(Lcom/nuance/flext9_OEM/input/WriteChineseSettings;)Z
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addSettings(Lcom/nuance/flext9_OEM/input/WriteChineseSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 132
    const/4 v0, 0x0

    return v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public consume(Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;)V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    if-eqz v0, :cond_0

    .line 191
    iget v0, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$QueueItem;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 228
    return-void

    .line 194
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    check-cast p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ArcQueueItem;

    iget-object v2, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ArcQueueItem;->mArc1:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_addArc(ILjava/util/List;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 198
    :pswitch_1
    :try_start_2
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_beginArc(I)I

    goto :goto_0

    .line 202
    :pswitch_2
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_endArc(I)I

    goto :goto_0

    .line 206
    :pswitch_3
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/WriteChinese;->getRecognizeCandidates()Ljava/util/List;

    move-result-object v0

    .line 207
    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;

    invoke-direct {v2, v0}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/WriteChinese;->notifyWriteEventListeners(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    .line 208
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_endArc(I)I

    goto :goto_0

    .line 212
    :pswitch_4
    check-cast p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$CharQueueItem;

    iget-char v0, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$CharQueueItem;->mChar:C

    .line 213
    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;

    invoke-direct {v2, v0}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;-><init>(C)V

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/WriteChinese;->notifyWriteEventListeners(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    goto :goto_0

    .line 217
    :pswitch_5
    check-cast p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$TextQueueItem;

    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$TextQueueItem;->mText:Ljava/lang/CharSequence;

    .line 218
    new-instance v2, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;

    invoke-direct {v2, v0}, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/WriteChinese;->notifyWriteEventListeners(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$WriteEvent;)V

    goto :goto_0

    .line 222
    :pswitch_6
    check-cast p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeChineseSettings;

    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/WriteThreadQueue$ChangeChineseSettings;->mSettings:Lcom/nuance/flext9_OEM/input/WriteChineseSettings;

    .line 223
    iget v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-static {v2, v0}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_changeSettings(ILcom/nuance/flext9_OEM/input/WriteChineseSettings;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public create()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->start()V

    .line 51
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mDatabaseConfigFile:Ljava/lang/String;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_create(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 53
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 53
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->stop()V

    .line 80
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_destroy(I)I

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    .line 84
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 88
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public endArcsAddingSequence()V
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->endArcSequence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 149
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->clearQueue()V

    .line 70
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    if-eqz v0, :cond_0

    .line 71
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_finish(I)I

    .line 73
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 75
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDatabaseVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_getDatabaseVersion(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 118
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    if-eqz v0, :cond_0

    .line 105
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_getVersion(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 108
    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWord(ILjava/lang/StringBuilder;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 281
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 283
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mScratchInt:[I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mScratchBuffer:[C

    array-length v3, v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_getWord(II[C[II)Z

    move-result v0

    .line 284
    if-eqz v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mScratchInt:[I

    aget v2, v2, v4

    invoke-virtual {p2, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 288
    :cond_0
    return v0
.end method

.method public noteSelectedCandidate(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 298
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-static {v1, p1}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_noteSelectedCandidate(II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public queueAddArc(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 157
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public queueChar(C)V
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addChar(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 182
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public queueRecognition(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addRecognize(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 166
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public queueText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->addText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 174
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeRecognizeListener(Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$OnWriteRecognizerListener;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mRegcognizerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    return-void
.end method

.method public setAttribute(II)Z
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-static {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_setAttribute(III)Z

    move-result v0

    return v0
.end method

.method public setContext(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 254
    if-nez p1, :cond_0

    .line 255
    const-string/jumbo v0, ""

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mTextContext:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 261
    return v2

    .line 258
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_1
    iget v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_setContext(I[CI)Z

    move-result v1

    .line 265
    if-eqz v1, :cond_2

    .line 266
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mTextContext:Ljava/lang/String;

    .line 268
    :cond_2
    return v1
.end method

.method public start(Lcom/nuance/flext9_OEM/input/WriteChineseSettings;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->clearQueue()V

    .line 60
    iget v2, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSession:I

    invoke-static {v2, p1, p2}, Lcom/nuance/flext9_OEM/input/NativeWriteChinese;->Write_Chinese_start(ILcom/nuance/flext9_OEM/input/WriteChineseSettings;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z

    .line 63
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startArcsAddingSequence()V
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WriteChinese;->mWriteThreadQueue:Lcom/nuance/flext9_OEM/input/WriteThreadQueue;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteThreadQueue;->startArcSequence()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 141
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
