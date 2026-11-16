.class final Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;
.super Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.source "ConversationMultiSelectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationMultiSelectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationMultiSelectList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationMultiSelectList;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    .line 480
    invoke-direct {p0, p2}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 481
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 546
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 547
    sparse-switch p1, :sswitch_data_0

    .line 599
    :goto_0
    return-void

    .line 549
    :sswitch_0
    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 551
    :goto_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 573
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    .line 574
    const-wide/16 v2, -0x2

    .line 573
    invoke-static {v0, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 577
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 580
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-wrap1(Lcom/android/mms/ui/ConversationMultiSelectList;)V

    .line 582
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 549
    goto :goto_1

    .line 560
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v2, v0, v1, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 563
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 564
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->removeFromCache()V

    goto :goto_2

    .line 587
    :sswitch_1
    const-string/jumbo v0, "onQueryComplete finished DELETE_OBSOLETE_THREADS_TOKEN"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 594
    :sswitch_2
    invoke-static {v4}, Lcom/android/mms/ui/ConversationMultiSelectList;->-set1(Z)Z

    goto :goto_0

    .line 547
    :sswitch_data_0
    .sparse-switch
        0x709 -> :sswitch_0
        0x70b -> :sswitch_1
        0x46aa -> :sswitch_2
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 485
    sparse-switch p1, :sswitch_data_0

    .line 540
    const-string/jumbo v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQueryComplete called with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 487
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get4(Lcom/android/mms/ui/ConversationMultiSelectList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 490
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->invalidateOptionsMenu()V

    .line 492
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get4(Lcom/android/mms/ui/ConversationMultiSelectList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0701fc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get1(Lcom/android/mms/ui/ConversationMultiSelectList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationMultiSelectList;->-set0(Lcom/android/mms/ui/ConversationMultiSelectList;Z)Z

    .line 504
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get2(Lcom/android/mms/ui/ConversationMultiSelectList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get0(Lcom/android/mms/ui/ConversationMultiSelectList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 510
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 509
    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationMultiSelectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 513
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 514
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 513
    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 515
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get7(Lcom/android/mms/ui/ConversationMultiSelectList;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get7(Lcom/android/mms/ui/ConversationMultiSelectList;)I

    move-result v1

    .line 522
    iget-object v2, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get6(Lcom/android/mms/ui/ConversationMultiSelectList;)I

    move-result v2

    .line 521
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 523
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0, v3}, Lcom/android/mms/ui/ConversationMultiSelectList;->-set2(Lcom/android/mms/ui/ConversationMultiSelectList;I)I

    goto/16 :goto_0

    .line 529
    :sswitch_1
    check-cast p2, Ljava/util/Collection;

    .line 530
    new-instance v2, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get5(Lcom/android/mms/ui/ConversationMultiSelectList;)Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;

    move-result-object v0

    .line 531
    iget-object v3, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    .line 530
    invoke-direct {v2, p2, v0, v3}, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;-><init>(Ljava/util/Collection;Lcom/android/mms/data/Conversation$ConversationQueryHandler;Landroid/content/Context;)V

    .line 532
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 533
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    .line 530
    invoke-static {v2, p2, v0, v1}, Lcom/android/mms/ui/ConversationMultiSelectList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V

    .line 534
    if-eqz p3, :cond_0

    .line 535
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 532
    goto :goto_1

    .line 485
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a5 -> :sswitch_0
        0x70a -> :sswitch_1
    .end sparse-switch
.end method
