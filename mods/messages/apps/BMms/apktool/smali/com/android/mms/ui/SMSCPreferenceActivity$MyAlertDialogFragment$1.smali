.class Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "SMSCPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;

.field final synthetic val$actualSMSC:Ljava/lang/String;

.field final synthetic val$displayedSMSC:Ljava/lang/String;

.field final synthetic val$sub:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->this$1:Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;

    iput p2, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    iput-object p3, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->val$displayedSMSC:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->val$actualSMSC:Ljava/lang/String;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 263
    invoke-static {}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set SMSC from sub= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    const-string/jumbo v2, " SMSC= "

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->val$displayedSMSC:Ljava/lang/String;

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    const-string/jumbo v1, "slot"

    .line 267
    iget v2, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    iget-object v1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->this$1:Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 269
    const v2, 0x7f09003e

    .line 268
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-static {}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-get1()Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;

    move-result-object v1

    .line 271
    const/4 v2, 0x2

    .line 270
    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 272
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->this$1:Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;

    invoke-static {v0}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->-get0(Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;)Lcom/android/mms/ui/SMSCPreferenceActivity;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    .line 274
    iget-object v3, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->val$displayedSMSC:Ljava/lang/String;

    .line 273
    invoke-static {v0, v2, v3, v1}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-wrap1(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V

    .line 285
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-get1()Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;

    move-result-object v1

    .line 277
    const/4 v2, 0x0

    .line 276
    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 279
    const-string/jumbo v2, "smsc"

    .line 280
    iget-object v3, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->val$actualSMSC:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->this$1:Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;

    invoke-static {v0}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;->-get0(Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment;)Lcom/android/mms/ui/SMSCPreferenceActivity;

    move-result-object v0

    .line 283
    iget v2, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->val$sub:I

    iget-object v3, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$MyAlertDialogFragment$1;->val$actualSMSC:Ljava/lang/String;

    .line 282
    invoke-static {v0, v2, v3, v1}, Lcom/android/mms/ui/MessageUtils;->setSmscForSub(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method
