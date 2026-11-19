.class public Lcom/android/mms/ui/VcardAttachmentView;
.super Landroid/widget/LinearLayout;
.source "VcardAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f0f00ee

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/VcardAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/VcardAttachmentView;->mNameView:Landroid/widget/TextView;

    .line 65
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 84
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
    .line 124
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
    .line 128
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 92
    return-void
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
    .line 96
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public setVcal(Lcom/android/mms/model/VcalModel;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/VcardAttachmentView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
