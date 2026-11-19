.class Lcom/android/mms/ui/ComposeMessageActivity$79;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initMessageList()V
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6894
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 6895
    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 6896
    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v1, :pswitch_data_0

    .line 6915
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Wrong attachment type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6918
    :cond_0
    :goto_0
    return-void

    .line 6898
    :pswitch_0
    check-cast p2, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    goto :goto_0

    .line 6905
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6906
    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 6907
    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v4

    .line 6905
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V

    goto :goto_0

    .line 6910
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6911
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 6912
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v2

    .line 6910
    invoke-static {v1, v0, v3, v2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V

    goto :goto_0

    .line 6896
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
