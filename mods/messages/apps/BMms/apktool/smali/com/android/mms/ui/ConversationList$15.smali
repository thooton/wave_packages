.class Lcom/android/mms/ui/ConversationList$15;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->initCreateNewMessageButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$15;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$15;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get8(Lcom/android/mms/ui/ConversationList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->-get7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$15;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-wrap6(Lcom/android/mms/ui/ConversationList;)V

    .line 1111
    :goto_0
    return-void

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$15;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    goto :goto_0

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$15;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get0(Lcom/android/mms/ui/ConversationList;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1106
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$15;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$15;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1107
    const v2, 0x7f070172

    const/4 v3, 0x0

    .line 1106
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->-set0(Lcom/android/mms/ui/ConversationList;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$15;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get0(Lcom/android/mms/ui/ConversationList;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
