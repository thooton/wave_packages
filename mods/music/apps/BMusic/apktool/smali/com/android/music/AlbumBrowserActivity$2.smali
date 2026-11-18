.class Lcom/android/music/AlbumBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/AlbumBrowserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    .line 220
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 224
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$2;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/android/music/AlbumBrowserActivity;->-get4(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/android/music/MusicUtils;->clearAlbumArtCache()V

    .line 228
    :cond_0
    return-void
.end method
