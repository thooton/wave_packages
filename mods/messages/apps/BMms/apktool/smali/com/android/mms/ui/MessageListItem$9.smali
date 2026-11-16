.class Lcom/android/mms/ui/MessageListItem$9;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->initPlayAudioView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$audioPlayColor:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput p2, p0, Lcom/android/mms/ui/MessageListItem$9;->val$audioPlayColor:I

    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get5(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->-get8(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;->setUpdateCallback(Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;)V

    .line 1363
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get5(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1364
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    .line 1363
    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getPath(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v1

    .line 1364
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->-get7(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/MessageListItem$9;->val$audioPlayColor:I

    .line 1363
    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;->prepare(Ljava/lang/String;Landroid/widget/ImageView;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    :goto_0
    return-void

    .line 1365
    :catch_0
    move-exception v0

    .line 1366
    const-string/jumbo v1, "Mms"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
