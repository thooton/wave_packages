.class Lcom/android/music/ArtistAlbumBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$2;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    .line 241
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$2;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 245
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$2;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->-get4(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/android/music/MusicUtils;->clearAlbumArtCache()V

    .line 249
    :cond_0
    return-void
.end method
