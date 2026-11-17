.class Lcom/sonim/borqs/launcher/LauncherActivity$Folder;
.super Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Folder"
.end annotation


# instance fields
.field private mFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonim/borqs/launcher/LauncherActivity$Apps;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonim/borqs/launcher/LauncherActivity;


# direct methods
.method static synthetic -get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->mFolderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method constructor <init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppListInsideFolder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonim/borqs/launcher/LauncherActivity$Apps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->mFolderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAppListInsideFolder(Lcom/sonim/borqs/launcher/LauncherActivity$Apps;)V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->mFolderList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->mFolderList:Ljava/util/ArrayList;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Folder\'s list : size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method
