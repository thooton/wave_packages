.class Lcom/android/mms/ui/MailBoxMessageContent$1;
.super Landroid/os/Handler;
.source "MailBoxMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MailBoxMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageContent;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageContent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageContent$1;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    .line 666
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 669
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 693
    :goto_0
    return-void

    .line 671
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$1;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageContent;->-wrap4(Lcom/android/mms/ui/MailBoxMessageContent;)V

    goto :goto_0

    .line 674
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 675
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$1;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 679
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 680
    if-lez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$1;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    .line 682
    const v1, 0x7f0702dd

    .line 681
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 689
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$1;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageContent;->finish()V

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$1;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    .line 686
    const v1, 0x7f0702de

    .line 685
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 669
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
