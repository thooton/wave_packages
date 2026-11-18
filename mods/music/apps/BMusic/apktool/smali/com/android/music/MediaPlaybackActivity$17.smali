.class Lcom/android/music/MediaPlaybackActivity$17;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 1526
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1529
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1530
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get5(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1532
    const-string/jumbo v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1533
    const-string/jumbo v1, "com.android.music.metadatachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1534
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1535
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1536
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->-get14(Lcom/android/music/MediaPlaybackActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1537
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-set2(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-wrap12(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1540
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get12(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-wrap0(Lcom/android/music/MediaPlaybackActivity;Z)J

    move-result-wide v0

    .line 1541
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-wrap3(Lcom/android/music/MediaPlaybackActivity;J)V

    .line 1551
    :cond_1
    :goto_0
    return-void

    .line 1542
    :cond_2
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1545
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get5(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get4(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1547
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get14(Lcom/android/music/MediaPlaybackActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1548
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$17;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0, v2}, Lcom/android/music/MediaPlaybackActivity;->-set2(Lcom/android/music/MediaPlaybackActivity;Z)Z

    goto :goto_0
.end method
