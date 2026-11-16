.class public Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;
.super Landroid/app/IntentService;
.source "TelephonyBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredSmsMmsRestoreService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService$1;
    }
.end annotation


# instance fields
.field private final mFileComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 510
    const-string/jumbo v0, "DeferredSmsMmsRestoreService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 502
    new-instance v0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService$1;-><init>(Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;)V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mFileComparator:Ljava/util/Comparator;

    .line 511
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->setIntentRedelivery(Z)V

    .line 512
    return-void
.end method

.method private static getFilesToRestore(Landroid/content/Context;)[Ljava/io/File;
    .locals 2

    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService$2;

    invoke-direct {v1}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static startIfFilesExist(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 583
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->getFilesToRestore(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    return-void

    .line 587
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 588
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 564
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 565
    new-instance v0, Lcom/android/providers/telephony/TelephonyBackupAgent;

    invoke-direct {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    .line 566
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    invoke-virtual {v0, p0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->attach(Landroid/content/Context;)V

    .line 567
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    invoke-virtual {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->onCreate()V

    .line 569
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 570
    const-string/jumbo v1, "DeferredSmsMmsRestoreService"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 571
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    invoke-virtual {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->onDestroy()V

    .line 577
    iput-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    .line 579
    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 580
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 521
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->-set0(Z)Z

    .line 523
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->getFilesToRestore(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v8

    .line 525
    if-eqz v8, :cond_0

    array-length v0, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    .line 557
    :cond_0
    invoke-static {v7}, Lcom/android/providers/telephony/TelephonyBackupAgent;->-set0(Z)Z

    .line 558
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 526
    return-void

    .line 528
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mFileComparator:Ljava/util/Comparator;

    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 532
    array-length v9, v8

    move v6, v7

    move v5, v7

    :goto_0
    if-ge v6, v9, :cond_7

    aget-object v10, v8, v6

    .line 533
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 537
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 538
    :try_start_3
    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-static {v3, v0, v11}, Lcom/android/providers/telephony/TelephonyBackupAgent;->-wrap0(Lcom/android/providers/telephony/TelephonyBackupAgent;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 545
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_6

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 540
    :catch_0
    move-exception v0

    move v1, v4

    .line 542
    :goto_2
    :try_start_6
    const-string/jumbo v3, "DeferredSmsMmsRestoreService"

    const-string/jumbo v5, "onHandleIntent"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 544
    :try_start_7
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 532
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v1

    goto :goto_0

    .line 545
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v3

    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    :goto_5
    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_3
    :goto_6
    if-eqz v3, :cond_5

    :try_start_a
    throw v3

    .line 540
    :catch_3
    move-exception v0

    move v1, v5

    goto :goto_2

    .line 545
    :catch_4
    move-exception v1

    if-nez v3, :cond_4

    move-object v3, v1

    goto :goto_6

    :cond_4
    if-eq v3, v1, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    .line 543
    :catchall_1
    move-exception v0

    .line 544
    :try_start_b
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 543
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 556
    :catchall_2
    move-exception v0

    .line 557
    invoke-static {v7}, Lcom/android/providers/telephony/TelephonyBackupAgent;->-set0(Z)Z

    .line 558
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 556
    throw v0

    .line 545
    :cond_5
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 544
    :cond_6
    :try_start_d
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move v1, v4

    goto :goto_3

    .line 547
    :cond_7
    if-eqz v5, :cond_8

    .line 553
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/android/providers/telephony/ProviderUtil;->notifyIfNotDefaultSmsApp(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 557
    :cond_8
    invoke-static {v7}, Lcom/android/providers/telephony/TelephonyBackupAgent;->-set0(Z)Z

    .line 558
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 560
    return-void

    .line 545
    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4
.end method
