.class Lcom/android/mms/ui/SlideshowPresenter$4;
.super Ljava/lang/Thread;
.source "SlideshowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;

.field final synthetic val$bitmapHandler:Landroid/os/Handler;

.field final synthetic val$image:Lcom/android/mms/model/ImageModel;

.field final synthetic val$normalSlideH:I

.field final synthetic val$normalSlideW:I

.field final synthetic val$transformedHeight:I

.field final synthetic val$transformedWidth:I

.field final synthetic val$view:Lcom/android/mms/ui/SlideViewInterface;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;IIIILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$image:Lcom/android/mms/model/ImageModel;

    iput p4, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$normalSlideW:I

    iput p5, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$normalSlideH:I

    iput p6, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$transformedWidth:I

    iput p7, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$transformedHeight:I

    iput-object p8, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$bitmapHandler:Landroid/os/Handler;

    .line 295
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    instance-of v0, v0, Lcom/android/mms/ui/SlideListItemView;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$image:Lcom/android/mms/model/ImageModel;

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$normalSlideW:I

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$normalSlideH:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/ImageModel;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$bitmapHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$bitmapHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$image:Lcom/android/mms/model/ImageModel;

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$transformedWidth:I

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter$4;->val$transformedHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/ImageModel;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
