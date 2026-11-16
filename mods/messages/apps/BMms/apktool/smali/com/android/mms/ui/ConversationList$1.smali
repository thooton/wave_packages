.class Lcom/android/mms/ui/ConversationList$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver$GroupChatNotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$1;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBootMe(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public onCreateNotActive(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onDeparted(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public onDisband(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public onGroupChatCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$1;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get11(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$1;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get11(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    .line 225
    :cond_0
    return-void
.end method

.method public onGroupGone(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public onGroupInviteExpired(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onMemberAliasChange(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public onUpdateRemark(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onUpdateSubject(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method
