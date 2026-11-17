.class public Lcom/sonim/borqs/launcher/HomeThemes;
.super Landroid/app/ListActivity;
.source "HomeThemes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;
    }
.end annotation


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mThemeAdapter:Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;


# direct methods
.method static synthetic -get0(Lcom/sonim/borqs/launcher/HomeThemes;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeThemes;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonim/borqs/launcher/HomeThemes;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/HomeThemes;->getPkgIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private getPkgIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeThemes;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string/jumbo v1, "HomeThemes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeThemes;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 54
    const-string/jumbo v0, "com.sonim.borqs.launcher.prefs"

    .line 55
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/sonim/borqs/launcher/HomeThemes;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/HomeThemes;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 56
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeThemes;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/HomeThemes;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    new-instance v0, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;-><init>(Lcom/sonim/borqs/launcher/HomeThemes;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/HomeThemes;->mThemeAdapter:Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;

    .line 59
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeThemes;->mThemeAdapter:Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/HomeThemes;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 64
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 65
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeThemes;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    const-string/jumbo v1, "previous_theme"

    .line 67
    iget-object v2, p0, Lcom/sonim/borqs/launcher/HomeThemes;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "current_theme"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 66
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    const-string/jumbo v1, "current_theme"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeThemes;->finish()V

    .line 71
    return-void
.end method
