.class Lcom/android/mms/ui/multipleviews/ImageViewFragment$1;
.super Ljava/lang/Object;
.source "ImageViewFragment.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/multipleviews/ImageViewFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/multipleviews/ImageViewFragment;

.field final synthetic val$attachmentImg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/multipleviews/ImageViewFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/ImageViewFragment;

    iput-object p2, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment$1;->val$attachmentImg:Landroid/widget/ImageView;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 114
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment$1;->val$attachmentImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/ImageViewFragment$1;->val$attachmentImg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    return-void
.end method
