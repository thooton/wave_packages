.class public Lcom/android/mms/rcs/RcsNotifyManager;
.super Ljava/lang/Object;
.source "RcsNotifyManager.java"


# static fields
.field private static final RCS_UNDELIVERED_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/rcs/RcsNotifyManager;->RCS_UNDELIVERED_URI:Landroid/net/Uri;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRcsFailedIntentFromConversationMode(Landroid/content/Context;ZJI)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/RcsNotifyManager;->RCS_UNDELIVERED_URI:Landroid/net/Uri;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rcs_msg_state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    .line 128
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 132
    if-nez v1, :cond_0

    .line 133
    return-object v3

    .line 137
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/mms/rcs/RcsNotifyManager;->isRcsFailedMessagesInSameThread(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Landroid/content/Intent;

    .line 139
    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    .line 138
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string/jumbo v2, "undelivered_flag"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    const-string/jumbo v2, "thread_id"

    .line 143
    invoke-static {v1}, Lcom/android/mms/rcs/RcsNotifyManager;->getRcsUndeliveredMessageThreadId(Landroid/database/Cursor;)J

    move-result-wide v4

    .line 142
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    return-object v0

    .line 145
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 148
    throw v0
.end method

.method private static getRcsUndeliveredMessageCount(Landroid/content/Context;I)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/RcsNotifyManager;->RCS_UNDELIVERED_URI:Landroid/net/Uri;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rcs_msg_state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    .line 102
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    return v1
.end method

.method private static getRcsUndeliveredMessageThreadId(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 155
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "thread_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 158
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static isRcsFailedMessagesInSameThread(Landroid/database/Cursor;)Z
    .locals 8

    .prologue
    .line 164
    invoke-static {p0}, Lcom/android/mms/rcs/RcsNotifyManager;->getRcsUndeliveredMessageThreadId(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 166
    const/4 v0, 0x1

    .line 167
    const-string/jumbo v1, "thread_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 168
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    const-string/jumbo v4, "RCS_UI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ThreadId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string/jumbo v4, "thread_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 175
    :cond_1
    return v0
.end method

.method public static sendMessageFailNotif(Landroid/content/Context;IJZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 63
    if-eqz v0, :cond_0

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    .line 64
    :cond_0
    return-void

    .line 66
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/rcs/RcsNotifyManager;->getRcsUndeliveredMessageCount(Landroid/content/Context;I)I

    move-result v0

    .line 68
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 69
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 71
    const v0, 0x7f070078

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v3

    .line 76
    invoke-static {p0, v5, p2, p3, p1}, Lcom/android/mms/rcs/RcsNotifyManager;->getRcsFailedIntentFromConversationMode(Landroid/content/Context;ZJI)Landroid/content/Intent;

    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 80
    const v4, 0x7f020103

    iput v4, v1, Landroid/app/Notification;->icon:I

    .line 81
    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 85
    const/high16 v4, 0x8000000

    .line 84
    invoke-virtual {v3, v5, v4}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v3

    .line 83
    invoke-virtual {v1, p0, v2, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 87
    const/4 v0, 0x3

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 90
    const/16 v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 93
    const-string/jumbo v0, "notification"

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 95
    const/16 v2, 0x315

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 97
    return-void
.end method
