.class public Lcom/android/mms/ui/VideoAttachmentView;
.super Landroid/widget/LinearLayout;
.source "VideoAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mThumbnailView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 113
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 114
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 119
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0

    .line 115
    :catch_1
    move-exception v2

    .line 119
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 120
    :catch_2
    move-exception v1

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    .line 119
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 117
    :goto_1
    throw v0

    .line 120
    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0f0168

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/VideoAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/VideoAttachmentView;->mThumbnailView:Landroid/widget/ImageView;

    .line 58
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public seekAudio(I)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public seekVideo(I)V
    .locals 0

    .prologue
    .line 165
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
    .line 70
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public setVcal(Lcom/android/mms/model/VcalModel;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/VideoAttachmentView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    const v1, 0x7f02008f

    .line 96
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/VideoAttachmentView;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "setVideo: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/VideoAttachmentView;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
