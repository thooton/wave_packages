.class Lcom/android/mms/ui/ComposeMessageActivity$14;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsChanged:Z

.field private mTextBefore:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->mIsChanged:Z

    .line 6528
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->mTextBefore:Ljava/lang/String;

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 6572
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 6532
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->mIsChanged:Z

    if-nez v0, :cond_0

    .line 6533
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->mTextBefore:Ljava/lang/String;

    .line 6535
    :cond_0
    return-void

    .line 6533
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6539
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->mIsChanged:Z

    if-eqz v0, :cond_0

    .line 6540
    return-void

    .line 6542
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6543
    if-eq p3, p4, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get31(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MultiAttachmentEditor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MultiAttachmentEditor;->canAddTextForMms(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 6544
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get53(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->mIsChanged:Z

    .line 6546
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get53(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->mTextBefore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6547
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->mIsChanged:Z

    .line 6548
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6549
    const v1, 0x7f070190

    .line 6548
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6551
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get31(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MultiAttachmentEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->mTextBefore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultiAttachmentEditor;->canAddTextForMms(Ljava/lang/CharSequence;)Z

    .line 6552
    return-void

    .line 6559
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onUserInteraction()V

    .line 6561
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 6563
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap85(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6565
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap84(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;III)V

    .line 6567
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap39(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6568
    return-void
.end method
