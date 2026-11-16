.class Lcom/android/mms/ui/ConversationMultiSelectList$2;
.super Ljava/lang/Object;
.source "ConversationMultiSelectList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationMultiSelectList;->onStart()V
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
    iput-object p1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$2;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 256
    invoke-static {}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$2;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-get2(Lcom/android/mms/ui/ConversationMultiSelectList;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$2;->this$0:Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->-wrap1(Lcom/android/mms/ui/ConversationMultiSelectList;)V

    goto :goto_0
.end method
