.class Lcom/android/music/AudioPreview$1;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    iput-object p1, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get1(Lcom/android/music/AudioPreview;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 307
    return-void

    .line 309
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 330
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-wrap2(Lcom/android/music/AudioPreview;)V

    .line 331
    return-void

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->-set1(Lcom/android/music/AudioPreview;Z)Z

    .line 313
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->-set1(Lcom/android/music/AudioPreview;Z)Z

    .line 320
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_0

    .line 324
    :pswitch_3
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get3(Lcom/android/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->-set1(Lcom/android/music/AudioPreview;Z)Z

    .line 326
    iget-object v0, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-wrap1(Lcom/android/music/AudioPreview;)V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
