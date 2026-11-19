.class Lcom/android/mms/ui/ComposeMessageActivity$12;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 5792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 6

    .prologue
    const v5, 0x7f070248

    const/4 v4, 0x1

    const/4 v0, -0x1

    .line 5796
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get32(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5797
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->-get40(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->-set15(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 5798
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-get40(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 5799
    const-string/jumbo v2, "finish resize all images."

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 5800
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-get32(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 5804
    if-nez p1, :cond_1

    .line 5805
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap43(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    .line 5806
    return-void

    .line 5796
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 5809
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 5810
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 5813
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v2

    .line 5814
    if-nez v2, :cond_2

    .line 5828
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap82(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5829
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap35(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5830
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap43(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    .line 5831
    return-void

    .line 5819
    :cond_2
    :try_start_1
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 5818
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v2

    .line 5820
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$12;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v1

    .line 5821
    const-string/jumbo v3, "Mms"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 5824
    :catch_0
    move-exception v1

    goto :goto_0
.end method
