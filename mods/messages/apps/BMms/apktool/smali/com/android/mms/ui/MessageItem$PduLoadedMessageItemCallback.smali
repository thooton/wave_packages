.class public Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;
.super Ljava/lang/Object;
.source "MessageItem.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PduLoadedMessageItemCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageItem;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 11

    .prologue
    const/16 v10, 0x82

    const-wide/16 v8, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 565
    if-eqz p2, :cond_0

    .line 566
    invoke-static {}, Lcom/android/mms/ui/MessageItem;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PduLoadedMessageItemCallback PDU couldn\'t be loaded: "

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageItem;->-get1(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageItem;->-get1(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v1

    monitor-enter v1

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageItem;->-get1(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/mms/util/ItemLoadedFuture;->setIsDone(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 574
    :cond_1
    check-cast p1, Lcom/android/mms/util/PduLoaderManager$PduLoaded;

    .line 575
    const-wide/16 v2, 0x0

    .line 576
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v10, v0, :cond_5

    .line 577
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v1, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 578
    iget-object v0, p1, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    .line 579
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageItem;->-wrap1(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 581
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 582
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 583
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v0

    mul-long v2, v0, v8

    .line 623
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-nez v0, :cond_3

    .line 624
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v10, v0, :cond_d

    .line 625
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    new-array v6, v5, [Ljava/lang/Object;

    .line 626
    iget-object v7, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v3, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    .line 625
    const v2, 0x7f070134

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 633
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageItem;->-get2(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 634
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageItem;->-get2(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-interface {v0, v1}, Lcom/android/mms/ui/MessageItem$PduLoadedCallback;->onPduLoaded(Lcom/android/mms/ui/MessageItem;)V

    .line 636
    :cond_4
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 585
    :cond_5
    iget-object v0, p1, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 586
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v7, p1, Lcom/android/mms/util/PduLoaderManager$PduLoaded;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v7, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 587
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v7, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7, v0}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/MultimediaMessagePdu;)I

    move-result v7

    iput v7, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 588
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 589
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v7, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v7

    iput v7, v1, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    .line 592
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v7, 0x84

    if-ne v1, v7, :cond_9

    .line 593
    if-nez v0, :cond_8

    .line 594
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v7, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Lcom/android/mms/ui/MessageItem;->-wrap1(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 607
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_b

    move-object v1, v6

    .line 608
    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 609
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 610
    iget-object v6, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 611
    iget-object v6, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 614
    :cond_7
    iget-object v6, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_c

    move v1, v4

    :goto_4
    iput v1, v6, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 616
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_2

    .line 618
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageItem;->-wrap2(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/PduBody;)V

    .line 619
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageItem;->-wrap3(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/PduBody;)V

    .line 620
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageItem;->-wrap4(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/PduBody;)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    .line 596
    check-cast v1, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 597
    iget-object v2, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    iget-object v7, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v2, v3, v7}, Lcom/android/mms/ui/MessageItem;->-wrap1(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 598
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v2

    mul-long/2addr v2, v8

    goto :goto_2

    .line 602
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    .line 603
    iget-object v2, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v3, 0x7f07012e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 602
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iput-object v2, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 604
    if-nez v0, :cond_a

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_a
    move-object v1, v0

    check-cast v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v2

    mul-long/2addr v2, v8

    goto :goto_2

    .line 607
    :cond_b
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    goto :goto_3

    .line 614
    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v1

    goto :goto_4

    .line 629
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v6, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;->this$0:Lcom/android/mms/ui/MessageItem;

    iget v7, v7, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_e

    move v4, v5

    :cond_e
    invoke-static {v1, v6, v4, v2, v3}, Lcom/android/mms/ui/MessageItem;->-wrap0(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZJ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_1
.end method
