.class Lcom/android/mms/ui/ComposeMessageActivity$60$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$60;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

.field final synthetic val$list:Lcom/android/mms/data/ContactList;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$60;Lcom/android/mms/data/ContactList;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->val$list:Lcom/android/mms/data/ContactList;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->val$progressDialog:Landroid/app/ProgressDialog;

    .line 5762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5768
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get36(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populateWithAvatorDrawable(Lcom/android/mms/data/ContactList;)V

    .line 5772
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set14(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    .line 5773
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->val$list:Lcom/android/mms/data/ContactList;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap90(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 5775
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5779
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set9(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 5781
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get22(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->-get35()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5782
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->rcsSend()V

    .line 5784
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap85(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5785
    return-void
.end method
