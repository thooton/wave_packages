.class Lcom/android/music/RenameDialogBuilder$1;
.super Ljava/lang/Object;
.source "RenameDialogBuilder.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/RenameDialogBuilder;->show()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/RenameDialogBuilder;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/music/RenameDialogBuilder;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/RenameDialogBuilder$1;->this$0:Lcom/android/music/RenameDialogBuilder;

    iput-object p2, p0, Lcom/android/music/RenameDialogBuilder$1;->val$dialog:Landroid/app/AlertDialog;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder$1;->this$0:Lcom/android/music/RenameDialogBuilder;

    iget-object v1, p0, Lcom/android/music/RenameDialogBuilder$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-static {v0, v1, p1}, Lcom/android/music/RenameDialogBuilder;->-wrap0(Lcom/android/music/RenameDialogBuilder;Landroid/app/AlertDialog;Landroid/text/Editable;)V

    .line 117
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
