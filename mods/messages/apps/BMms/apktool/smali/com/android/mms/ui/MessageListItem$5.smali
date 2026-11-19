.class Lcom/android/mms/ui/MessageListItem$5;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Lcom/android/mms/ui/MessageItem$PduLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$mCurrentAttachmentType:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput p2, p0, Lcom/android/mms/ui/MessageListItem$5;->val$mCurrentAttachmentType:I

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPduLoaded(Lcom/android/mms/ui/MessageItem;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 841
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    .line 845
    iget v0, p0, Lcom/android/mms/ui/MessageListItem$5;->val$mCurrentAttachmentType:I

    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 844
    :goto_0
    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageListItem;->-wrap0(Lcom/android/mms/ui/MessageListItem;Z)V

    .line 847
    :cond_0
    return-void

    .line 845
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
