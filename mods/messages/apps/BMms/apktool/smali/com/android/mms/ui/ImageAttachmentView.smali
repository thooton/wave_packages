.class public Lcom/android/mms/ui/ImageAttachmentView;
.super Landroid/widget/LinearLayout;
.source "ImageAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    const v0, 0x7f0f00b5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ImageAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageView:Landroid/widget/ImageView;

    # FEAT(imessage): preserve aspect ratio in compose photo preview instead of stock fitXY squash.
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void
.end method

.method public seekAudio(I)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public seekVideo(I)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 73
    if-nez p2, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ImageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    const v1, 0x7f02008d

    .line 74
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public setVcal(Lcom/android/mms/model/VcalModel;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
