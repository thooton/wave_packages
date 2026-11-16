.class public Lcom/android/mms/ui/MiniPreferenceActivity;
.super Landroid/app/Activity;
.source "MiniPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MiniPreferenceActivity$1;
    }
.end annotation


# static fields
.field public static DISABLE_NOTIFICATIONS_INTENT:Ljava/lang/String;


# instance fields
.field private mDialogButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "com.android.mms.intent.action.MESSAGING_APP_NOTIFICATIONS"

    .line 20
    sput-object v0, Lcom/android/mms/ui/MiniPreferenceActivity;->DISABLE_NOTIFICATIONS_INTENT:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Lcom/android/mms/ui/MiniPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MiniPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MiniPreferenceActivity;)V

    .line 53
    iput-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity;->mDialogButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 19
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    return-void

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MiniPreferenceActivity;->setResult(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/mms/ui/MiniPreferenceActivity;->finish()V

    .line 36
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/mms/ui/MiniPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 38
    const v2, 0x7f070288

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 39
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/mms/ui/MiniPreferenceActivity;->mDialogButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0701ac

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/mms/ui/MiniPreferenceActivity;->mDialogButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0701ad

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/android/mms/ui/MiniPreferenceActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MiniPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MiniPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    return-void
.end method
