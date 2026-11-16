.class Lcom/android/mms/ui/ManageSimMessages$6;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->createProgressDialog()Landroid/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$6;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$6;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->-set2(Lcom/android/mms/ui/ManageSimMessages;Z)Z

    .line 678
    return-void
.end method
