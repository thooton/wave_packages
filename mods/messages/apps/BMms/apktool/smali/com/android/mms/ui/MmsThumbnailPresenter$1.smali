.class Lcom/android/mms/ui/MmsThumbnailPresenter$1;
.super Ljava/lang/Object;
.source "MmsThumbnailPresenter.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsThumbnailPresenter;
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
.field final synthetic this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsThumbnailPresenter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    if-nez p2, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    invoke-static {v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->-get0(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    invoke-static {v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->-get0(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    invoke-static {v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->-get0(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/mms/util/ItemLoadedFuture;->setIsDone(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    invoke-static {v0, v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->-set0(Lcom/android/mms/ui/MmsThumbnailPresenter;Lcom/android/mms/util/ItemLoadedFuture;)Lcom/android/mms/util/ItemLoadedFuture;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    invoke-static {v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->-get1(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    invoke-static {v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->-get1(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    invoke-static {v0, v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->-set1(Lcom/android/mms/ui/MmsThumbnailPresenter;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedCallback;

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v0, v0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    if-eqz v1, :cond_3

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v0, v0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    .line 104
    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    .line 103
    invoke-interface {v0, v3, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v0, v0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v3, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V

    return-void
.end method
