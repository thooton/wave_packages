.class Lcom/android/music/MediaPlaybackActivity$1;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


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
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$1;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 259
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    .line 263
    invoke-virtual {v0}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 264
    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 266
    if-nez v1, :cond_0

    .line 267
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/android/music/MediaPlaybackActivity$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$1;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
