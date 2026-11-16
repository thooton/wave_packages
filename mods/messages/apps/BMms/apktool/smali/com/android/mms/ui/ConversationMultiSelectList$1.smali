.class Lcom/android/mms/ui/ConversationMultiSelectList$1;
.super Ljava/lang/Object;
.source "ConversationMultiSelectList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationMultiSelectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationMultiSelectList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationMultiSelectList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$1;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 456
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeleteObsoleteThreadsRunnable getSavingDraft(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 458
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->getSavingDraft()Z

    move-result v1

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->getSavingDraft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    const-string/jumbo v0, "mDeleteObsoleteThreadsRunnable saving draft, trying again"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$1;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get2(Lcom/android/mms/ui/ConversationMultiSelectList;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$1;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get0(Lcom/android/mms/ui/ConversationMultiSelectList;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    :goto_0
    return-void

    .line 469
    :cond_1
    const-string/jumbo v0, "mDeleteObsoleteThreadsRunnable calling asyncDeleteObsoleteThreads"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$1;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get5(Lcom/android/mms/ui/ConversationMultiSelectList;)Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;

    move-result-object v0

    .line 473
    const/16 v1, 0x70b

    .line 472
    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->asyncDeleteObsoleteThreads(Landroid/content/AsyncQueryHandler;I)V

    goto :goto_0
.end method
