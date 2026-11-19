.class public Lcom/android/music/ScanningProgress;
.super Landroid/app/Activity;
.source "ScanningProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/ScanningProgress$1;
    }
.end annotation


# static fields
.field private static mCount:I


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/music/ScanningProgress;->mCount:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/music/ScanningProgress;->mCount:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/android/music/ScanningProgress;->mCount:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lcom/android/music/ScanningProgress$1;

    invoke-direct {v0, p0}, Lcom/android/music/ScanningProgress$1;-><init>(Lcom/android/music/ScanningProgress;)V

    iput-object v0, p0, Lcom/android/music/ScanningProgress;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/ScanningProgress;->setVolumeControlStream(I)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/ScanningProgress;->requestWindowFeature(I)Z

    .line 80
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/android/music/ScanningProgress;->setContentView(I)V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/ScanningProgress;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/android/music/ScanningProgress;->setResult(I)V

    .line 89
    iget-object v0, p0, Lcom/android/music/ScanningProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/music/ScanningProgress;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 91
    return-void

    .line 83
    :cond_0
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/android/music/ScanningProgress;->setContentView(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/music/ScanningProgress;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 97
    return-void
.end method
