.class Lcom/android/music/AudioPreview$PreviewPlayer;
.super Landroid/media/MediaPlayer;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewPlayer"
.end annotation


# instance fields
.field mActivity:Lcom/android/music/AudioPreview;

.field mIsPrepared:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    .line 557
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/AudioPreview$PreviewPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/AudioPreview$PreviewPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method isPrepared()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    .line 586
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    invoke-virtual {v0, p1}, Lcom/android/music/AudioPreview;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 587
    return-void
.end method

.method public setActivity(Lcom/android/music/AudioPreview;)V
    .locals 1

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    .line 564
    invoke-virtual {p0, p0}, Lcom/android/music/AudioPreview$PreviewPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 565
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 566
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 567
    return-void
.end method

.method public setDataSourceAndPrepare(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/android/music/AudioPreview;

    invoke-virtual {p0, v0, p1}, Lcom/android/music/AudioPreview$PreviewPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/music/AudioPreview$PreviewPlayer;->prepareAsync()V

    .line 574
    return-void
.end method
