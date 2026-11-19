.class Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;
.super Ljava/lang/Object;
.source "SlideListItemView.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageLoadedCallback"
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
.field private final mListItem:Lcom/android/mms/ui/SlideListItemView;

.field private mSlidePosition:I


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideListItemView;)V
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/SlideListItemView;

    .line 445
    iget v0, p1, Lcom/android/mms/ui/SlideListItemView;->mPosition:I

    iput v0, p0, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;->mSlidePosition:I

    .line 446
    return-void
.end method


# virtual methods
.method public onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/SlideListItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/SlideListItemView;

    iget v0, v0, Lcom/android/mms/ui/SlideListItemView;->mPosition:I

    iget v1, p0, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;->mSlidePosition:I

    if-ne v0, v1, :cond_0

    .line 456
    iget-boolean v0, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/SlideListItemView;

    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/SlideListItemView;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/SlideListItemView;

    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/SlideListItemView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 452
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;->onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V

    return-void
.end method

.method public reset(Lcom/android/mms/ui/SlideListItemView;)V
    .locals 1

    .prologue
    .line 449
    iget v0, p1, Lcom/android/mms/ui/SlideListItemView;->mPosition:I

    iput v0, p0, Lcom/android/mms/ui/SlideListItemView$ImageLoadedCallback;->mSlidePosition:I

    .line 450
    return-void
.end method
