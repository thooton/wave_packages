.class Lcom/android/music/AudioPreview$4;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/AudioPreview$4;->this$0:Lcom/android/music/AudioPreview;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 424
    if-nez p3, :cond_0

    .line 425
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview$4;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/music/AudioPreview$4;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/music/AudioPreview$PreviewPlayer;->seekTo(I)V

    .line 429
    iget-object v0, p0, Lcom/android/music/AudioPreview$4;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-wrap0(Lcom/android/music/AudioPreview;)V

    .line 431
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/music/AudioPreview$4;->this$0:Lcom/android/music/AudioPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->-set3(Lcom/android/music/AudioPreview;Z)Z

    .line 420
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/music/AudioPreview$4;->this$0:Lcom/android/music/AudioPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->-set3(Lcom/android/music/AudioPreview;Z)Z

    .line 435
    return-void
.end method
