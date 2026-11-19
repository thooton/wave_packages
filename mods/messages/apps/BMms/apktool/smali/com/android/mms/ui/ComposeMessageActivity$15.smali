.class Lcom/android/mms/ui/ComposeMessageActivity$15;
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
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6616
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->-get0()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 6617
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6618
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6619
    const v2, 0x7f0701a7

    .line 6618
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6620
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->-get0()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 6621
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6623
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 6624
    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 6626
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 6599
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 6603
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->-get0()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 6604
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 6605
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap85(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6606
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->-get0()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6607
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->-get0()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 6608
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6609
    const v1, 0x7f0701a7

    const/4 v2, 0x0

    .line 6608
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6612
    :cond_0
    return-void
.end method
