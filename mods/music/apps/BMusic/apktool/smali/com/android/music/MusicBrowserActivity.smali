.class public Lcom/android/music/MusicBrowserActivity;
.super Landroid/app/Activity;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicBrowserActivity$1;
    }
.end annotation


# instance fields
.field private autoshuffle:Landroid/content/ServiceConnection;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Lcom/android/music/MusicBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/MusicBrowserActivity$1;-><init>(Lcom/android/music/MusicBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->autoshuffle:Landroid/content/ServiceConnection;

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v0, 0x7f0b0017

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/music/MusicBrowserActivity;->finish()V

    .line 44
    return-void

    .line 47
    :cond_0
    const-string/jumbo v1, "activetab"

    .line 46
    invoke-static {p0, v1, v0}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 48
    if-eq v1, v0, :cond_2

    const v2, 0x7f0b0018

    if-eq v1, v2, :cond_2

    .line 49
    const v2, 0x7f0b0019

    if-eq v1, v2, :cond_2

    const v2, 0x7f0b001a

    if-eq v1, v2, :cond_2

    .line 52
    :goto_0
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->activateTab(Landroid/app/Activity;I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/music/MusicBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "autoshuffle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->autoshuffle:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 58
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/music/MusicBrowserActivity;->finish()V

    .line 67
    return-void

    .line 69
    :cond_0
    return-void
.end method
