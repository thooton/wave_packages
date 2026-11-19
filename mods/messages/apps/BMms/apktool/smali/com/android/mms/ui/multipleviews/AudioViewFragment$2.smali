.class Lcom/android/mms/ui/multipleviews/AudioViewFragment$2;
.super Ljava/lang/Object;
.source "AudioViewFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/multipleviews/AudioViewFragment;->initializeMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$2;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$2;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-wrap0(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)V

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$2;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isPlayAllMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$2;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    iget-object v0, v0, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->iAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    invoke-interface {v0}, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;->onPlayNextSlide()V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$2;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method
