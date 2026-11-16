.class Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;
.super Landroid/widget/ImageView;
.source "GifImageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/multipleviews/GifImageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifImageView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;->setFocusable(Z)V

    .line 126
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 127
    return-void
.end method
