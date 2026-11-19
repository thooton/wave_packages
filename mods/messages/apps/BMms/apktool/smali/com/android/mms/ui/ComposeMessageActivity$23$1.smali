.class Lcom/android/mms/ui/ComposeMessageActivity$23$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$23;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$23;

.field final synthetic val$groupId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$23;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$23$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$23;

    iput-wide p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$23$1;->val$groupId:J

    .line 10554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 10558
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$23$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$23;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$23;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get15(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$23$1;->val$groupId:J

    invoke-virtual {v0, v2, v3}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->rejoin(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10562
    :goto_0
    return-void

    .line 10559
    :catch_0
    move-exception v0

    .line 10560
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
