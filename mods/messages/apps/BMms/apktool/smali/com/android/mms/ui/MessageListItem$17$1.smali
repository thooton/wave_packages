.class Lcom/android/mms/ui/MessageListItem$17$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$17;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$17;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$17;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$17$1;->this$1:Lcom/android/mms/ui/MessageListItem$17;

    .line 2027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 2031
    :try_start_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v0

    .line 2032
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$17$1;->this$1:Lcom/android/mms/ui/MessageListItem$17;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$17;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    .line 2031
    invoke-virtual {v0, v2, v3}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->deleteMessage(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2037
    :goto_0
    return-void

    .line 2033
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2035
    :catch_1
    move-exception v0

    goto :goto_0
.end method
