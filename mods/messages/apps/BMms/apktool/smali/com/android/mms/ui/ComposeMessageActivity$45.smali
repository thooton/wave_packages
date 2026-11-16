.class Lcom/android/mms/ui/ComposeMessageActivity$45;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onResume()V
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 3596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3599
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap10(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3600
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get36(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3601
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3603
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3604
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    .line 3605
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get15(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getGroupChatById(J)Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v1

    .line 3606
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/mms/data/Conversation;->setGroupChat(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3614
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap90(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 3615
    return-void

    .line 3600
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$45;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap14(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    goto :goto_0

    .line 3610
    :catch_0
    move-exception v1

    .line 3611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 3608
    :catch_1
    move-exception v1

    .line 3609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception onResume()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
