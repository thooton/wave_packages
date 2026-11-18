.class final Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
.super Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 7593
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 7594
    invoke-direct {p0, p2}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 7595
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7772
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 7773
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap87(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 7774
    sparse-switch p1, :sswitch_data_0

    .line 7794
    :goto_0
    const/16 v0, 0x709

    if-ne p1, v0, :cond_3

    .line 7795
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 7796
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 7802
    if-eqz v0, :cond_1

    .line 7803
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 7804
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->removeFromCache()V

    goto :goto_1

    .line 7776
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setMessageCount(I)V

    .line 7779
    :sswitch_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7781
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->-set10(Lcom/android/mms/ui/ComposeMessageActivity;J)J

    .line 7786
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-wide/16 v2, -0x2

    .line 7785
    invoke-static {v0, v2, v3, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 7789
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap86(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 7809
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 7810
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 7816
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 7817
    return-void

    .line 7811
    :cond_3
    const/16 v0, 0x25e4

    if-ne p1, v0, :cond_2

    .line 7813
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v1, 0x2538

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap79(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    goto :goto_2

    .line 7774
    :sswitch_data_0
    .sparse-switch
        0x709 -> :sswitch_0
        0x25e4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10

    .prologue
    # PERF(mms rows): load the newest MMS rows while the list is being built
    invoke-static {p1, p3}, Lcom/android/mms/ui/ArgonComposePerf;->prefetch(ILandroid/database/Cursor;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 7599
    sparse-switch p1, :sswitch_data_0

    .line 7768
    :cond_0
    :goto_0
    return-void

    .line 7601
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 7604
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 7606
    const-string/jumbo v0, "Mms"

    const/4 v8, 0x2

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "##### onQueryComplete: msg history result for threadId "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 7609
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    .line 7610
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    cmp-long v0, v8, v2

    if-nez v0, :cond_5

    .line 7626
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap65(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 7629
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v6, "select_id"

    const-wide/16 v8, -0x1

    invoke-virtual {v0, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 7630
    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_7

    .line 7631
    if-eqz p3, :cond_15

    .line 7632
    invoke-interface {p3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 7633
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7634
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 7635
    cmp-long v0, v8, v6

    if-nez v0, :cond_3

    .line 7636
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 7663
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v6, p3}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 7665
    if-eq v0, v1, :cond_9

    .line 7666
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get29(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 7686
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setMessageCount(I)V

    .line 7694
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 7695
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap10(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 7694
    if-eqz v0, :cond_4

    .line 7695
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get45(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 7694
    if-eqz v0, :cond_4

    .line 7695
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 7696
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap52(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 7697
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get36(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get39(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7703
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap10(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7704
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get53(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 7703
    if-eqz v0, :cond_d

    .line 7705
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get36(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 7710
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 7711
    return-void

    .line 7614
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onQueryComplete: msg history query result is for threadId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7615
    const-string/jumbo v1, ", but mConversation has threadId "

    .line 7614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7616
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 7614
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7616
    const-string/jumbo v1, " starting a new query"

    .line 7614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 7617
    if-eqz p3, :cond_6

    .line 7618
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 7620
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap78(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 7621
    return-void

    .line 7641
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get41(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v0

    if-eq v0, v1, :cond_15

    .line 7647
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get41(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v0

    const v6, 0x7fffffff

    if-ne v0, v6, :cond_8

    .line 7648
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    .line 7649
    if-lez v0, :cond_15

    .line 7652
    add-int/lit8 v0, v0, -0x1

    .line 7653
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set16(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    goto/16 :goto_1

    .line 7658
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get41(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v0

    .line 7659
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set16(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    goto/16 :goto_1

    .line 7668
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    .line 7670
    if-eqz p3, :cond_b

    if-lez v0, :cond_b

    .line 7671
    invoke-interface {p3}, Landroid/database/Cursor;->moveToLast()Z

    .line 7672
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 7678
    :goto_4
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->-get42(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->-get25(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v8

    cmp-long v7, v0, v8

    if-eqz v7, :cond_c

    :cond_a
    :goto_5
    invoke-static {v6, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap77(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V

    .line 7679
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set10(Lcom/android/mms/ui/ComposeMessageActivity;J)J

    .line 7680
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->-set17(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto/16 :goto_2

    :cond_b
    move-wide v0, v2

    .line 7670
    goto :goto_4

    :cond_c
    move v4, v5

    .line 7678
    goto :goto_5

    .line 7707
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get53(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_3

    .line 7714
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7715
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "ComposeMessageActivity is finished, do nothing "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7716
    if-eqz p3, :cond_e

    .line 7717
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 7719
    :cond_e
    return-void

    .line 7722
    :cond_f
    check-cast p2, Ljava/util/ArrayList;

    .line 7724
    new-instance v0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    .line 7725
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get6(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 7724
    invoke-direct {v0, p2, v1, v6, v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Ljava/util/Collection;Lcom/android/mms/data/Conversation$ConversationQueryHandler;Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 7727
    if-eqz p3, :cond_10

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_10

    move v5, v4

    .line 7728
    :cond_10
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 7723
    invoke-static {v0, p2, v5, v1}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V

    .line 7729
    if-eqz p3, :cond_0

    .line 7730
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 7736
    :sswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 7738
    const-string/jumbo v4, "Mms"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 7739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "##### onQueryComplete (after delete): msg history result for threadId "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 7742
    :cond_11
    if-nez p3, :cond_12

    .line 7743
    return-void

    .line 7745
    :cond_12
    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_14

    .line 7749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "##### MESSAGE_LIST_QUERY_AFTER_DELETE_TOKEN clearing thread id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 7751
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2, v0, v1, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 7753
    if-eqz v0, :cond_13

    .line 7754
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 7755
    invoke-virtual {v0, v5}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 7759
    :cond_13
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap40(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    .line 7766
    :cond_14
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_15
    move v0, v1

    goto/16 :goto_1

    .line 7599
    nop

    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_1
        0x2537 -> :sswitch_0
        0x2538 -> :sswitch_2
    .end sparse-switch
.end method
