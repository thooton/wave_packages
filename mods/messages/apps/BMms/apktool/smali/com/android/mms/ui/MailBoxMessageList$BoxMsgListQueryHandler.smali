.class final Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MailBoxMessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MailBoxMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BoxMsgListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MailBoxMessageList;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    .line 590
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 591
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 595
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get2(Lcom/android/mms/ui/MailBoxMessageList;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 596
    if-eqz p3, :cond_8

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get1(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get1(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0, p3}, Lcom/android/mms/ui/MailBoxMessageList;->-set0(Lcom/android/mms/ui/MailBoxMessageList;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 601
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    const v2, 0x7f0f00bb

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MailBoxMessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 602
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageList;->-get4(Lcom/android/mms/ui/MailBoxMessageList;)Lcom/android/mms/ui/MailBoxMessageListAdapter;

    move-result-object v2

    if-nez v2, :cond_4

    .line 603
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    new-instance v3, Lcom/android/mms/ui/MailBoxMessageListAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    .line 604
    iget-object v5, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    .line 603
    invoke-direct {v3, v4, v5, p3}, Lcom/android/mms/ui/MailBoxMessageListAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MailBoxMessageListAdapter$OnListContentChangedListener;Landroid/database/Cursor;)V

    invoke-static {v2, v3}, Lcom/android/mms/ui/MailBoxMessageList;->-set1(Lcom/android/mms/ui/MailBoxMessageList;Lcom/android/mms/ui/MailBoxMessageListAdapter;)Lcom/android/mms/ui/MailBoxMessageListAdapter;

    .line 605
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v2}, Lcom/android/mms/ui/MailBoxMessageList;->invalidateOptionsMenu()V

    .line 606
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v3}, Lcom/android/mms/ui/MailBoxMessageList;->-get4(Lcom/android/mms/ui/MailBoxMessageList;)Lcom/android/mms/ui/MailBoxMessageListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MailBoxMessageList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 607
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageList;->-get3(Lcom/android/mms/ui/MailBoxMessageList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 609
    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v3, v2}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap4(Lcom/android/mms/ui/MailBoxMessageList;I)V

    .line 610
    if-nez v2, :cond_1

    .line 611
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    const v3, 0x7f070274

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MailBoxMessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MailBoxMessageList;->setProgressBarIndeterminateVisibility(Z)V

    .line 642
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MailBoxMessageList;->-set4(Lcom/android/mms/ui/MailBoxMessageList;Z)Z

    .line 643
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get6(Lcom/android/mms/ui/MailBoxMessageList;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedMsgType(J)V

    .line 644
    return-void

    .line 613
    :cond_2
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 614
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageList;->-get5(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 615
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0, p3}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap0(Lcom/android/mms/ui/MailBoxMessageList;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0, p3}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap5(Lcom/android/mms/ui/MailBoxMessageList;Landroid/database/Cursor;)V

    goto :goto_0

    .line 619
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageList;->-get4(Lcom/android/mms/ui/MailBoxMessageList;)Lcom/android/mms/ui/MailBoxMessageListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v3}, Lcom/android/mms/ui/MailBoxMessageList;->-get1(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 620
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v2}, Lcom/android/mms/ui/MailBoxMessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 621
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageList;->-get9(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/SearchView;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageList;->-get9(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 622
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap3(Lcom/android/mms/ui/MailBoxMessageList;)V

    .line 625
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v2, p3}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap0(Lcom/android/mms/ui/MailBoxMessageList;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0, p3}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap5(Lcom/android/mms/ui/MailBoxMessageList;Landroid/database/Cursor;)V

    goto :goto_0

    .line 627
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageList;->-get3(Lcom/android/mms/ui/MailBoxMessageList;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 628
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap4(Lcom/android/mms/ui/MailBoxMessageList;I)V

    goto/16 :goto_0

    .line 630
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageList;->-get5(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 631
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get0(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 635
    :cond_8
    const-string/jumbo v0, "Mms"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 636
    const-string/jumbo v0, "MailBoxMessageList"

    const-string/jumbo v2, "Cannot init the cursor for the thread list."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageList;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
