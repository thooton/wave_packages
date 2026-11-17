.class public Lcom/sonim/borqs/launcher/ApplicationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ApplicationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;,
        Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;,
        Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppsListForNavigation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFilter:Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;

.field private mOriginalValues:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0(Lcom/sonim/borqs/launcher/ApplicationAdapter;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mOriginalValues:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonim/borqs/launcher/ApplicationAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mAppsListForNavigation:Ljava/util/List;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mOriginalValues:Ljava/util/LinkedHashMap;

    .line 54
    iput-object p1, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mAppsListForNavigation:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->loadOriginalValues()V

    .line 58
    return-void
.end method

.method private getAppInfo(Ljava/lang/String;)Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-static {p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->isQuickProfileSwitchPkgAndClassName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getQuickProfileSwitch(Landroid/content/Context;Z)Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;-><init>(Lcom/sonim/borqs/launcher/ApplicationAdapter;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    .line 151
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 153
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 154
    iget-object v2, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 153
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    new-instance v2, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;

    iget-object v3, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v2, p0, v0, v1}, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;-><init>(Lcom/sonim/borqs/launcher/ApplicationAdapter;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    return-object v4
.end method

.method private loadOriginalValues()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mAppsListForNavigation:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mOriginalValues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mOriginalValues:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->getAppInfo(Ljava/lang/String;)Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mAppsListForNavigation:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mAppsListForNavigation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mFilter:Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;

    invoke-direct {v0, p0, v1}, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;-><init>(Lcom/sonim/borqs/launcher/ApplicationAdapter;Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mFilter:Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mFilter:Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mAppsListForNavigation:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mAppsListForNavigation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 129
    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 84
    if-nez p2, :cond_2

    .line 85
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mContext:Landroid/content/Context;

    .line 86
    const-string/jumbo v1, "layout_inflater"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 87
    const v1, 0x7f030007

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance v1, Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;-><init>()V

    .line 89
    const v0, 0x7f0e001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;->-set1(Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0e001e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;->-set0(Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mAppsListForNavigation:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mAppsListForNavigation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter;->mOriginalValues:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;

    .line 99
    if-nez v1, :cond_0

    .line 100
    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->getAppInfo(Ljava/lang/String;)Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;

    move-result-object v1

    .line 102
    :cond_0
    invoke-static {v2}, Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;->-get1(Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {v2}, Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;->-get0(Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_1
    return-object p2

    .line 93
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;

    move-object v2, v0

    goto :goto_0
.end method
