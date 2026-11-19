.class Lcom/android/mms/ui/ConversationMultiSelectList$3;
.super Ljava/lang/Object;
.source "ConversationMultiSelectList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationMultiSelectList;->onDraftChanged(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

.field final synthetic val$hasDraft:Z

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationMultiSelectList;JZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$3;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    iput-wide p2, p0, Lcom/android/mms/ui/ConversationMultiSelectList$3;->val$threadId:J

    iput-boolean p4, p0, Lcom/android/mms/ui/ConversationMultiSelectList$3;->val$hasDraft:Z

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
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$3;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDraftChanged: threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationMultiSelectList$3;->val$threadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hasDraft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationMultiSelectList$3;->val$hasDraft:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationMultiSelectList;->-wrap0(Lcom/android/mms/ui/ConversationMultiSelectList;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$3;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get4(Lcom/android/mms/ui/ConversationMultiSelectList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    .line 310
    return-void
.end method
