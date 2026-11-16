.class Lcom/android/mms/ui/ComposeMessageActivity$2;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 1020
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 1023
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    .line 1024
    if-eqz v0, :cond_0

    .line 1025
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1067
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    return-void

    .line 1027
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap12(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)Z

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1031
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap37(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 1032
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap35(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 1036
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap62(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 1040
    :pswitch_3
    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1044
    :pswitch_4
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap0(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/Context;

    move-result-object v2

    .line 1045
    const-class v3, Lcom/android/mms/ui/PlayVideoOrPicActivity;

    .line 1044
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1046
    const-string/jumbo v2, "type"

    .line 1047
    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 1046
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    const-string/jumbo v2, "path"

    .line 1049
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap0(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/mms/ui/MessageUtils;->getPath(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    const-string/jumbo v1, "Mms"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1059
    :pswitch_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 1060
    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1061
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v3

    .line 1059
    invoke-static {v1, v2, v0, v3}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V

    goto :goto_0

    .line 1025
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1040
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
