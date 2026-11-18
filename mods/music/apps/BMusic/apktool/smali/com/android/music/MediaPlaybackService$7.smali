.class Lcom/android/music/MediaPlaybackService$7;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 3015
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3020
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 3021
    const-string/jumbo v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3022
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 3023
    :goto_0
    if-nez v0, :cond_0

    .line 3024
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 3035
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 3022
    goto :goto_0

    .line 3026
    :cond_2
    const-string/jumbo v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3028
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    .line 3027
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    .line 3030
    const/16 v1, 0x418

    if-eq v0, v1, :cond_3

    .line 3031
    const/16 v1, 0x404

    if-ne v0, v1, :cond_0

    .line 3032
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$7;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto :goto_1
.end method
