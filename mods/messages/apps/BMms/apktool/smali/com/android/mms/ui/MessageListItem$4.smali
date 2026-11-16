.class Lcom/android/mms/ui/MessageListItem$4;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Lcom/android/mms/ui/MessageItem$PduLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindNotifInd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPduLoaded(Lcom/android/mms/ui/MessageItem;)V
    .locals 4

    .prologue
    .line 428
    if-eqz p1, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 431
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 428
    if-eqz v0, :cond_1

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-wrap1(Lcom/android/mms/ui/MessageListItem;)V

    .line 435
    :cond_1
    return-void
.end method
