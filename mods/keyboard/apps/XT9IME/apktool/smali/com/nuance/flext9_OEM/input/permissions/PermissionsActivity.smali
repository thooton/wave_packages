.class public final Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;
.super Landroid/app/Activity;
.source "PermissionsActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field public static final EXTRA_PERMISSION_REQUESTED_PERMISSIONS:Ljava/lang/String; = "requested_permissions"

.field public static final EXTRA_PERMISSION_REQUEST_CODE:Ljava/lang/String; = "request_code"

.field private static final INVALID_REQUEST_CODE:I = -0x1


# instance fields
.field private mPendingRequestCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;->mPendingRequestCode:I

    .line 14
    return-void
.end method

.method public static varargs run(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const-string/jumbo v1, "requested_permissions"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string/jumbo v1, "request_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    const-string/jumbo v1, "request_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    :cond_0
    iput v0, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;->mPendingRequestCode:I

    .line 49
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;->mPendingRequestCode:I

    .line 76
    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->get(Landroid/content/Context;)Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 78
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;->finish()V

    .line 79
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    iget v0, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;->mPendingRequestCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "requested_permissions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string/jumbo v2, "request_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;->mPendingRequestCode:I

    .line 68
    iget v0, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;->mPendingRequestCode:I

    invoke-static {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsUtil;->requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 54
    const-string/jumbo v0, "request_code"

    iget v1, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;->mPendingRequestCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    return-void
.end method
