.class Lcom/android/mms/ui/MailBoxMessageContent$3;
.super Ljava/lang/Object;
.source "MailBoxMessageContent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MailBoxMessageContent;->inputNumberForwarMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageContent;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageContent;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageContent$3;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    iput-object p2, p0, Lcom/android/mms/ui/MailBoxMessageContent$3;->val$editText:Landroid/widget/EditText;

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 761
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 763
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$3;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    .line 764
    const v2, 0x7f070059

    .line 763
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 768
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 769
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 770
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 771
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$3;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MailBoxMessageContent;->-wrap0(Lcom/android/mms/ui/MailBoxMessageContent;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
