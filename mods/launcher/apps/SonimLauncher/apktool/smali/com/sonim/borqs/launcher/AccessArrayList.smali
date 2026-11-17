.class public Lcom/sonim/borqs/launcher/AccessArrayList;
.super Landroid/app/Application;
.source "AccessArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;
    }
.end annotation


# instance fields
.field private mAppListChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonim/borqs/launcher/AppListChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsAndFolderListForShorcut:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;",
            ">;"
        }
    .end annotation
.end field

.field mAppsInsideFolder:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppListChangeListeners:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method private getAppNameComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/sonim/borqs/launcher/AccessArrayList$1;

    invoke-direct {v1, p0, v0}, Lcom/sonim/borqs/launcher/AccessArrayList$1;-><init>(Lcom/sonim/borqs/launcher/AccessArrayList;Ljava/text/Collator;)V

    return-object v1
.end method


# virtual methods
.method public getApplicationsListForNavigation()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppsAndFolderListForShorcut:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppsAndFolderListForShorcut:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppsAndFolderListForShorcut:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppsAndFolderListForShorcut:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    .line 108
    new-instance v3, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v6, v0}, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;-><init>(Lcom/sonim/borqs/launcher/AccessArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppsAndFolderListForShorcut:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppsAndFolderListForShorcut:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->getAppListInsideFolder()Ljava/util/ArrayList;

    move-result-object v6

    .line 116
    if-eqz v6, :cond_0

    move v3, v2

    .line 117
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 118
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    .line 119
    new-instance v7, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, p0, v8, v0}, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;-><init>(Lcom/sonim/borqs/launcher/AccessArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/AccessArrayList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getQuickProfileSwitch(Landroid/content/Context;)Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;-><init>(Lcom/sonim/borqs/launcher/AccessArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/AccessArrayList;->getAppNameComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;

    .line 130
    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;->getPkgAndClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 133
    :cond_3
    const-string/jumbo v0, "LauncherActivity.AccessArrayList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Shortcut application list size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-object v4
.end method

.method public getAppsInsideFolder()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppsInsideFolder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyAppListChanged()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppListChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppListChangeListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/AppListChangeListener;

    .line 153
    invoke-interface {v0}, Lcom/sonim/borqs/launcher/AppListChangeListener;->onListChanged()V

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public registerForAppListChange(Lcom/sonim/borqs/launcher/AppListChangeListener;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppListChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppListChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    return-void
.end method

.method public setAppsAndFolderListForShorcut(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppsAndFolderListForShorcut:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method public setAppsInsideFolder(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppsInsideFolder:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public unregisterForAppListChange(Lcom/sonim/borqs/launcher/AppListChangeListener;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppListChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList;->mAppListChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    return-void
.end method
