.class Lcom/android/mms/rcs/RcsMessageStatusService$1;
.super Ljava/lang/Object;
.source "RcsMessageStatusService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/RcsMessageStatusService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsMessageStatusService;

.field final synthetic val$currentRunningId:I

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsMessageStatusService;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/rcs/RcsMessageStatusService$1;->this$0:Lcom/android/mms/rcs/RcsMessageStatusService;

    iput p2, p0, Lcom/android/mms/rcs/RcsMessageStatusService$1;->val$currentRunningId:I

    iput-object p3, p0, Lcom/android/mms/rcs/RcsMessageStatusService$1;->val$intent:Landroid/content/Intent;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x64

    .line 140
    invoke-static {}, Lcom/android/mms/rcs/RcsMessageStatusService;->-get2()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/mms/rcs/RcsMessageStatusService;->-set0(I)I

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pool.execute: runningId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/rcs/RcsMessageStatusService$1;->val$currentRunningId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " countOfRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/android/mms/rcs/RcsMessageStatusService;->-get2()I

    move-result v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    const-string/jumbo v1, ", taskCount="

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/android/mms/rcs/RcsMessageStatusService;->-get3()J

    move-result-wide v2

    .line 141
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    const-string/jumbo v1, ", Begin"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/mms/rcs/RcsMessageStatusService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "com.suntek.rcs.action.ACTION_MESSAGE_FILE_TRANSFER_PROGRESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/mms/rcs/RcsMessageStatusService$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "id"

    invoke-static {}, Lcom/android/mms/rcs/RcsMessageStatusService;->-get0()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/android/mms/rcs/RcsMessageStatusService$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "currentSize"

    .line 148
    invoke-static {}, Lcom/android/mms/rcs/RcsMessageStatusService;->-get1()J

    move-result-wide v4

    .line 147
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 149
    iget-object v4, p0, Lcom/android/mms/rcs/RcsMessageStatusService$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v5, "totalSize"

    .line 150
    invoke-static {}, Lcom/android/mms/rcs/RcsMessageStatusService;->-get1()J

    move-result-wide v6

    .line 149
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 151
    mul-long v6, v2, v10

    div-long/2addr v6, v4

    .line 152
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 153
    :cond_0
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->removeFileTransferPercent(Ljava/lang/Long;)V

    .line 154
    iget-object v2, p0, Lcom/android/mms/rcs/RcsMessageStatusService$1;->this$0:Lcom/android/mms/rcs/RcsMessageStatusService;

    .line 155
    const/4 v3, 0x1

    .line 154
    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 162
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pool.execute: runningId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/rcs/RcsMessageStatusService$1;->val$currentRunningId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", countOfRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/android/mms/rcs/RcsMessageStatusService;->-get2()I

    move-result v1

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string/jumbo v1, ", taskCount="

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/android/mms/rcs/RcsMessageStatusService;->-get3()J

    move-result-wide v2

    .line 162
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string/jumbo v1, ", End"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/android/mms/rcs/RcsMessageStatusService;->-get2()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/android/mms/rcs/RcsMessageStatusService;->-set0(I)I

    .line 165
    invoke-static {}, Lcom/android/mms/rcs/RcsMessageStatusService;->-get3()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/mms/rcs/RcsMessageStatusService;->-set1(J)J

    .line 166
    return-void

    .line 152
    :cond_2
    cmp-long v2, v6, v10

    if-eqz v2, :cond_0

    .line 157
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v2

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 157
    invoke-virtual {v2, v0, v1}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->addFileTransferPercent(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0
.end method
