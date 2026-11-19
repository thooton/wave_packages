.class public Lcom/android/mms/dom/smil/SmilPlayer;
.super Ljava/lang/Object;
.source "SmilPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/dom/smil/SmilPlayer$1;,
        Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;,
        Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;,
        Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    }
.end annotation


# static fields
.field private static sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private static final sTimelineEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field private mActiveElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/ElementTime;",
            ">;"
        }
    .end annotation
.end field

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentElement:I

.field private mCurrentSlide:I

.field private mCurrentTime:J

.field private mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

.field private mPlayerThread:Ljava/lang/Thread;

.field private mRoot:Lorg/w3c/dom/smil/ElementTime;

.field private mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$1;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilPlayer$1;-><init>()V

    .line 70
    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->INITIALIZED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 86
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 251
    return-void
.end method

.method private declared-synchronized actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 518
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit p0

    .line 538
    return-void

    .line 524
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->beginElement()Z

    .line 525
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 532
    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z

    .line 533
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized actionNext()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 1

    .prologue
    monitor-enter p0

    .line 616
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->stopCurrentSlide()V

    .line 617
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->loadNextSlide()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionPause()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 626
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->pauseActiveElements()V

    .line 627
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 628
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 629
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionPrev()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 1

    .prologue
    monitor-enter p0

    .line 621
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->stopCurrentSlide()V

    .line 622
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->loadPrevSlide()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionReload()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 641
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reloadActiveSlide()V

    .line 642
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 643
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionStop()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 632
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->endActiveElements()V

    .line 633
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 635
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 636
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 637
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 638
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized beginSmilDocument()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 396
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 397
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized endActiveElements()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 475
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 477
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D
    .locals 4

    .prologue
    monitor-enter p0

    .line 400
    :try_start_0
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v1, v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 402
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 400
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 406
    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementParallelTimeContainer;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 100
    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v0

    add-double/2addr v0, p1

    .line 102
    cmpl-double v4, v0, p3

    if-lez v4, :cond_0

    .line 104
    return-object v3

    .line 106
    :cond_0
    new-instance v4, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-direct {v4, v0, v1, p0, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 107
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 114
    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v0

    add-double/2addr v0, p1

    .line 116
    cmpl-double v4, v0, p3

    if-lez v4, :cond_3

    .line 119
    :goto_0
    new-instance v4, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-direct {v4, p3, p4, p0, v6}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 123
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v1, v2

    .line 124
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 125
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 126
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 130
    :cond_1
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    sub-double v0, p3, p1

    double-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    .line 133
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 135
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 136
    new-instance v5, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 137
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 136
    invoke-direct {v5, p3, p4, v0, v6}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 142
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    return-object v3

    :cond_3
    move-wide p3, v0

    goto :goto_0
.end method

.method public static getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilPlayer;-><init>()V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 257
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method private static getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementSequentialTimeContainer;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 158
    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v0

    add-double/2addr v0, p1

    .line 160
    cmpl-double v4, v0, p3

    if-lez v4, :cond_0

    .line 162
    return-object v3

    .line 164
    :cond_0
    new-instance v4, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-direct {v4, v0, v1, p0, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 165
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 172
    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v0

    add-double/2addr v0, p1

    .line 174
    cmpl-double v4, v0, p3

    if-lez v4, :cond_3

    .line 177
    :goto_0
    new-instance v6, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-direct {v6, p3, p4, p0, v8}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 182
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v7

    move v1, v2

    move-wide v4, p1

    .line 183
    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 184
    invoke-interface {v7, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 185
    invoke-static {v0, v4, v5, p3, p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v0

    .line 186
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v4

    .line 183
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 194
    :cond_1
    sub-double v0, p3, p1

    double-to-float v0, v0

    .line 193
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 195
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 196
    new-instance v4, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 197
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 196
    invoke-direct {v4, p3, p4, v0, v8}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 202
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    return-object v3

    :cond_3
    move-wide p3, v0

    goto :goto_0
.end method

.method private static getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementTime;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 209
    instance-of v0, p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    if-eqz v0, :cond_0

    .line 210
    check-cast p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    instance-of v0, p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    if-eqz v0, :cond_1

    .line 212
    check-cast p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 215
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v3

    move v0, v1

    .line 218
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 219
    invoke-interface {v3, v0}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 220
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v4

    add-double/2addr v4, p1

    .line 222
    cmpg-double v6, v4, p3

    if-gtz v6, :cond_2

    .line 223
    new-instance v6, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-direct {v6, v4, v5, p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 225
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 231
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 232
    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v3

    .line 233
    invoke-interface {v3}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 234
    invoke-interface {v3}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v4

    add-double/2addr v4, p1

    .line 235
    cmpg-double v3, v4, p3

    if-gtz v3, :cond_4

    .line 236
    new-instance v3, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 237
    const/4 v6, 0x1

    .line 236
    invoke-direct {v3, v4, v5, p0, v6}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 238
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    :cond_5
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 245
    return-object v2
.end method

.method private declared-synchronized isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 379
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 379
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isNextAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NEXT:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isPauseAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isPrevAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PREV:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isReloadAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isStartAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isStopAction()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadNextSlide()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 6

    .prologue
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 572
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 573
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 575
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    iput v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 577
    iput v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 578
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 579
    return-object v0

    .line 573
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 583
    :cond_1
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 584
    const/4 v0, 0x0

    .line 585
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v1, v2, :cond_2

    .line 586
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 587
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 589
    :cond_2
    return-object v0
.end method

.method private loadPrevSlide()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 593
    const/4 v3, 0x1

    .line 595
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    move v2, v4

    :goto_0
    if-ltz v1, :cond_1

    .line 596
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 597
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 599
    add-int/lit8 v2, v3, -0x1

    if-nez v3, :cond_0

    .line 600
    iput v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 601
    iput v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 602
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 603
    return-object v0

    :cond_0
    move v0, v1

    .line 595
    :goto_1
    add-int/lit8 v1, v1, -0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 607
    :cond_1
    if-eq v2, v4, :cond_2

    .line 608
    iput v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 609
    iput v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 610
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    return-object v0

    .line 612
    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    move v0, v2

    move v2, v3

    goto :goto_1
.end method

.method private declared-synchronized pauseActiveElements()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 486
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->pauseElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 488
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reloadActiveSlide()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->beginSmilDocument()V

    .line 387
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v1, v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 389
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 387
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->seekActiveMedia()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 392
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reloadCurrentEntry()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 2

    .prologue
    monitor-enter p0

    .line 542
    :try_start_0
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 545
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resumeActiveElements()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 492
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 498
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->resumeElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 500
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized seekActiveMedia()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 412
    instance-of v2, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 413
    return-void

    .line 415
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D

    move-result-wide v2

    .line 416
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    .line 421
    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    sub-double v2, v4, v2

    double-to-float v2, v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/ElementTime;->seekElement(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    monitor-exit p0

    .line 424
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopCurrentSlide()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 550
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 551
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 552
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 556
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v4

    .line 557
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v5

    instance-of v5, v5, Lcom/android/mms/dom/smil/SmilParElementImpl;

    if-eqz v5, :cond_1

    .line 558
    if-ne v4, v6, :cond_1

    .line 559
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 560
    iput v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 568
    :cond_0
    return-void

    .line 562
    :cond_1
    if-ne v4, v6, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 563
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 552
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 564
    :cond_3
    if-nez v4, :cond_2

    .line 565
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private declared-synchronized waitForEntry(J)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0xc8

    const-wide/16 v4, 0x0

    monitor-enter p0

    move-wide v2, v4

    .line 434
    :goto_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_3

    .line 435
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 436
    const-wide/16 v0, 0xc8

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 437
    cmp-long v8, v2, v0

    if-gez v8, :cond_1

    .line 438
    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilPlayer;->wait(J)V

    .line 439
    iget-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    move-wide v2, v0

    .line 445
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPrevAction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 445
    if-eqz v0, :cond_2

    :cond_0
    monitor-exit p0

    .line 447
    return-void

    .line 442
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    move-wide v2, v4

    goto :goto_1

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/EventTarget;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 452
    sub-long/2addr p1, v10

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    sub-long/2addr v0, v6

    sub-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_3
    monitor-exit p0

    .line 455
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized waitForWakeUp()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 504
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v0

    .line 504
    if-nez v0, :cond_1

    .line 505
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPrevAction()Z

    move-result v0

    .line 504
    :goto_1
    if-nez v0, :cond_2

    .line 506
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    :try_start_1
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Unexpected InterruptedException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_2
    monitor-exit p0

    .line 515
    return-void

    .line 504
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 508
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 510
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getCurrentPosition()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 465
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 2

    .prologue
    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-static {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->-get0(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    monitor-exit p0

    return v0

    .line 461
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lorg/w3c/dom/smil/ElementTime;)V
    .locals 6

    .prologue
    monitor-enter p0

    .line 301
    :try_start_0
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    .line 302
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    .line 303
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    const-string/jumbo v1, "Event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    .line 304
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    const-string/jumbo v1, "mediaTimeUpdated"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 306
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPausedState()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayedState()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayingState()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStoppedState()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NEXT:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 367
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 369
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 324
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 328
    return-void

    .line 326
    :cond_0
    :try_start_1
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Error State: Playback is not playing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 313
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "SmilPlayer thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    .line 314
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 315
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 319
    return-void

    .line 317
    :cond_0
    :try_start_1
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Error State: Playback is playing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prev()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PREV:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 374
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 376
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 358
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 362
    return-void

    .line 359
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionReload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 654
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    :goto_0
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v0, v4, :cond_f

    .line 655
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 656
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iput v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 659
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    .line 660
    :cond_2
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    cmp-long v3, v0, v6

    if-lez v3, :cond_e

    .line 662
    :try_start_0
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForEntry(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v3

    if-nez v3, :cond_4

    .line 668
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPrevAction()Z

    move-result v3

    .line 667
    if-eqz v3, :cond_2

    .line 669
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 670
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionPause()V

    .line 671
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForWakeUp()V

    .line 674
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 675
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionStop()V

    .line 676
    return-void

    .line 663
    :catch_0
    move-exception v3

    .line 664
    const-string/jumbo v5, "Mms"

    const-string/jumbo v6, "Unexpected InterruptedException."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 679
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 680
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionReload()V

    .line 681
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reloadCurrentEntry()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v2

    .line 682
    if-nez v2, :cond_7

    .line 683
    return-void

    .line 684
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 685
    sget-object v3, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 689
    :cond_8
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isNextAction()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 690
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionNext()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_9

    move-object v2, v0

    .line 694
    :cond_9
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    if-ne v0, v1, :cond_c

    .line 695
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 696
    invoke-direct {p0, v2}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 700
    :goto_2
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 703
    :cond_a
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPrevAction()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 704
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionPrev()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_b

    move-object v2, v0

    .line 708
    :cond_b
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    if-ne v0, v1, :cond_d

    .line 709
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 710
    invoke-direct {p0, v2}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 714
    :goto_3
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    goto/16 :goto_1

    .line 698
    :cond_c
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    goto :goto_2

    .line 712
    :cond_d
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    goto :goto_3

    .line 718
    :cond_e
    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 719
    invoke-direct {p0, v2}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 654
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    goto/16 :goto_0

    .line 722
    :cond_f
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 723
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->resumeActiveElements()V

    .line 333
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 334
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 340
    return-void

    .line 335
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 338
    :cond_1
    :try_start_2
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Error State: Playback can not be started!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 345
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 349
    return-void

    .line 346
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopWhenReload()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 352
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->endActiveElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 353
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
