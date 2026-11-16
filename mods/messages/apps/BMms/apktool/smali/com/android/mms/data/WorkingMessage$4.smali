.class Lcom/android/mms/data/WorkingMessage$4;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$isStopping:Z

.field final synthetic val$preOpenedFiles:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Ljava/util/HashMap;Lcom/android/mms/data/Conversation;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$4;->val$preOpenedFiles:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    iput-boolean p4, p0, Lcom/android/mms/data/WorkingMessage$4;->val$isStopping:Z

    .line 1846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1850
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1852
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->-get0(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1853
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->-get5(Lcom/android/mms/data/WorkingMessage;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/data/WorkingMessage;->-wrap3(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 1855
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->-get3(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1856
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->-get4(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 1857
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->-get0(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$4;->val$preOpenedFiles:Ljava/util/HashMap;

    .line 1856
    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->-wrap0(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;Ljava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/mms/data/WorkingMessage;->-set2(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1862
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    iget-boolean v2, p0, Lcom/android/mms/data/WorkingMessage$4;->val$isStopping:Z

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->-wrap6(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Z)V

    .line 1863
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1864
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "asyncUpdateDraftMmsMessage conv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1866
    const-string/jumbo v1, " uri: "

    .line 1865
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1866
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->-get3(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v1

    .line 1865
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$4;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1873
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1874
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$4;->val$preOpenedFiles:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->-wrap5(Ljava/util/HashMap;)V

    .line 1876
    return-void

    .line 1859
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->-get3(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$4;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->-get4(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 1860
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$4;->val$preOpenedFiles:Ljava/util/HashMap;

    .line 1859
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/mms/data/WorkingMessage;->-wrap10(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1872
    :catchall_0
    move-exception v0

    .line 1873
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1874
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$4;->val$preOpenedFiles:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->-wrap5(Ljava/util/HashMap;)V

    .line 1872
    throw v0
.end method
