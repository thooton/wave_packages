.class Lcom/android/mms/ui/ComposeMessageActivity$35;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showMobileDataDisabledDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$subscription:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$35;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$35;->val$subscription:I

    .line 1628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1630
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 1631
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$35;->val$subscription:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$35;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap67(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 1639
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1640
    return-void

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$35;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$35;->val$subscription:I

    invoke-static {v0, v2, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap68(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V

    goto :goto_0

    .line 1637
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$35;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap66(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    goto :goto_0
.end method
