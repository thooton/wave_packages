.class Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;
.super Ljava/lang/Thread;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseThread"
.end annotation


# instance fields
.field private mUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sonim/borqs/launcher/LauncherActivity;


# direct methods
.method public constructor <init>(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 669
    iput-object p2, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->mUiHandler:Landroid/os/Handler;

    .line 670
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 673
    invoke-static {}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get18()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    const-string/jumbo v2, "ParseThread : Enter  "

    invoke-virtual {v0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->loadXMlIfNeeded()V

    .line 676
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    const-string/jumbo v2, "ParseThread :  is interrupted"

    invoke-virtual {v0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 678
    return-void

    .line 680
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get7(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->getAppAndFolderCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-set1(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 681
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    const-string/jumbo v2, " Getting cursor failed, finishing launcher"

    invoke-virtual {v0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->finsihOnFatalError(Ljava/lang/String;)V

    .line 684
    :cond_1
    const-string/jumbo v0, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate, apps and folder cursor size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 685
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 684
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setAppsAndFolderList()V

    .line 687
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-set8(Lcom/sonim/borqs/launcher/LauncherActivity;Z)Z

    .line 688
    const-string/jumbo v0, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "end app-tray, list count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v2, "end app-tray"

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get3(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f080000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap4(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 695
    return-void

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
