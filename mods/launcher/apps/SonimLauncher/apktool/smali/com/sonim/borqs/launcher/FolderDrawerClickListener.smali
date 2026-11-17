.class public Lcom/sonim/borqs/launcher/FolderDrawerClickListener;
.super Ljava/lang/Object;
.source "FolderDrawerClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAppsInsideFolder:Ljava/util/ArrayList;

.field private mFolderActivity:Lcom/sonim/borqs/launcher/FolderLaunchActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    check-cast p1, Lcom/sonim/borqs/launcher/FolderLaunchActivity;

    iput-object p1, p0, Lcom/sonim/borqs/launcher/FolderDrawerClickListener;->mFolderActivity:Lcom/sonim/borqs/launcher/FolderLaunchActivity;

    .line 47
    iput-object p2, p0, Lcom/sonim/borqs/launcher/FolderDrawerClickListener;->mAppsInsideFolder:Ljava/util/ArrayList;

    .line 49
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
    const/4 v5, 0x0

    .line 53
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderDrawerClickListener;->mAppsInsideFolder:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 54
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderDrawerClickListener;->mAppsInsideFolder:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string/jumbo v2, "LauncherActivity.FolderDrawerClickListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/sonim/borqs/launcher/FolderDrawerClickListener;->mFolderActivity:Lcom/sonim/borqs/launcher/FolderLaunchActivity;

    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 58
    const-string/jumbo v3, "airplane_mode_on"

    .line 56
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 59
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 60
    const-string/jumbo v2, "com.android.stk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderDrawerClickListener;->mFolderActivity:Lcom/sonim/borqs/launcher/FolderLaunchActivity;

    const v1, 0x7f0b001a

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderDrawerClickListener;->mFolderActivity:Lcom/sonim/borqs/launcher/FolderLaunchActivity;

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0
.end method
