.class Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MMSAudioPlayer"
.end annotation


# instance fields
.field private mColor:I

.field private mPlayPause:Landroid/widget/ImageView;

.field private mPlayPauseDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mColor:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPause:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPauseDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPauseDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->play()V

    return-void
.end method

.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 10835
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method

.method private initMediaPlayer(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 10892
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set11(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 10893
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 10894
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 10895
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 10902
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 10912
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10916
    :goto_0
    return-void

    .line 10913
    :catch_0
    move-exception v0

    .line 10914
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init MediaPlayer error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private play()V
    .locals 2

    .prologue
    .line 10870
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 10871
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get16(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get55(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10872
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 10873
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPauseDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 10874
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPause:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPauseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10875
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 10879
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 10880
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 10881
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPauseDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 10882
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPause:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPauseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10883
    return-void
.end method

.method public prepare(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1

    .prologue
    .line 10846
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mPlayPause:Landroid/widget/ImageView;

    .line 10847
    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->mColor:I

    .line 10848
    if-nez p1, :cond_0

    return-void

    .line 10849
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get12(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10850
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set2(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 10852
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get27(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10853
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get12(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10854
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10855
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->pause()V

    .line 10866
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set2(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 10867
    return-void

    .line 10857
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->play()V

    goto :goto_0

    .line 10860
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->releaseMediaPlayer()V

    .line 10861
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->initMediaPlayer(Ljava/lang/String;)V

    goto :goto_0

    .line 10864
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->initMediaPlayer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseMediaPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10920
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10921
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 10922
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set11(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 10923
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set12(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 10925
    :cond_0
    return-void
.end method

.method public setUpdateCallback(Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;)V
    .locals 1

    .prologue
    .line 10887
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set22(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;)Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;

    .line 10888
    return-void
.end method
