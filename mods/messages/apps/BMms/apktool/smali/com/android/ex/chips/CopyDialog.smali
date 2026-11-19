.class public Lcom/android/ex/chips/CopyDialog;
.super Landroid/app/DialogFragment;
.source "CopyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/ex/chips/CopyDialog;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/android/ex/chips/CopyDialog;

    invoke-direct {v0}, Lcom/android/ex/chips/CopyDialog;-><init>()V

    .line 25
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 26
    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/ex/chips/CopyDialog;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 45
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/ex/chips/CopyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Landroid/content/ClipboardManager;

    .line 48
    iget-object v1, p0, Lcom/android/ex/chips/CopyDialog;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 50
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/ex/chips/CopyDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/CopyDialog;->mText:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/ex/chips/CopyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    iget-object v1, p0, Lcom/android/ex/chips/CopyDialog;->mText:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 38
    sget v1, Lcom/android/ex/chips/R$string;->chips_action_copy:I

    .line 36
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 39
    sget v1, Lcom/android/ex/chips/R$string;->chips_action_cancel:I

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
