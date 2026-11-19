.class Lcom/android/mms/ui/ComposeMessageActivity$49;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onProtocolChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$convertToMms:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->val$convertToMms:Z

    .line 4015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 4018
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get47(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4019
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->val$convertToMms:Z

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap2(Lcom/android/mms/ui/ComposeMessageActivity;Z)[Landroid/view/View;

    .line 4024
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->val$convertToMms:Z

    if-eqz v0, :cond_2

    .line 4028
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get51(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4030
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get47(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4031
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get52(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4033
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap70(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4041
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap85(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4042
    return-void

    .line 4021
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->val$convertToMms:Z

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap3(Lcom/android/mms/ui/ComposeMessageActivity;Z)Landroid/view/View;

    goto :goto_0

    .line 4035
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get51(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4036
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get47(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4037
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get52(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4039
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$49;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap71(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_1
.end method
