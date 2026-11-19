.class public Lcom/sonim/borqs/launcher/HomeNavigationKeys;
.super Landroid/preference/PreferenceActivity;
.source "HomeNavigationKeys.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    const-string/jumbo v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    const-string/jumbo v1, ":android:show_fragment"

    const-class v2, Lcom/sonim/borqs/launcher/HomeNavigationFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    :cond_0
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method
