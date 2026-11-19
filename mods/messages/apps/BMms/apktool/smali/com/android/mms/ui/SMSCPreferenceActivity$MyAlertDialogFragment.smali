.class public Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "SMSCPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SMSCPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# instance fields
.field private mActivity:Lcom/android/mms/ui/SMSCPreferenceActivity;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;)Lcom/android/mms/ui/SMSCPreferenceActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/SMSCPreferenceActivity;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/mms/ui/SMSCPreferenceActivity;ILjava/lang/String;)Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;
    .locals 3

    .prologue
    .line 231
    new-instance v0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;-><init>()V

    .line 232
    iput-object p0, v0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/SMSCPreferenceActivity;

    .line 234
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 235
    const-string/jumbo v2, "sub"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string/jumbo v2, "smsc"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 238
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "sub"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 244
    invoke-virtual {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 245
    const-string/jumbo v2, "smsc"

    .line 244
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/SMSCPreferenceActivity;

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SMSCPreferenceActivity;

    iput-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/SMSCPreferenceActivity;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/SMSCPreferenceActivity;

    invoke-static {v0, v2}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-wrap0(Lcom/android/mms/ui/SMSCPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->mActivity:Lcom/android/mms/ui/SMSCPreferenceActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 257
    const v4, 0x1080027

    .line 256
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 258
    const v4, 0x7f0702ae

    .line 256
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 260
    new-instance v4, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;-><init>(Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    const v0, 0x104000a

    .line 256
    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 286
    const/high16 v1, 0x1040000

    .line 256
    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 287
    const/4 v1, 0x1

    .line 256
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
