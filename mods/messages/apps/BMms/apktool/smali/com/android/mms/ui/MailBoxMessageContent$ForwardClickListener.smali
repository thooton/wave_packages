.class public Lcom/android/mms/ui/MailBoxMessageContent$ForwardClickListener;
.super Ljava/lang/Object;
.source "MailBoxMessageContent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MailBoxMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForwardClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageContent;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MailBoxMessageContent;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageContent$ForwardClickListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 733
    packed-switch p2, :pswitch_data_0

    .line 746
    :goto_0
    :pswitch_0
    return-void

    .line 735
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$ForwardClickListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageContent;->-wrap3(Lcom/android/mms/ui/MailBoxMessageContent;)V

    goto :goto_0

    .line 738
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$ForwardClickListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    const-class v2, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    const-string/jumbo v1, "select_conversation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->setMailboxMode(Z)V

    .line 741
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$ForwardClickListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    const/16 v2, 0x74

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MailBoxMessageContent;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
