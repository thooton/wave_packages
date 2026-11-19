.class Lcom/android/mms/ui/ComposeMessageActivity$93;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showQualityDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$photoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$93;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$93;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$93;->val$photoPath:Ljava/lang/String;

    .line 10129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 10132
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$93;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 10133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 10135
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$93;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10136
    const v1, 0x7f070030

    .line 10135
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10143
    :goto_0
    return-void

    .line 10134
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    .line 10138
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$93;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 10139
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$93;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$93;->val$photoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setRcsPath(Ljava/lang/String;)V

    .line 10140
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$93;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setScaling(Ljava/lang/String;)V

    .line 10141
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$93;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap25(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0
.end method
