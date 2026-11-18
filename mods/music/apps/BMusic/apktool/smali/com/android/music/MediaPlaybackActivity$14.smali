.class Lcom/android/music/MediaPlaybackActivity$14;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-set6(Lcom/android/music/MediaPlaybackActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 1288
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-wrap10(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1292
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get13(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get13(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get13(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-wrap7(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1295
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-wrap8(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1296
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-wrap6(Lcom/android/music/MediaPlaybackActivity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    return-void

    .line 1299
    :catch_0
    move-exception v0

    .line 1304
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1305
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const v1, 0x7f070076

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-wrap9(Lcom/android/music/MediaPlaybackActivity;I)V

    .line 1306
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1307
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1310
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 1311
    const-class v2, Lcom/android/music/MusicBrowserActivity;

    .line 1310
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1312
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 1314
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    .line 1315
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$14;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-set6(Lcom/android/music/MediaPlaybackActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 1319
    return-void
.end method
