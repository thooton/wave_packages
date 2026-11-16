.class final Lcom/android/mms/data/WorkingMessage$1;
.super Landroid/os/AsyncTask;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->loadDraft(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)Lcom/android/mms/data/WorkingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$msg:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$onDraftLoaded:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$1;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$1;->val$onDraftLoaded:Ljava/lang/Runnable;

    .line 396
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 404
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$1;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-static {v1, v2}, Lcom/android/mms/data/WorkingMessage;->-wrap4(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->-get0(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$1;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-static {v3, v4, v2}, Lcom/android/mms/data/WorkingMessage;->-wrap1(Landroid/content/Context;Lcom/android/mms/data/Conversation;Ljava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v3

    .line 411
    if-eqz v3, :cond_0

    .line 412
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v4, v3}, Lcom/android/mms/data/WorkingMessage;->-wrap2(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 398
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 425
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v0, v2}, Lcom/android/mms/data/WorkingMessage;->-set1(Lcom/android/mms/data/WorkingMessage;Z)Z

    .line 427
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    invoke-static {v0, v2}, Lcom/android/mms/data/WorkingMessage;->-set0(Lcom/android/mms/data/WorkingMessage;Z)Z

    .line 431
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$1;->val$msg:Lcom/android/mms/data/WorkingMessage;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$onDraftLoaded:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$1;->val$onDraftLoaded:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 438
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 423
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
