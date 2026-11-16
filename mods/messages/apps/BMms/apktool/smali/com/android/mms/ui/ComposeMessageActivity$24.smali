.class Lcom/android/mms/ui/ComposeMessageActivity$24;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver$GroupChatNotifyCallback;


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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBootMe(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 10622
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap45(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V

    .line 10623
    return-void
.end method

.method public onCreateNotActive(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 10618
    return-void
.end method

.method public onDeparted(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 10603
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap48(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V

    .line 10604
    return-void
.end method

.method public onDisband(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 10598
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap47(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V

    .line 10599
    return-void
.end method

.method public onGroupChatCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 10586
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap46(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V

    .line 10587
    return-void
.end method

.method public onGroupGone(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 10627
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap47(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V

    .line 10628
    return-void
.end method

.method public onGroupInviteExpired(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 10632
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$24$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$24$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$24;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10638
    return-void
.end method

.method public onMemberAliasChange(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 10591
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 10592
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 10594
    :cond_0
    return-void
.end method

.method public onUpdateRemark(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 10613
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap49(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V

    .line 10614
    return-void
.end method

.method public onUpdateSubject(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 10608
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap50(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V

    .line 10609
    return-void
.end method
