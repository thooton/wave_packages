.class Lcom/android/mms/rcs/RcsCreateGroupChatActivity$1;
.super Ljava/lang/Object;
.source "RcsCreateGroupChatActivity.java"

# interfaces
.implements Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver$GroupChatNotifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsCreateGroupChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsCreateGroupChatActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsCreateGroupChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$1;->this$0:Lcom/android/mms/rcs/RcsCreateGroupChatActivity;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBootMe(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public onCreateNotActive(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public onDeparted(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public onDisband(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public onGroupChatCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$1;->this$0:Lcom/android/mms/rcs/RcsCreateGroupChatActivity;

    invoke-static {v0, p1}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->-wrap0(Lcom/android/mms/rcs/RcsCreateGroupChatActivity;Landroid/os/Bundle;)V

    .line 261
    return-void
.end method

.method public onGroupGone(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public onGroupInviteExpired(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public onMemberAliasChange(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onUpdateRemark(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public onUpdateSubject(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method
