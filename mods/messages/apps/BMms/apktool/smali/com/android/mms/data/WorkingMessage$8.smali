.class Lcom/android/mms/data/WorkingMessage$8;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->sendRcsMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$msgText:Ljava/lang/String;

.field final synthetic val$recipientsInUI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$8;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$8;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$8;->val$msgText:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$8;->val$recipientsInUI:Ljava/lang/String;

    .line 2151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2155
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$8;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$8;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$8;->val$msgText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$8;->val$recipientsInUI:Ljava/lang/String;

    .line 2156
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$8;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->-get2(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v4

    .line 2155
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->-wrap7(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$8;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$8;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->-wrap12(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V

    .line 2162
    return-void

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$8;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->-get0(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v1

    .line 2159
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$8;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getRcsType()I

    move-result v2

    .line 2158
    invoke-static {v1, v0, v2}, Lcom/android/mms/rcs/RcsUtils;->disposeRcsSendMessageException(Landroid/content/Context;Ljava/lang/Exception;I)V

    goto :goto_0
.end method
