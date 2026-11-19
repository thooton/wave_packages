.class public Lcom/sonim/borqs/launcher/FlashlightController;
.super Ljava/lang/Object;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/FlashlightController$1;,
        Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private mFlashlightEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTorchAvailable:Z

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/sonim/borqs/launcher/FlashlightController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonim/borqs/launcher/FlashlightController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonim/borqs/launcher/FlashlightController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mFlashlightEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonim/borqs/launcher/FlashlightController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mTorchAvailable:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonim/borqs/launcher/FlashlightController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonim/borqs/launcher/FlashlightController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mTorchAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonim/borqs/launcher/FlashlightController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/FlashlightController;->dispatchAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonim/borqs/launcher/FlashlightController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/FlashlightController;->dispatchModeChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "FlashlightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonim/borqs/launcher/FlashlightController;->DEBUG:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mListeners:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Lcom/sonim/borqs/launcher/FlashlightController$1;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/FlashlightController$1;-><init>(Lcom/sonim/borqs/launcher/FlashlightController;)V

    .line 200
    iput-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 64
    iput-object p1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 67
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/FlashlightController;->tryInitCamera()V

    .line 68
    return-void
.end method

.method private cleanUpListenersLocked(Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 193
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;

    .line 194
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 192
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 198
    :cond_2
    return-void
.end method

.method private dispatchAvailabilityChanged(Z)V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sonim/borqs/launcher/FlashlightController;->dispatchListeners(IZ)V

    .line 165
    return-void
.end method

.method private dispatchError()V
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonim/borqs/launcher/FlashlightController;->dispatchListeners(IZ)V

    .line 161
    return-void
.end method

.method private dispatchListeners(IZ)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 168
    iget-object v4, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v0

    move v1, v0

    .line 171
    :goto_0
    if-ge v3, v5, :cond_3

    .line 172
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;

    .line 173
    if-eqz v0, :cond_2

    .line 174
    if-nez p1, :cond_0

    .line 175
    invoke-interface {v0}, Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;->onFlashlightError()V

    move v0, v1

    .line 171
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 176
    :cond_0
    if-ne p1, v2, :cond_1

    .line 177
    invoke-interface {v0, p2}, Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;->onFlashlightChanged(Z)V

    move v0, v1

    goto :goto_1

    .line 178
    :cond_1
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    .line 179
    invoke-interface {v0, p2}, Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 182
    goto :goto_1

    .line 185
    :cond_3
    if-eqz v1, :cond_4

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/FlashlightController;->cleanUpListenersLocked(Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v4

    .line 189
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private dispatchModeChanged(Z)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sonim/borqs/launcher/FlashlightController;->dispatchListeners(IZ)V

    .line 157
    return-void
.end method

.method private declared-synchronized ensureHandler()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "FlashlightController"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 137
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 139
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 142
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    .line 143
    const/4 v0, 0x0

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 144
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 145
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 146
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 147
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 149
    return-object v5

    .line 143
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 152
    :cond_1
    return-object v7
.end method

.method private tryInitCamera()V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/FlashlightController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/FlashlightController;->ensureHandler()V

    .line 80
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 82
    :cond_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string/jumbo v1, "FlashlightController"

    const-string/jumbo v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;)V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/FlashlightController;->tryInitCamera()V

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/FlashlightController;->cleanUpListenersLocked(Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;)V

    .line 123
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 125
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasFlashlight()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isEnabled()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/FlashlightController;->cleanUpListenersLocked(Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 131
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setFlashlight(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    .line 88
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mFlashlightEnabled:Z

    if-eq v1, p1, :cond_1

    .line 89
    iput-boolean p1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mFlashlightEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 99
    iget-boolean v1, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mFlashlightEnabled:Z

    invoke-direct {p0, v1}, Lcom/sonim/borqs/launcher/FlashlightController;->dispatchModeChanged(Z)V

    .line 100
    if-eqz v0, :cond_2

    .line 101
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/FlashlightController;->dispatchError()V

    .line 103
    :cond_2
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_3
    const-string/jumbo v1, "FlashlightController"

    const-string/jumbo v2, "Couldn\'t set torch mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/FlashlightController;->mFlashlightEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
