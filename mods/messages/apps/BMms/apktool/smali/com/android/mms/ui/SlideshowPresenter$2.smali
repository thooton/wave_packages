.class Lcom/android/mms/ui/SlideshowPresenter$2;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mms/util/ItemLoadedCallback",
        "<",
        "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 358
    if-nez p2, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowPresenter;->-get0(Lcom/android/mms/ui/SlideshowPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowPresenter;->-get0(Lcom/android/mms/ui/SlideshowPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v1

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowPresenter;->-get0(Lcom/android/mms/ui/SlideshowPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/mms/util/ItemLoadedFuture;->setIsDone(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-static {v0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->-set0(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/util/ItemLoadedFuture;)Lcom/android/mms/util/ItemLoadedFuture;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, v1, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$2;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    .line 369
    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    .line 368
    invoke-interface {v0, v3, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 373
    :cond_1
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 357
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$2;->onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V

    return-void
.end method
