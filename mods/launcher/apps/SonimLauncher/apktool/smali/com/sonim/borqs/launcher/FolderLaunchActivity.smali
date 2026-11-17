.class public Lcom/sonim/borqs/launcher/FolderLaunchActivity;
.super Landroid/app/Activity;
.source "FolderLaunchActivity.java"

# interfaces
.implements Lcom/sonim/borqs/launcher/AppListChangeListener;


# instance fields
.field mAccessArrayList:Lcom/sonim/borqs/launcher/AccessArrayList;

.field mAppsInsideFolder:Ljava/util/ArrayList;

.field private mAppsOrFolder:Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

.field private mContext:Landroid/content/Context;

.field private mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

.field private mFolderGrid:Landroid/widget/GridView;

.field private mFolderName:Ljava/lang/String;

.field private mFolderTitle:Landroid/widget/TextView;

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/AccessArrayList;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAccessArrayList:Lcom/sonim/borqs/launcher/AccessArrayList;

    .line 68
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->setContentView(I)V

    .line 69
    const v0, 0x7f0e0015

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    .line 70
    const v0, 0x7f0e0016

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderTitle:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "folder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderName:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAccessArrayList:Lcom/sonim/borqs/launcher/AccessArrayList;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/AccessArrayList;->getAppsInsideFolder()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsInsideFolder:Ljava/util/ArrayList;

    .line 73
    const-string/jumbo v0, "FolderLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAppsInsideFolder, folder name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsInsideFolder:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsInsideFolder:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->finish()V

    .line 79
    return-void

    .line 81
    :cond_0
    const-string/jumbo v0, "FolderLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate of FolderLaunchActivity, folder name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const-string/jumbo v0, "FolderLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in FolderLaunchActivity, onCreate, list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsInsideFolder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/sonim/borqs/launcher/DrawerAdapter;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mContext:Landroid/content/Context;

    .line 86
    iget-object v2, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsInsideFolder:Ljava/util/ArrayList;

    .line 85
    invoke-direct {v0, v1, v2}, Lcom/sonim/borqs/launcher/DrawerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    .line 88
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/sonim/borqs/launcher/FolderDrawerClickListener;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsInsideFolder:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/sonim/borqs/launcher/FolderDrawerClickListener;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAccessArrayList:Lcom/sonim/borqs/launcher/AccessArrayList;

    invoke-virtual {v0, p0}, Lcom/sonim/borqs/launcher/AccessArrayList;->registerForAppListChange(Lcom/sonim/borqs/launcher/AppListChangeListener;)V

    .line 91
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsInsideFolder:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsOrFolder:Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    .line 104
    :cond_0
    const-string/jumbo v0, "FolderLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in FolderLaunchActivity, onCreateOptionsMenu, mAppsOrFolder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsOrFolder:Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsOrFolder:Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    instance-of v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    if-eqz v0, :cond_2

    .line 107
    const-string/jumbo v0, "FolderLaunchActivity"

    const-string/jumbo v1, "onCreateOptionsMenu, item is type of Apps, show app-info menu"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsOrFolder:Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mPkgName:Ljava/lang/String;

    .line 112
    const/4 v0, 0x2

    const v1, 0x7f0b0015

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 118
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsOrFolder:Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    instance-of v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    if-eqz v0, :cond_1

    .line 115
    const-string/jumbo v0, "FolderLaunchActivity"

    const-string/jumbo v1, "in FolderLaunchActivity onCreateOptionsMenu, item is type of Folder, show app-info menu"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAccessArrayList:Lcom/sonim/borqs/launcher/AccessArrayList;

    invoke-virtual {v0, p0}, Lcom/sonim/borqs/launcher/AccessArrayList;->unregisterForAppListChange(Lcom/sonim/borqs/launcher/AppListChangeListener;)V

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 97
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v0

    .line 148
    packed-switch p1, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 151
    :pswitch_0
    if-lez v0, :cond_1

    .line 152
    add-int/lit8 v0, v0, -0x1

    .line 153
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 158
    :cond_1
    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/DrawerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/DrawerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 168
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/DrawerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getNumColumns()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 193
    iget-object v2, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/DrawerAdapter;->getCount()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 192
    double-to-int v2, v2

    .line 194
    mul-int/2addr v2, v1

    .line 198
    sub-int/2addr v0, v1

    .line 201
    if-gez v0, :cond_3

    .line 204
    add-int/2addr v0, v2

    .line 207
    iget-object v2, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/DrawerAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 208
    sub-int/2addr v0, v1

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onListChanged()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAccessArrayList:Lcom/sonim/borqs/launcher/AccessArrayList;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/AccessArrayList;->getAppsInsideFolder()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mAppsInsideFolder:Ljava/util/ArrayList;

    .line 244
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/DrawerAdapter;->notifyDataSetChanged()V

    .line 245
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 131
    :pswitch_0
    const-string/jumbo v0, "FolderLaunchActivity"

    const-string/jumbo v1, "in FolderLaunchActivity, onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    const/4 v0, 0x1

    return v0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->invalidateOptionsMenu()V

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public startActivitySafely(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const v2, 0x7f0b0013

    const/4 v1, 0x0

    .line 219
    if-eqz p1, :cond_0

    .line 221
    const/high16 v0, 0x10200000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, p1}, Lcom/sonim/borqs/launcher/FolderLaunchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 230
    const-string/jumbo v1, "FolderLaunchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 232
    const-string/jumbo v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 233
    const-string/jumbo v3, "or use the exported attribute for this activity. "

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 234
    const-string/jumbo v3, " intent="

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
