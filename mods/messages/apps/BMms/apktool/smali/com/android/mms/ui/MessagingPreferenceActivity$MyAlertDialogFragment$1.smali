.class Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

.field final synthetic val$actualSMSC:Ljava/lang/String;

.field final synthetic val$displayedSMSC:Ljava/lang/String;

.field final synthetic val$sub:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

    iput p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    iput-object p3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$displayedSMSC:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$actualSMSC:Ljava/lang/String;

    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1389
    const-string/jumbo v0, "MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set SMSC from sub= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " SMSC= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$displayedSMSC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1391
    const-string/jumbo v1, "slot"

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1392
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1393
    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-get1()Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;

    move-result-object v1

    .line 1394
    const/4 v2, 0x2

    .line 1393
    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1395
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1396
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->-get0(Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;)Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$displayedSMSC:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-wrap3(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V

    .line 1403
    :goto_0
    return-void

    .line 1398
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-get1()Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1399
    const-string/jumbo v2, "smsc"

    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$actualSMSC:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1401
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;->-get0(Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;)Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment$1;->val$actualSMSC:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/android/mms/ui/MessageUtils;->setSmscForSub(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method
