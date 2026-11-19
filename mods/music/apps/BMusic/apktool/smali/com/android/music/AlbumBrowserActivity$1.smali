.class Lcom/android/music/AlbumBrowserActivity$1;
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
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$1;->this$0:Lcom/android/music/AlbumBrowserActivity;

    .line 213
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$1;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 217
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$1;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 218
    return-void
.end method
