.class Lcom/android/mms/ui/ComposeMessageActivity$58;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->processPickResult(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$keySet:Ljava/util/Set;

.field final synthetic val$numberBundle:Landroid/os/Bundle;

.field final synthetic val$numberKeySet:Ljava/util/Set;

.field final synthetic val$numberRecipientCount:I

.field final synthetic val$recipientLimit:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;IILandroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$recipientLimit:I

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$numberRecipientCount:I

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$numberBundle:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$numberKeySet:Ljava/util/Set;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$keySet:Ljava/util/Set;

    .line 5662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 5668
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$recipientLimit:I

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get14(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 5669
    if-gtz v0, :cond_0

    .line 5670
    return-void

    .line 5672
    :cond_0
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$numberRecipientCount:I

    if-lt v0, v1, :cond_1

    .line 5673
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$numberBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$numberKeySet:Ljava/util/Set;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$numberRecipientCount:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap53(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;Ljava/util/Set;I)V

    .line 5674
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$numberRecipientCount:I

    sub-int/2addr v0, v1

    .line 5675
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$keySet:Ljava/util/Set;

    invoke-static {v1, v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap59(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/Set;I)V

    .line 5679
    :goto_0
    return-void

    .line 5677
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$numberBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->val$numberKeySet:Ljava/util/Set;

    invoke-static {v1, v2, v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap53(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;Ljava/util/Set;I)V

    goto :goto_0
.end method
