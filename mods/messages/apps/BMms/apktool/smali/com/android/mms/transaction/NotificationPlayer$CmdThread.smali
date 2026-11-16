.class final Lcom/android/mms/transaction/NotificationPlayer$CmdThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CmdThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/NotificationPlayer;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/NotificationPlayer;)V
    .locals 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NotificationPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/transaction/NotificationPlayer;->-get4(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-get1(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-get1(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/NotificationPlayer$Command;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 172
    iget v1, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->code:I

    packed-switch v1, :pswitch_data_0

    .line 199
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-get1(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 200
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-get1(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/transaction/NotificationPlayer;->-set3(Lcom/android/mms/transaction/NotificationPlayer;Lcom/android/mms/transaction/NotificationPlayer$CmdThread;)Lcom/android/mms/transaction/NotificationPlayer$CmdThread;

    .line 206
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-wrap0(Lcom/android/mms/transaction/NotificationPlayer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 207
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 175
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v1, v0}, Lcom/android/mms/transaction/NotificationPlayer;->-wrap1(Lcom/android/mms/transaction/NotificationPlayer;Lcom/android/mms/transaction/NotificationPlayer$Command;)V

    goto :goto_1

    .line 179
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v1}, Lcom/android/mms/transaction/NotificationPlayer;->-get3(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v0, v0, Lcom/android/mms/transaction/NotificationPlayer$Command;->requestTime:J

    sub-long v0, v2, v0

    .line 181
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v2}, Lcom/android/mms/transaction/NotificationPlayer;->-get4(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notification stop delayed by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "msecs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-get3(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 185
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-get3(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 186
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0, v5}, Lcom/android/mms/transaction/NotificationPlayer;->-set2(Lcom/android/mms/transaction/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 187
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-get0(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 188
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0, v5}, Lcom/android/mms/transaction/NotificationPlayer;->-set0(Lcom/android/mms/transaction/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 189
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-get2(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-get2(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-get2(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationPlayer$CmdThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {v0}, Lcom/android/mms/transaction/NotificationPlayer;->-get4(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "STOP command without a player"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    monitor-exit v1

    goto/16 :goto_0

    .line 199
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
