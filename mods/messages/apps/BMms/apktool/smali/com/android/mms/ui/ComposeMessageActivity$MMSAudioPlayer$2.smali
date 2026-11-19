.class Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->initMediaPlayer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    .line 10902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 10905
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get54(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;->reset()V

    .line 10906
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->-set0(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 10907
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->-get2(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->-get0(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 10908
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->-get1(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->-get2(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10909
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get16(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get55(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10910
    return-void
.end method
