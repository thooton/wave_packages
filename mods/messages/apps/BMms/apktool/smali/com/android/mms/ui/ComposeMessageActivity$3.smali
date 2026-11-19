.class Lcom/android/mms/ui/ComposeMessageActivity$3;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1098
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    return v1

    .line 1102
    :cond_0
    const/16 v0, 0x43

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get48(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap76(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 1104
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1105
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$3;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap85(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1106
    return v2

    .line 1108
    :cond_1
    return v1
.end method
