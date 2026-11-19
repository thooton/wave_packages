.class Lcom/android/mms/data/Conversation$3;
.super Landroid/os/AsyncTask;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->markAsReadDelayNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/mms/data/Conversation;

.field final synthetic val$threadUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    .line 508
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 509
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/data/Conversation$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 510
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    const-string/jumbo v0, "markAsReadDelayNotification.doInBackground"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->-wrap2(Lcom/android/mms/data/Conversation;)V

    .line 524
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->-get1(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    .line 525
    sget-object v2, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "(read=0 OR seen=0)"

    move-object v5, v4

    .line 524
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 526
    if-eqz v1, :cond_4

    .line 528
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v6

    .line 530
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 534
    :goto_1
    if-eqz v0, :cond_3

    .line 535
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v1}, Lcom/android/mms/data/Conversation;->-get1(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v2}, Lcom/android/mms/data/Conversation;->-get2(Lcom/android/mms/data/Conversation;)J

    move-result-wide v2

    const/16 v5, 0x80

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/mms/data/Conversation;->-wrap5(Lcom/android/mms/data/Conversation;Landroid/content/Context;JI)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markAsReadDelayNotification: update uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->-get1(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    .line 540
    invoke-static {}, Lcom/android/mms/data/Conversation;->-get4()Landroid/content/ContentValues;

    move-result-object v2

    const-string/jumbo v3, "(read=0 OR seen=0)"

    const/4 v5, 0x0

    .line 539
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    .line 547
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0, v7}, Lcom/android/mms/data/Conversation;->-wrap6(Lcom/android/mms/data/Conversation;Z)V

    .line 551
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v0, 0x5dc

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 556
    :goto_2
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->-get1(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    .line 557
    const-wide/16 v2, -0x2

    .line 556
    invoke-static {v0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;J)V

    .line 562
    :cond_1
    :goto_3
    return-object v4

    :cond_2
    move v0, v7

    .line 528
    goto :goto_0

    .line 529
    :catchall_0
    move-exception v0

    .line 530
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 529
    throw v0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Database is full"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 544
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->-get1(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->-wrap7(Landroid/content/Context;)V

    .line 545
    return-object v4

    .line 552
    :catch_1
    move-exception v0

    .line 553
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "markAsReadDelayNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 559
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0, v7}, Lcom/android/mms/data/Conversation;->-wrap6(Lcom/android/mms/data/Conversation;Z)V

    goto :goto_3

    :cond_4
    move v0, v6

    goto/16 :goto_1
.end method
