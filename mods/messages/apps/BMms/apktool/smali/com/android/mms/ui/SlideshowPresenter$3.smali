.class Lcom/android/mms/ui/SlideshowPresenter$3;
.super Landroid/os/Handler;
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

.field final synthetic val$image:Lcom/android/mms/model/ImageModel;

.field final synthetic val$view:Lcom/android/mms/ui/SlideViewInterface;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->val$image:Lcom/android/mms/model/ImageModel;

    .line 285
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    instance-of v0, v0, Lcom/android/mms/ui/SlideListItemView;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideListItemView;

    .line 290
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->val$image:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideListItemView;->setUri(Landroid/net/Uri;)V

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->val$view:Lcom/android/mms/ui/SlideViewInterface;

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->val$image:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 293
    return-void
.end method
