.class Lcom/android/providers/telephony/TelephonyProvider$1;
.super Ljava/lang/Object;
.source "TelephonyProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/TelephonyProvider;->restoreApnsWithService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/TelephonyProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/TelephonyProvider;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    .line 1792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 1796
    const-string/jumbo v0, "restoreApnsWithService: onServiceConnected"

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iget-object v1, v0, Lcom/android/providers/telephony/TelephonyProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1798
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    invoke-static {p2}, Lcom/android/internal/telephony/IApnSourceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IApnSourceService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/TelephonyProvider;->-set0(Lcom/android/providers/telephony/TelephonyProvider;Lcom/android/internal/telephony/IApnSourceService;)Lcom/android/internal/telephony/IApnSourceService;

    .line 1799
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iget-object v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1801
    return-void

    .line 1797
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 1805
    const-string/jumbo v0, "mIApnSourceService has disconnected unexpectedly"

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    .line 1806
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iget-object v1, v0, Lcom/android/providers/telephony/TelephonyProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1807
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/providers/telephony/TelephonyProvider;->-set0(Lcom/android/providers/telephony/TelephonyProvider;Lcom/android/internal/telephony/IApnSourceService;)Lcom/android/internal/telephony/IApnSourceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1809
    return-void

    .line 1806
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
