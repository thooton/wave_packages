.class Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment$1;
.super Ljava/lang/Object;
.source "SMSCPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$sub:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;ILandroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment$1;->this$1:Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;

    iput p2, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment$1;->val$sub:I

    iput-object p3, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment$1;->val$edit:Landroid/widget/EditText;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment$1;->this$1:Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;

    invoke-static {v0}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;->-get0(Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;)Lcom/android/mms/ui/SMSCPreferenceActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment$1;->val$sub:I

    iget-object v2, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment$1;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->newInstance(Lcom/android/mms/ui/SMSCPreferenceActivity;ILjava/lang/String;)Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment$1;->this$1:Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 335
    const-string/jumbo v2, "dialog"

    .line 334
    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment$1;->this$1:Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;->dismiss()V

    .line 337
    return-void
.end method
