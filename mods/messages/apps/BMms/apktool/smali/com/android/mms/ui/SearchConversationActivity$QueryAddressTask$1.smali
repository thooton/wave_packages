.class Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;
.super Ljava/lang/Thread;
.source "SearchConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->handleQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;->this$1:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    .line 287
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;->this$1:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    invoke-static {v0}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->-get0(Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;->this$1:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->-set0(Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;I)I

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;->this$1:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    iget-object v0, v0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;->this$1:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    invoke-static {v1}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->-get1(Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getAddressByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;->this$1:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->-set0(Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;I)I

    .line 297
    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;->this$1:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    invoke-static {v1}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->-get0(Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;->this$1:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    iget-object v1, v1, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SearchConversationActivity;->-get2(Lcom/android/mms/ui/SearchConversationActivity;)Lcom/android/mms/ui/SearchConversationActivity$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 299
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;->this$1:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    iget-object v0, v0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SearchConversationActivity;->-get2(Lcom/android/mms/ui/SearchConversationActivity;)Lcom/android/mms/ui/SearchConversationActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string/jumbo v0, "SearchConversationActivity"

    const-string/jumbo v1, "handleQuery cancelled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
