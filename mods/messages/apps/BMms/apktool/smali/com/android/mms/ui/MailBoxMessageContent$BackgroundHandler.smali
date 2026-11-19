.class final Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MailBoxMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MailBoxMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageContent;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MailBoxMessageContent;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    .line 612
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 613
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2

    .prologue
    .line 655
    packed-switch p1, :pswitch_data_0

    .line 663
    :goto_0
    return-void

    .line 657
    :pswitch_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 658
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 659
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 660
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageContent;->-get9(Lcom/android/mms/ui/MailBoxMessageContent;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x1a2d
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 617
    packed-switch p1, :pswitch_data_0

    .line 648
    const-string/jumbo v0, "MessageDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown query token :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 619
    :pswitch_0
    if-nez p3, :cond_1

    .line 620
    const-string/jumbo v0, "MessageDetailActivity"

    const-string/jumbo v1, "onQueryComplete: cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v0, p3}, Lcom/android/mms/ui/MailBoxMessageContent;->-set0(Lcom/android/mms/ui/MailBoxMessageContent;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 625
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageContent;->-get1(Lcom/android/mms/ui/MailBoxMessageContent;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageContent;->-wrap2(Lcom/android/mms/ui/MailBoxMessageContent;)V

    .line 628
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 630
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v0, p3}, Lcom/android/mms/ui/MailBoxMessageContent;->-wrap1(Lcom/android/mms/ui/MailBoxMessageContent;Landroid/database/Cursor;)V

    .line 632
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageContent;->-get7(Lcom/android/mms/ui/MailBoxMessageContent;)I

    move-result v0

    if-nez v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    .line 634
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageContent;->-get5(Lcom/android/mms/ui/MailBoxMessageContent;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 633
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->markAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    .line 636
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 637
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 638
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageContent;->-get9(Lcom/android/mms/ui/MailBoxMessageContent;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    const-string/jumbo v1, "MessageDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Get sms content failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 644
    :cond_3
    const-string/jumbo v0, "MessageDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find this SMS. URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageContent;->-get4(Lcom/android/mms/ui/MailBoxMessageContent;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x1a2e
        :pswitch_0
    .end packed-switch
.end method
