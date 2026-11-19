.class Lcom/android/music/MusicBrowserActivity$1;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MusicBrowserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v0, p0}, Lcom/android/music/MusicBrowserActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :goto_0
    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x2

    :try_start_1
    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :cond_0
    :goto_1
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_1

    .line 84
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
