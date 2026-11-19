.class Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdatedApp"
.end annotation


# instance fields
.field private app:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

.field private position:I

.field final synthetic this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

.field private updateFound:Z


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V
    .locals 1

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->updateFound:Z

    .line 365
    return-void
.end method


# virtual methods
.method public getApp()Lcom/sonim/borqs/launcher/LauncherActivity$Apps;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->app:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->position:I

    return v0
.end method

.method public isUpdateFound()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->updateFound:Z

    return v0
.end method

.method public setApp(Lcom/sonim/borqs/launcher/LauncherActivity$Apps;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->app:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    .line 375
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 386
    iput p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->position:I

    .line 387
    return-void
.end method

.method public setUpdateFound(Z)V
    .locals 0

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->updateFound:Z

    .line 381
    return-void
.end method
