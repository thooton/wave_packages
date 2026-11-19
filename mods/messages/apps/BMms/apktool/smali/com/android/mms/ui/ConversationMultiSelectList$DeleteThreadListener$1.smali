.class Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationMultiSelectList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 437
    const/16 v0, 0x709

    .line 438
    iget-object v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->-get2(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->-get1(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->-get0(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/mms/data/Conversation;->startDeleteAll(Lcom/android/mms/data/Conversation$ConversationQueryHandler;IZ)V

    .line 440
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 445
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->-get1(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->-get0(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;)Z

    move-result v2

    .line 443
    iget-object v3, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->-get2(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v3

    .line 442
    invoke-static {v1, v0, v2, v3}, Lcom/android/mms/data/Conversation;->startDelete(Lcom/android/mms/data/Conversation$ConversationQueryHandler;IZLjava/util/Collection;)V

    goto :goto_0
.end method
