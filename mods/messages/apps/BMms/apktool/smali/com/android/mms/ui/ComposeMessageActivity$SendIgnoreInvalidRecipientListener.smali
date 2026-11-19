.class Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendIgnoreInvalidRecipientListener"
.end annotation


# instance fields
.field private mSubscription:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 1

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->mSubscription:I

    .line 1313
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->mSubscription:I

    .line 1314
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1318
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 1319
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get44(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap4(Lcom/android/mms/ui/ComposeMessageActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isMobileDataDisabled(Landroid/content/Context;)Z

    move-result v0

    .line 1319
    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap74(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 1331
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1332
    return-void

    .line 1322
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 1323
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->mSubscription:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap67(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_0

    .line 1326
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->mSubscription:I

    invoke-static {v0, v2, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap68(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V

    goto :goto_0

    .line 1329
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap66(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_0
.end method
