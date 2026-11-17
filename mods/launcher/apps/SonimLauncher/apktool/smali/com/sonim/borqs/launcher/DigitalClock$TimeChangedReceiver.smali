.class Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonim/borqs/launcher/DigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sonim/borqs/launcher/DigitalClock;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    .line 74
    invoke-virtual {p1}, Lcom/sonim/borqs/launcher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 82
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/DigitalClock;

    .line 83
    if-eqz v0, :cond_1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/DigitalClock;->-set0(Lcom/sonim/borqs/launcher/DigitalClock;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    invoke-static {v0}, Lcom/sonim/borqs/launcher/DigitalClock;->-get1(Lcom/sonim/borqs/launcher/DigitalClock;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/DigitalClock;->-wrap0(Lcom/sonim/borqs/launcher/DigitalClock;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-static {v0}, Lcom/sonim/borqs/launcher/DigitalClock;->-get0(Lcom/sonim/borqs/launcher/DigitalClock;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver$1;-><init>(Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;Lcom/sonim/borqs/launcher/DigitalClock;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
