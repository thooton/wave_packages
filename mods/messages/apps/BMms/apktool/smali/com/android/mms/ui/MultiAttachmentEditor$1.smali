.class Lcom/android/mms/ui/MultiAttachmentEditor$1;
.super Ljava/lang/Object;
.source "MultiAttachmentEditor.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiAttachmentEditor;->displayMultiAttachments(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiAttachmentEditor;

.field final synthetic val$messageAttachmentView:Lcom/android/mms/ui/multipleviews/MessageAttachmentView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiAttachmentEditor;Lcom/android/mms/ui/multipleviews/MessageAttachmentView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MultiAttachmentEditor$1;->this$0:Lcom/android/mms/ui/MultiAttachmentEditor;

    iput-object p2, p0, Lcom/android/mms/ui/MultiAttachmentEditor$1;->val$messageAttachmentView:Lcom/android/mms/ui/multipleviews/MessageAttachmentView;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 200
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    .line 201
    iget-object v0, p0, Lcom/android/mms/ui/MultiAttachmentEditor$1;->val$messageAttachmentView:Lcom/android/mms/ui/multipleviews/MessageAttachmentView;

    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/multipleviews/MessageAttachmentView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 203
    return-void
.end method
