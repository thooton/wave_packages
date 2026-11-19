.class Lcom/android/mms/ui/ConversationList$14;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;

.field final synthetic val$groupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$14;->this$0:Lcom/android/mms/ui/ConversationList;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$14;->val$groupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1058
    :try_start_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getInstance()Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$14;->val$groupChat:Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    invoke-virtual {v1}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->rejoin(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :goto_0
    return-void

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
