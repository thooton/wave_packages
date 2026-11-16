.class Lcom/android/mms/ui/ComposeMessageActivity$34;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->LaunchMsimDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$bCheckEcmMode:Z

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$phoneId:I

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$bCheckEcmMode:Z

    .line 1422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1424
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$phoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LaunchMsimDialog: subscription selected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 1426
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1428
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 1429
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f070372

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1430
    const/4 v2, 0x1

    .line 1428
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1431
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get30(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get30(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$34;->val$bCheckEcmMode:Z

    invoke-static {v1, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap60(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V

    goto :goto_0
.end method
