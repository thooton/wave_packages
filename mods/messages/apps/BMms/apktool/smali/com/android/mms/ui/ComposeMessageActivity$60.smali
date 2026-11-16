.class Lcom/android/mms/ui/ComposeMessageActivity$60;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->processAddRecipients(Ljava/util/Set;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$keySet:Ljava/util/Set;

.field final synthetic val$newPickRecipientsCount:I

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$showProgress:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/util/Set;ILandroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$showProgress:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$keySet:Ljava/util/Set;

    iput p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$newPickRecipientsCount:I

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$progressDialog:Landroid/app/ProgressDialog;

    .line 5739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5744
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$keySet:Ljava/util/Set;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$newPickRecipientsCount:I

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap1(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/Set;I)[Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/ContactList;->blockingGetByUris([Landroid/net/Uri;)Lcom/android/mms/data/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5746
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5748
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get36(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5749
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get36(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 5751
    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5752
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->clear()V

    .line 5753
    invoke-virtual {v0, v3, v1}, Lcom/android/mms/data/ContactList;->addAll(ILjava/util/Collection;)Z

    .line 5762
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$60$1;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$60$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$60;Lcom/android/mms/data/ContactList;Landroid/app/ProgressDialog;)V

    .line 5787
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5788
    return-void

    .line 5745
    :catchall_0
    move-exception v0

    .line 5746
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$60;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5745
    throw v0

    .line 5755
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->removeAll(Ljava/util/Collection;)Z

    .line 5756
    invoke-virtual {v0, v3, v1}, Lcom/android/mms/data/ContactList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method
