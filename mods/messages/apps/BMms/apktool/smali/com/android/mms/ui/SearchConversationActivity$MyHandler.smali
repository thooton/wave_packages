.class Lcom/android/mms/ui/SearchConversationActivity$MyHandler;
.super Landroid/os/Handler;
.source "SearchConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchConversationActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SearchConversationActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SearchConversationActivity;Lcom/android/mms/ui/SearchConversationActivity$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;-><init>(Lcom/android/mms/ui/SearchConversationActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SearchConversationActivity;->-get4(Lcom/android/mms/ui/SearchConversationActivity;)Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SearchConversationActivity;->-get4(Lcom/android/mms/ui/SearchConversationActivity;)Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->preHandleQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_0
    const-string/jumbo v0, "SearchConversationActivity"

    const-string/jumbo v1, "!!error: handleMessage null mQueryTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    new-instance v1, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    iget-object v2, p0, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SearchConversationActivity;->-get3(Lcom/android/mms/ui/SearchConversationActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;-><init>(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/SearchConversationActivity;->-set0(Lcom/android/mms/ui/SearchConversationActivity;Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;)Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SearchConversationActivity;->-get4(Lcom/android/mms/ui/SearchConversationActivity;)Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SearchConversationActivity;->-get3(Lcom/android/mms/ui/SearchConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->requestQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
