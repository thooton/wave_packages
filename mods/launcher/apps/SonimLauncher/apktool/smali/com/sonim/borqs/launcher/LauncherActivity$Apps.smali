.class Lcom/sonim/borqs/launcher/LauncherActivity$Apps;
.super Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Apps"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mPackageAndClassName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;-><init>()V

    .line 291
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageAndClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->mPackageAndClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->mIntent:Landroid/content/Intent;

    .line 295
    return-void
.end method

.method public setPackageAndClassName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->mPackageAndClassName:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->mPackageName:Ljava/lang/String;

    .line 287
    return-void
.end method
