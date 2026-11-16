.class public Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ComposeMessageCloudFileReceiver.java"


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListAdapter;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 57
    iput-object p2, p0, Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;->mListView:Landroid/widget/ListView;

    .line 58
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 62
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    const-string/jumbo v0, "connectivity"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 69
    const-string/jumbo v1, "chatMessageId"

    const-wide/16 v2, -0x1

    .line 68
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 70
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 75
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 76
    invoke-static {p1, v2, v3}, Lcom/android/mms/rcs/RcsUtils;->queryRcsMsgDownLoadState(Landroid/content/Context;J)I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 78
    invoke-static {p1, v2, v3, v5}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 82
    return-void

    .line 84
    :cond_2
    const-string/jumbo v0, "eventType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 86
    const-string/jumbo v1, "error"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    const v0, 0x7f070062

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->removeFileTransferPercent(Ljava/lang/Long;)V

    .line 90
    invoke-static {p1, v2, v3}, Lcom/android/mms/rcs/RcsUtils;->queryRcsMsgDownLoadState(Landroid/content/Context;J)I

    move-result v0

    if-eq v0, v5, :cond_3

    .line 92
    invoke-static {p1, v2, v3, v5}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 126
    :cond_4
    :goto_0
    return-void

    .line 96
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 97
    const-string/jumbo v1, "progress"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 98
    const-string/jumbo v0, "processSize"

    invoke-virtual {p2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-float v0, v0

    .line 99
    const-string/jumbo v1, "totalSize"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v1, v4

    int-to-float v1, v1

    .line 100
    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 101
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->addFileTransferPercent(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 102
    invoke-static {p1, v2, v3}, Lcom/android/mms/rcs/RcsUtils;->queryRcsMsgDownLoadState(Landroid/content/Context;J)I

    move-result v0

    if-eq v0, v7, :cond_6

    .line 104
    invoke-static {p1, v2, v3, v7}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 108
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 109
    const-string/jumbo v1, "success"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 110
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->removeFileTransferPercent(Ljava/lang/Long;)V

    .line 111
    invoke-static {p1, v2, v3}, Lcom/android/mms/rcs/RcsUtils;->queryRcsMsgDownLoadState(Landroid/content/Context;J)I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 113
    invoke-static {p1, v2, v3, v4}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 116
    :cond_8
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 117
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 118
    const-string/jumbo v1, "fileToLarge"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 119
    const v0, 0x7f0700b8

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 121
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 122
    const-string/jumbo v1, "suffixNotAllowed"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    const v0, 0x7f0700b7

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
