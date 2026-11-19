.class Lcom/android/mms/ui/ComposeMessageActivity$21;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10215
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 10218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 10219
    const-string/jumbo v1, "com.suntek.mway.rcs.app.service.ACTION_MESSAGE_DOWNLOAD_EMOTICON_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10221
    const-string/jumbo v0, "result"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 10222
    const-string/jumbo v1, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 10223
    if-nez v0, :cond_1

    .line 10224
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v1, 0x7f0700ba

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap81(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 10226
    const/4 v0, 0x3

    .line 10225
    invoke-static {p1, v2, v3, v0}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 10231
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$21;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 10233
    :cond_0
    return-void

    .line 10229
    :cond_1
    const/4 v0, 0x1

    .line 10228
    invoke-static {p1, v2, v3, v0}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    goto :goto_0
.end method
