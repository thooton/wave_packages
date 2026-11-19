.class final Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
.super Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1442
    invoke-direct {p0, p2}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1443
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    .line 1565
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 1566
    packed-switch p1, :pswitch_data_0

    .line 1620
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1568
    :pswitch_1
    if-eqz p2, :cond_5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1569
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    invoke-static {}, Lcom/android/mms/ui/ConversationList;->-get10()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    .line 1570
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->-get6(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->-get21(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1571
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->-get17(Lcom/android/mms/ui/ConversationList;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->-get17(Lcom/android/mms/ui/ConversationList;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1572
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->-get17(Lcom/android/mms/ui/ConversationList;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1574
    :cond_2
    invoke-static {v2, v3}, Lcom/android/mms/ui/ConversationList;->-set6(J)J

    .line 1576
    :cond_3
    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    .line 1579
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 1594
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 1598
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1599
    const-wide/16 v2, -0x2

    .line 1598
    invoke-static {v0, v2, v3, v6}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1602
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 1605
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 1607
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    move-wide v0, v2

    .line 1568
    goto :goto_1

    .line 1585
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v2, v0, v1, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1586
    if-eqz v0, :cond_4

    .line 1587
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1588
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1589
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->removeFromCache()V

    goto :goto_2

    .line 1612
    :pswitch_2
    const-string/jumbo v0, "onQueryComplete finished DELETE_OBSOLETE_THREADS_TOKEN"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1615
    if-lez p3, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    goto/16 :goto_0

    .line 1566
    nop

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1461
    sparse-switch p1, :sswitch_data_0

    .line 1559
    const-string/jumbo v0, "Mms"

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

    .line 1561
    :cond_0
    :goto_0
    return-void

    .line 1463
    :sswitch_0
    # PERF(inbox timing): primary inbox cursor delivery, before binding.
    const-string v0, "inbox_cursor"
    invoke-static {v0}, Lcom/android/mms/util/ArgonLaunch;->mark(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get11(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1464
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get11(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1465
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get5(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0701fc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1466
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->-set3(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 1470
    :goto_1
    sget-boolean v0, Lcom/android/mms/util/ArgonLaunch;->ENABLED:Z
    if-eqz v0, :argon_inbox_timed
    if-eqz p3, :argon_inbox_timed
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I
    move-result v0
    if-eqz v0, :argon_inbox_timed
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;
    move-result-object v0
    const-string v5, "inbox_rows"
    invoke-static {v0, v5}, Lcom/android/mms/util/ArgonLaunch;->awaitRows(Landroid/widget/ListView;Ljava/lang/String;)V

    :argon_inbox_timed
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-wrap10(Lcom/android/mms/ui/ConversationList;)V

    .line 1472
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get4(Lcom/android/mms/ui/ConversationList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->-set2(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 1480
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get6(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->-get2(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1483
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V

    .line 1485
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get20(Lcom/android/mms/ui/ConversationList;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->-get20(Lcom/android/mms/ui/ConversationList;)I

    move-result v1

    .line 1488
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->-get19(Lcom/android/mms/ui/ConversationList;)I

    move-result v2

    .line 1487
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1489
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0, v4}, Lcom/android/mms/ui/ConversationList;->-set9(Lcom/android/mms/ui/ConversationList;I)I

    goto :goto_0

    .line 1468
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0, v3}, Lcom/android/mms/ui/ConversationList;->-set3(Lcom/android/mms/ui/ConversationList;Z)Z

    goto :goto_1

    .line 1495
    :sswitch_1
    if-eqz p3, :cond_d

    .line 1496
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1497
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1499
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList;->-get22(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v3

    if-lez v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1500
    if-lez v0, :cond_4

    .line 1501
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1503
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 1507
    :sswitch_2
    if-eqz p3, :cond_5

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1508
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0, v3}, Lcom/android/mms/ui/ConversationList;->-set4(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 1512
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-wrap10(Lcom/android/mms/ui/ConversationList;)V

    .line 1513
    if-eqz p3, :cond_0

    .line 1515
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1516
    if-lez v0, :cond_7

    .line 1517
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1518
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0, p3}, Lcom/android/mms/ui/ConversationList;->-wrap11(Lcom/android/mms/ui/ConversationList;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 1510
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->-set4(Lcom/android/mms/ui/ConversationList;Z)Z

    goto :goto_3

    .line 1520
    :cond_6
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Cursor couldn\'t move to first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1523
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->-wrap8(Lcom/android/mms/ui/ConversationList;Z)V

    goto/16 :goto_0

    .line 1530
    :sswitch_3
    if-eqz p3, :cond_c

    .line 1531
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1532
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1534
    :goto_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->-get13(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v2

    if-lez v0, :cond_8

    .line 1535
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const v0, 0x7f070352

    invoke-virtual {v4, v0, v3}, Lcom/android/mms/ui/ConversationList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1534
    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1536
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    const v1, 0x7f070351

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1540
    :sswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1541
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "ConversationList is finished, do nothing "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    if-eqz p3, :cond_9

    .line 1543
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1545
    :cond_9
    return-void

    .line 1548
    :cond_a
    check-cast p2, Ljava/util/Collection;

    .line 1549
    new-instance v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 1550
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v4}, Lcom/android/mms/ui/ConversationList;->-get3(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1549
    invoke-direct {v0, p2, v2, v4, v5}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Ljava/util/Collection;Lcom/android/mms/data/Conversation$ConversationQueryHandler;Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 1551
    if-eqz p3, :cond_b

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    move v1, v3

    .line 1552
    :cond_b
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1549
    invoke-static {v0, p2, v1, v2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V

    .line 1553
    if-eqz p3, :cond_0

    .line 1554
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    move v0, v1

    goto/16 :goto_2

    .line 1461
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a5 -> :sswitch_0
        0x6a6 -> :sswitch_1
        0x6a7 -> :sswitch_2
        0x6a8 -> :sswitch_3
        0x70a -> :sswitch_4
    .end sparse-switch
.end method
