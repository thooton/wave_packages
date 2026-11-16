.class public Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ComposeMessageFileTransferReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;
    }
.end annotation


# instance fields
.field private mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 53
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 58
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v0, "connectivity"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 67
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 68
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 69
    new-instance v0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;

    iget-object v1, p0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;-><init>(Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;Landroid/content/Context;Lcom/android/mms/ui/MessageListAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void

    .line 61
    :cond_0
    return-void

    .line 72
    :cond_1
    const-string/jumbo v1, "com.suntek.mway.rcs.app.service.ACTION_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    const-string/jumbo v0, "errorEvent"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 74
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 75
    new-instance v0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;

    iget-object v1, p0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;-><init>(Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;Landroid/content/Context;Lcom/android/mms/ui/MessageListAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver$updateFileDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void

    .line 78
    :cond_2
    const-string/jumbo v1, "com.suntek.rcs.action.ACTION_MESSAGE_FILE_TRANSFER_PROGRESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    const-string/jumbo v0, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 80
    const-string/jumbo v2, "currentSize"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 81
    const-string/jumbo v4, "totalSize"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 82
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_4

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 83
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->removeFileTransferPercent(Ljava/lang/Long;)V

    .line 84
    invoke-static {p1, v0, v1}, Lcom/android/mms/rcs/RcsUtils;->queryRcsMsgDownLoadState(Landroid/content/Context;J)I

    move-result v2

    .line 85
    const/4 v3, 0x1

    .line 84
    if-eq v2, v3, :cond_3

    .line 87
    const/4 v2, 0x1

    .line 86
    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 90
    return-void

    .line 92
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_8

    .line 93
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v2

    div-long/2addr v6, v4

    .line 94
    const-wide/16 v8, 0x64

    cmp-long v8, v6, v8

    if-nez v8, :cond_6

    .line 95
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->removeFileTransferPercent(Ljava/lang/Long;)V

    .line 96
    invoke-static {p1, v0, v1}, Lcom/android/mms/rcs/RcsUtils;->queryRcsMsgDownLoadState(Landroid/content/Context;J)I

    move-result v2

    .line 97
    const/4 v3, 0x1

    .line 96
    if-eq v2, v3, :cond_5

    .line 99
    const/4 v2, 0x1

    .line 98
    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 101
    :cond_5
    return-void

    .line 103
    :cond_6
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_8

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    .line 104
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v2

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 104
    invoke-virtual {v2, v3, v4}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->addFileTransferPercent(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 106
    invoke-static {p1, v0, v1}, Lcom/android/mms/rcs/RcsUtils;->queryRcsMsgDownLoadState(Landroid/content/Context;J)I

    move-result v2

    .line 107
    const/4 v3, 0x4

    .line 106
    if-eq v2, v3, :cond_7

    .line 109
    const/4 v2, 0x4

    .line 108
    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 111
    :cond_7
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 115
    :cond_8
    return-void
.end method
