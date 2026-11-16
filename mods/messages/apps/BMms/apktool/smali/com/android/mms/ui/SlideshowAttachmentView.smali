.class public Lcom/android/mms/ui/SlideshowAttachmentView;
.super Landroid/widget/LinearLayout;
.source "SlideshowAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0f0160

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0f0161

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public seekAudio(I)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public seekVideo(I)V
    .locals 0

    .prologue
    .line 149
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
    .line 73
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 76
    if-nez p2, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    const v1, 0x7f02008d

    .line 78
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 84
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    :cond_1
    return-void

    .line 80
    :catch_0
    move-exception v0

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
    .line 91
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
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
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
