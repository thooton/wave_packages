.class public Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;
.super Landroid/app/DialogFragment;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyEditDialogFragment"
.end annotation


# instance fields
.field private mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;)Lcom/android/mms/ui/MessagingPreferenceActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1301
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;
    .locals 3

    .prologue
    .line 1306
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    invoke-direct {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;-><init>()V

    .line 1307
    iput-object p0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 1309
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1310
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1311
    const-string/jumbo v2, "smsc"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1312
    const-string/jumbo v2, "sub"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1313
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1314
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0xf

    .line 1319
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "sub"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1320
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    if-nez v0, :cond_0

    .line 1321
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessagingPreferenceActivity;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 1322
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->dismiss()V

    .line 1324
    :cond_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1325
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1326
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "smsc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->mActivity:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1329
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1328
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1331
    new-instance v3, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;ILandroid/widget/EditText;)V

    const v0, 0x104000a

    .line 1328
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1339
    const/high16 v1, 0x1040000

    .line 1328
    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1340
    const/4 v1, 0x1

    .line 1328
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1343
    const/4 v2, 0x5

    .line 1342
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1344
    return-object v0
.end method
