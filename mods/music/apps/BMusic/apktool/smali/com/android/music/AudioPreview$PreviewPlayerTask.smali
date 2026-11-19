.class Lcom/android/music/AudioPreview$PreviewPlayerTask;
.super Landroid/os/AsyncTask;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewPlayerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method public constructor <init>(Lcom/android/music/AudioPreview;Lcom/android/music/AudioPreview$PreviewPlayer;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/music/AudioPreview$PreviewPlayerTask;->this$0:Lcom/android/music/AudioPreview;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 598
    iput-object p2, p0, Lcom/android/music/AudioPreview$PreviewPlayerTask;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 599
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 608
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/music/AudioPreview$PreviewPlayerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 610
    const-string/jumbo v0, "AudioPreview"

    .line 611
    const-string/jumbo v1, " PreviewPlayerTask, doInBackground,releasing MediaPlayer "

    .line 610
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayerTask;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->release()V

    .line 613
    iput-object v2, p0, Lcom/android/music/AudioPreview$PreviewPlayerTask;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 614
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 601
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/music/AudioPreview$PreviewPlayerTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 603
    const-string/jumbo v0, "AudioPreview"

    .line 604
    const-string/jumbo v1, " PreviewPlayerTask, onPostExecute, abondon audio focus "

    .line 603
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/android/music/AudioPreview$PreviewPlayerTask;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get1(Lcom/android/music/AudioPreview;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/AudioPreview$PreviewPlayerTask;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v1}, Lcom/android/music/AudioPreview;->-get0(Lcom/android/music/AudioPreview;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 606
    return-void
.end method
