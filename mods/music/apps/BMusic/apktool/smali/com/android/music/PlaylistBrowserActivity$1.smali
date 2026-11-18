.class Lcom/android/music/PlaylistBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    .line 261
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 265
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 266
    return-void
.end method
