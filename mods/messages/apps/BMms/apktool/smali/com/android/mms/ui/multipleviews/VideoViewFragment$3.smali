.class Lcom/android/mms/ui/multipleviews/VideoViewFragment$3;
.super Ljava/lang/Object;
.source "VideoViewFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/multipleviews/VideoViewFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$3;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$3;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get2(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$3;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get5(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$3;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->isPlayAllMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$3;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    iget-object v0, v0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->iAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    invoke-interface {v0}, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;->onPlayNextSlide()V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$3;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$3;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-static {v0, v1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-wrap0(Lcom/android/mms/ui/multipleviews/VideoViewFragment;Z)V

    goto :goto_0
.end method
