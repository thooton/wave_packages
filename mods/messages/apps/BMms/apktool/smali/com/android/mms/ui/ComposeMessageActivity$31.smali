.class Lcom/android/mms/ui/ComposeMessageActivity$31;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->viewMmsMessageAttachment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->val$requestCode:I

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get49(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 998
    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 1002
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->val$requestCode:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1003
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isSimpleAudio()Z

    move-result v1

    .line 1002
    if-eqz v1, :cond_1

    .line 1004
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    .line 1005
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1006
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1007
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1009
    return-void

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get49(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v1

    .line 1013
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$31;->val$requestCode:I

    .line 1012
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->launchSlideshowActivity(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 1014
    return-void
.end method
