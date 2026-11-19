.class Lcom/sonim/borqs/launcher/FlashlightController$1;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/FlashlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/FlashlightController;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/FlashlightController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/FlashlightController$1;->this$0:Lcom/sonim/borqs/launcher/FlashlightController;

    .line 201
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    .line 1
    return-void
.end method

.method private setCameraAvailable(Z)V
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FlashlightController$1;->this$0:Lcom/sonim/borqs/launcher/FlashlightController;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController$1;->this$0:Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/FlashlightController;->-get3(Lcom/sonim/borqs/launcher/FlashlightController;)Z

    move-result v0

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/sonim/borqs/launcher/FlashlightController$1;->this$0:Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-static {v2, p1}, Lcom/sonim/borqs/launcher/FlashlightController;->-set1(Lcom/sonim/borqs/launcher/FlashlightController;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 224
    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Lcom/sonim/borqs/launcher/FlashlightController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FlashlightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchAvailabilityChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController$1;->this$0:Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-static {v0, p1}, Lcom/sonim/borqs/launcher/FlashlightController;->-wrap0(Lcom/sonim/borqs/launcher/FlashlightController;Z)V

    .line 228
    :cond_1
    return-void

    .line 221
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setTorchMode(Z)V
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FlashlightController$1;->this$0:Lcom/sonim/borqs/launcher/FlashlightController;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController$1;->this$0:Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/FlashlightController;->-get2(Lcom/sonim/borqs/launcher/FlashlightController;)Z

    move-result v0

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/sonim/borqs/launcher/FlashlightController$1;->this$0:Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-static {v2, p1}, Lcom/sonim/borqs/launcher/FlashlightController;->-set0(Lcom/sonim/borqs/launcher/FlashlightController;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 236
    if-eqz v0, :cond_1

    .line 237
    invoke-static {}, Lcom/sonim/borqs/launcher/FlashlightController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FlashlightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchModeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController$1;->this$0:Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-static {v0, p1}, Lcom/sonim/borqs/launcher/FlashlightController;->-wrap1(Lcom/sonim/borqs/launcher/FlashlightController;Z)V

    .line 240
    :cond_1
    return-void

    .line 233
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController$1;->this$0:Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/FlashlightController;->-get1(Lcom/sonim/borqs/launcher/FlashlightController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/FlashlightController$1;->setCameraAvailable(Z)V

    .line 214
    invoke-direct {p0, p2}, Lcom/sonim/borqs/launcher/FlashlightController$1;->setTorchMode(Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController$1;->this$0:Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/FlashlightController;->-get1(Lcom/sonim/borqs/launcher/FlashlightController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/FlashlightController$1;->setCameraAvailable(Z)V

    .line 208
    :cond_0
    return-void
.end method
