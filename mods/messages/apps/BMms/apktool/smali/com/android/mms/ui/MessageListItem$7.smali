.class Lcom/android/mms/ui/MessageListItem$7;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->displayMultiAttachments(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$messageAttachmentView:Lcom/android/mms/ui/multipleviews/MessageAttachmentView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/multipleviews/MessageAttachmentView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$7;->val$messageAttachmentView:Lcom/android/mms/ui/multipleviews/MessageAttachmentView;

    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 1223
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    .line 1224
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$7;->val$messageAttachmentView:Lcom/android/mms/ui/multipleviews/MessageAttachmentView;

    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$7;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 1225
    return-void
.end method
