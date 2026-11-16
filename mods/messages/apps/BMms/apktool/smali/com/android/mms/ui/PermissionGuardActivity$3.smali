.class Lcom/android/mms/ui/PermissionGuardActivity$3;
.super Ljava/lang/Object;
.source "PermissionGuardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/PermissionGuardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PermissionGuardActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/PermissionGuardActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/PermissionGuardActivity$3;->this$0:Lcom/android/mms/ui/PermissionGuardActivity;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/PermissionGuardActivity$3;->this$0:Lcom/android/mms/ui/PermissionGuardActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/PermissionGuardActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 97
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 99
    iget-object v1, p0, Lcom/android/mms/ui/PermissionGuardActivity$3;->this$0:Lcom/android/mms/ui/PermissionGuardActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/PermissionGuardActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
