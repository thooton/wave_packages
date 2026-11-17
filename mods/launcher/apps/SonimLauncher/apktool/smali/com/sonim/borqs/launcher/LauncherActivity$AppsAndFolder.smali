.class Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppsAndFolder"
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 254
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;->mName:Ljava/lang/String;

    .line 257
    return-void
.end method
