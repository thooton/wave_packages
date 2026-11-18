.class Lcom/android/music/MediaPlaybackActivity$9;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$9;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$9;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get11(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 501
    if-eqz p2, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$9;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get10(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;

    move-result-object v0

    .line 503
    const v1, 0x7f020039

    .line 502
    invoke-virtual {v0, v1}, Lcom/android/music/RepeatingImageButton;->setBackgroundResource(I)V

    .line 508
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$9;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get10(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/RepeatingImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/music/RepeatingImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 506
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$9;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
