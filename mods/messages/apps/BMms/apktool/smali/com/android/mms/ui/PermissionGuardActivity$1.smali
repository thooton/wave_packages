.class Lcom/android/mms/ui/PermissionGuardActivity$1;
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
    iput-object p1, p0, Lcom/android/mms/ui/PermissionGuardActivity$1;->this$0:Lcom/android/mms/ui/PermissionGuardActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity$1;->this$0:Lcom/android/mms/ui/PermissionGuardActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/PermissionGuardActivity;->finish()V

    .line 84
    return-void
.end method
