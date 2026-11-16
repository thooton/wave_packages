.class Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;
.super Landroid/os/AsyncTask;
.source "ComposeMessageFileTransferReceiver.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "updateFileDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field final synthetic this$0:Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;


# direct methods
.method public constructor <init>(Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;Landroid/content/Context;Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;->this$0:Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 123
    iput-object p3, p0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;->mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 124
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;->mContext:Landroid/content/Context;

    .line 125
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getFileTransferPercentKeys()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 133
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;J)V

    goto :goto_0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;->mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;->mMessageListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 142
    :cond_0
    return-void
.end method
