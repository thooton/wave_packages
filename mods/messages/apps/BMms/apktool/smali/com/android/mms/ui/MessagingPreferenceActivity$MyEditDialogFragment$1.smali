.class Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$sub:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;ILandroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    iput p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->val$sub:I

    iput-object p3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->val$edit:Landroid/widget/EditText;

    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->-get0(Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;)Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->val$sub:I

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1333
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->newInstance(Lcom/android/mms/ui/MessagingPreferenceActivity;ILjava/lang/String;)Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

    move-result-object v0

    .line 1335
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->dismiss()V

    .line 1337
    return-void
.end method
