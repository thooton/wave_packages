.class public Lcom/sonim/borqs/launcher/DrawerClickListener;
.super Ljava/lang/Object;
.source "DrawerClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAppsAndFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/sonim/borqs/launcher/LauncherActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/sonim/borqs/launcher/DrawerClickListener;->mAppsAndFolderList:Ljava/util/ArrayList;

    .line 50
    check-cast p1, Lcom/sonim/borqs/launcher/LauncherActivity;

    iput-object p1, p0, Lcom/sonim/borqs/launcher/DrawerClickListener;->mLauncher:Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 51
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DrawerClickListener;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    .line 58
    instance-of v1, v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    if-eqz v1, :cond_1

    .line 59
    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "DrawerClickListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " launchIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DrawerClickListener;->mLauncher:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v1, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    instance-of v1, v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DrawerClickListener;->mLauncher:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/AccessArrayList;

    move-object v2, v0

    .line 64
    check-cast v2, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->getName()Ljava/lang/String;

    move-result-object v2

    .line 65
    const-string/jumbo v3, "DrawerClickListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " folder name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->getAppListInsideFolder()Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 68
    if-eqz v3, :cond_2

    .line 70
    const-string/jumbo v3, "DrawerClickListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " folder list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v0}, Lcom/sonim/borqs/launcher/AccessArrayList;->setAppsInsideFolder(Ljava/util/ArrayList;)V

    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/DrawerClickListener;->mLauncher:Lcom/sonim/borqs/launcher/LauncherActivity;

    const-class v3, Lcom/sonim/borqs/launcher/FolderLaunchActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string/jumbo v1, "folder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DrawerClickListener;->mLauncher:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v1, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DrawerClickListener;->mLauncher:Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 77
    const v1, 0x7f0b002a

    const/4 v2, 0x0

    .line 76
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
