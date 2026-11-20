.class Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppTrayListChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V
    .locals 0

    .prologue
    .line 3151
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 3154
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launcher : AppTrayListChangedReceiver  --  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get7(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->getAppAndFolderCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-set1(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3156
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3157
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    const-string/jumbo v1, " Getting cursor failed, finishing launcher"

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->finsihOnFatalError(Ljava/lang/String;)V

    .line 3159
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-set7(Lcom/sonim/borqs/launcher/LauncherActivity;Z)Z

    .line 3160
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setAppsAndFolderList()V

    .line 3161
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap4(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    .line 3162
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3163
    return-void
.end method
