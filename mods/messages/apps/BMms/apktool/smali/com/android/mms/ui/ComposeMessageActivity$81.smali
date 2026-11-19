.class Lcom/android/mms/ui/ComposeMessageActivity$81;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$updated:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->val$updated:Lcom/android/mms/data/Contact;

    .line 7832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7835
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap10(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7836
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get36(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 7837
    :goto_0
    const-string/jumbo v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[CMA] onUpdate contact updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->val$updated:Lcom/android/mms/data/Contact;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 7839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[CMA] onUpdate recipients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 7841
    :cond_0
    # PERF(contact updates): skip the refresh when no recipient of this conversation changed
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/WaveComposePerf;->drain(Ljava/lang/Object;Lcom/android/mms/data/ContactList;)Z

    move-result v1

    if-nez v1, :wave_refresh

    return-void

    :wave_refresh
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap90(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 7845
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 7852
    return-void

    .line 7836
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap14(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    goto :goto_0
.end method
