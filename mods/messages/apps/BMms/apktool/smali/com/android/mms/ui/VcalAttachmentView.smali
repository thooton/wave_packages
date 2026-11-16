.class public Lcom/android/mms/ui/VcalAttachmentView;
.super Landroid/widget/LinearLayout;
.source "VcalAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f0f0165

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/VcalAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/VcalAttachmentView;->mImageView:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f0f0166

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/VcalAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/VcalAttachmentView;->mTextView:Landroid/widget/TextView;

    .line 58
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public seekAudio(I)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public seekVideo(I)V
    .locals 0

    .prologue
    .line 97
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
    .line 100
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public setVcal(Lcom/android/mms/model/VcalModel;)V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    const-string/jumbo v0, "text/x-vCalendar"

    invoke-virtual {p1}, Lcom/android/mms/model/VcalModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/VcalAttachmentView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/VcalAttachmentView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/model/VcalModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string/jumbo v1, "VcalAttachmentView"

    const-string/jumbo v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
