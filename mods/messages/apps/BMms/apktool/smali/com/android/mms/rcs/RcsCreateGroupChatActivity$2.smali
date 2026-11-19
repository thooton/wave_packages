.class Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;
.super Ljava/lang/Object;
.source "RcsCreateGroupChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->handleRcsGroupChatCreateNotActive(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsCreateGroupChatActivity;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsCreateGroupChatActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;->this$0:Lcom/android/mms/rcs/RcsCreateGroupChatActivity;

    iput-object p2, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;->val$extras:Landroid/os/Bundle;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;->this$0:Lcom/android/mms/rcs/RcsCreateGroupChatActivity;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->-get0(Lcom/android/mms/rcs/RcsCreateGroupChatActivity;)Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;->this$0:Lcom/android/mms/rcs/RcsCreateGroupChatActivity;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->-get0(Lcom/android/mms/rcs/RcsCreateGroupChatActivity;)Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->onDone(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;->this$0:Lcom/android/mms/rcs/RcsCreateGroupChatActivity;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->-get0(Lcom/android/mms/rcs/RcsCreateGroupChatActivity;)Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->onEnd()V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;->val$extras:Landroid/os/Bundle;

    const-string/jumbo v1, "groupChatId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 311
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;->val$extras:Landroid/os/Bundle;

    const-string/jumbo v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 312
    iget-object v2, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;->this$0:Lcom/android/mms/rcs/RcsCreateGroupChatActivity;

    .line 313
    iget-object v3, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;->this$0:Lcom/android/mms/rcs/RcsCreateGroupChatActivity;

    .line 312
    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 314
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;->this$0:Lcom/android/mms/rcs/RcsCreateGroupChatActivity;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->finish()V

    .line 315
    return-void
.end method
