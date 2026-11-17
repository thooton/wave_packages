.class public Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;
.super Landroid/content/AsyncTaskLoader;
.source "UnreadMessageInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/sonim/borqs/launcher/MyEventsItem;",
        ">;"
    }
.end annotation


# static fields
.field private static sNotificationEnabled:Z


# instance fields
.field private final PKG_NAME:Ljava/lang/String;

.field private final SMS_INBOX:Landroid/net/Uri;

.field private final TAG:Ljava/lang/String;

.field private final UNKNOWN_NUMBER:Ljava/lang/String;

.field private mCommonNumber:Ljava/lang/String;

.field private mLastEventTime:J

.field private mNm:Landroid/app/INotificationManager;

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/sonim/borqs/launcher/MyEventsItem;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mResult:Lcom/sonim/borqs/launcher/MyEventsItem;

.field private mTotalMmsUnreadCount:I

.field private mTotalSmsUnreadCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 29
    const-string/jumbo v0, "UnreadMessageInfoLoader"

    iput-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->TAG:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->SMS_INBOX:Landroid/net/Uri;

    .line 33
    const-string/jumbo v0, "com.android.mms"

    iput-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->PKG_NAME:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->UNKNOWN_NUMBER:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "notification"

    .line 54
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mNm:Landroid/app/INotificationManager;

    .line 56
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->isNotificationsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->sNotificationEnabled:Z

    .line 57
    return-void
.end method

.method private getAddressNumber(I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 373
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type=137 AND msg_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v0, "content://mms/{0}/addr"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 379
    const/4 v2, 0x0

    .line 380
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 378
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 381
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string/jumbo v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 390
    :cond_0
    if-eqz v1, :cond_1

    .line 392
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 398
    :cond_1
    :goto_0
    return-object v6

    .line 393
    :catch_0
    move-exception v0

    .line 394
    const-string/jumbo v1, "UnreadMessageInfoLoader"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 388
    :goto_1
    :try_start_3
    const-string/jumbo v2, "UnreadMessageInfoLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while getAddressNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 390
    if-eqz v1, :cond_1

    .line 392
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 393
    :catch_2
    move-exception v0

    .line 394
    const-string/jumbo v1, "UnreadMessageInfoLoader"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 390
    :goto_2
    if-eqz v1, :cond_2

    .line 392
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 389
    :cond_2
    :goto_3
    throw v0

    .line 393
    :catch_3
    move-exception v1

    .line 394
    const-string/jumbo v2, "UnreadMessageInfoLoader"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 389
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 387
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private getSmsUnreadCountForPhoneNumber(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 259
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "read = 0 AND address =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    const-string/jumbo v1, "\'"

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->SMS_INBOX:Landroid/net/Uri;

    .line 263
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 262
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 264
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 271
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_0
    return v0

    .line 269
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 271
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_2
    return v0

    .line 270
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 271
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private isNotificationsEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "com.android.mms"

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mNm:Landroid/app/INotificationManager;

    const-string/jumbo v2, "com.android.mms"

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v0}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    return v3
.end method


# virtual methods
.method public checkForReload()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->isNotificationsEnabled()Z

    move-result v0

    .line 86
    sget-boolean v1, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->sNotificationEnabled:Z

    if-eq v0, v1, :cond_0

    .line 90
    sput-boolean v0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->sNotificationEnabled:Z

    .line 91
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->forceLoad()V

    .line 93
    :cond_0
    return-void
.end method

.method public deliverResult(Lcom/sonim/borqs/launcher/MyEventsItem;)V
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mResult:Lcom/sonim/borqs/launcher/MyEventsItem;

    .line 114
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_2

    .line 119
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 120
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    const/4 v3, 0x1

    .line 120
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    :cond_2
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcom/sonim/borqs/launcher/MyEventsItem;

    invoke-virtual {p0, p1}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->deliverResult(Lcom/sonim/borqs/launcher/MyEventsItem;)V

    return-void
.end method

.method public loadInBackground()Lcom/sonim/borqs/launcher/MyEventsItem;
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->isNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->loadUnreadMessageCount()Lcom/sonim/borqs/launcher/MyEventsItem;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->loadInBackground()Lcom/sonim/borqs/launcher/MyEventsItem;

    move-result-object v0

    return-object v0
.end method

.method public loadUnreadMessageCount()Lcom/sonim/borqs/launcher/MyEventsItem;
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 149
    iput v8, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mTotalSmsUnreadCount:I

    .line 150
    iput-object v6, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mCommonNumber:Ljava/lang/String;

    .line 155
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "address"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "date"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 156
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->SMS_INBOX:Landroid/net/Uri;

    .line 157
    const-string/jumbo v3, "read = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 156
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 160
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mTotalSmsUnreadCount:I

    .line 166
    iget v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mTotalSmsUnreadCount:I

    if-lez v0, :cond_e

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 168
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mLastEventTime:J

    .line 173
    iget v2, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mTotalSmsUnreadCount:I

    if-ne v2, v7, :cond_2

    .line 175
    iput-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mCommonNumber:Ljava/lang/String;

    move v0, v7

    .line 190
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->loadUnreadMmsCount(Z)Z

    move-result v3

    .line 191
    iget v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mTotalMmsUnreadCount:I

    iget v2, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mTotalSmsUnreadCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int v4, v0, v2

    .line 193
    if-nez v4, :cond_4

    .line 244
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_0
    return-object v6

    :cond_1
    move v0, v7

    .line 160
    goto :goto_0

    .line 177
    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getSmsUnreadCountForPhoneNumber(Ljava/lang/String;)I

    move-result v2

    .line 179
    iget v3, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mTotalSmsUnreadCount:I

    if-ne v2, v3, :cond_3

    .line 181
    iput-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mCommonNumber:Ljava/lang/String;

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v8

    .line 183
    goto :goto_0

    .line 199
    :cond_4
    iget v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mTotalSmsUnreadCount:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mTotalMmsUnreadCount:I

    if-lez v0, :cond_8

    if-eqz v3, :cond_8

    .line 200
    iget-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mCommonNumber:Ljava/lang/String;

    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 199
    if-eqz v0, :cond_8

    .line 203
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b0043

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v6

    .line 217
    :goto_1
    new-instance v5, Lcom/sonim/borqs/launcher/MyEventsItem;

    invoke-direct {v5}, Lcom/sonim/borqs/launcher/MyEventsItem;-><init>()V

    .line 218
    iget-wide v8, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mLastEventTime:J

    invoke-virtual {v5, v8, v9}, Lcom/sonim/borqs/launcher/MyEventsItem;->setLastEventTime(J)V

    .line 219
    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Lcom/sonim/borqs/launcher/MyEventsItem;->setEventTypeAndPriority(I)V

    .line 220
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 221
    const v9, 0x7f020024

    .line 220
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sonim/borqs/launcher/MyEventsItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-virtual {v5, v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {v5, v4}, Lcom/sonim/borqs/launcher/MyEventsItem;->setTotalMissedEvents(I)V

    .line 224
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 225
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0c0001

    .line 224
    invoke-virtual {v0, v9, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {v5, v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 229
    if-nez v3, :cond_5

    if-ne v4, v7, :cond_c

    .line 230
    :cond_5
    invoke-virtual {v5, v2}, Lcom/sonim/borqs/launcher/MyEventsItem;->setLaunchIntent(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_7
    return-object v5

    .line 205
    :cond_8
    if-nez v3, :cond_9

    if-ne v4, v7, :cond_b

    .line 206
    :cond_9
    :try_start_3
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mCommonNumber:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/MyEventsCommonDBUtils;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 208
    const v5, 0x7f0b0044

    .line 207
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 208
    const/4 v8, 0x0

    aput-object v0, v5, v8

    .line 207
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sms:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mCommonNumber:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    :goto_3
    :try_start_4
    const-string/jumbo v2, "UnreadMessageInfoLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while reading SMS unread count :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_a
    return-object v6

    .line 214
    :cond_b
    :try_start_5
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b0042

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v6

    goto/16 :goto_1

    .line 232
    :cond_c
    if-eqz v0, :cond_6

    .line 233
    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 234
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    invoke-virtual {v5, v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->setLaunchIntent(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    :goto_4
    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_d
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_4

    .line 241
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :cond_e
    move v0, v7

    goto/16 :goto_0
.end method

.method public loadUnreadMmsCount(Z)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 282
    iput v7, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mTotalMmsUnreadCount:I

    .line 288
    :try_start_0
    const-string/jumbo v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 289
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "date"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 290
    const-string/jumbo v5, "date DESC"

    .line 291
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 292
    const-string/jumbo v3, "(msg_box=1 AND seen=0 AND (m_type=130 OR m_type=132))"

    const/4 v4, 0x0

    .line 291
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 294
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 295
    :cond_0
    const-string/jumbo v0, "UnreadMessageInfoLoader"

    const-string/jumbo v2, "no MMS data"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_1
    return p1

    .line 299
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mTotalMmsUnreadCount:I

    .line 306
    if-eqz p1, :cond_c

    move v0, v7

    move v2, v6

    .line 310
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 311
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 312
    invoke-direct {p0, v3}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getAddressNumber(I)Ljava/lang/String;

    move-result-object v3

    .line 315
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v10

    .line 316
    if-eqz v2, :cond_4

    .line 317
    iget-wide v8, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mLastEventTime:J

    cmp-long v2, v4, v8

    if-lez v2, :cond_3

    .line 318
    iput-wide v4, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mLastEventTime:J

    :cond_3
    move v2, v7

    .line 323
    :cond_4
    iget-object v4, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mCommonNumber:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 325
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 326
    const-string/jumbo v3, "UNKNOWN"

    iput-object v3, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mCommonNumber:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    :goto_1
    :try_start_3
    const-string/jumbo v2, "UnreadMessageInfoLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while reading MMS unread count :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_5
    return p1

    .line 328
    :cond_6
    :try_start_4
    iput-object v3, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mCommonNumber:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    .line 359
    :goto_2
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_7
    throw v0

    .line 333
    :cond_8
    if-eqz v3, :cond_9

    :try_start_5
    iget-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mCommonNumber:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_9

    move v0, v6

    .line 334
    goto :goto_0

    :cond_9
    move v0, v7

    .line 359
    :cond_a
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_b
    return v0

    .line 346
    :cond_c
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 348
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v10

    .line 349
    iget-wide v4, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mLastEventTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_d

    .line 350
    iput-wide v2, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mLastEventTime:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 359
    :cond_d
    if-eqz v1, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_e
    return p1

    .line 358
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_2

    .line 356
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 130
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->onStopLoading()V

    .line 132
    iput-object v2, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mResult:Lcom/sonim/borqs/launcher/MyEventsItem;

    .line 134
    iget-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    iput-object v2, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 138
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mResult:Lcom/sonim/borqs/launcher/MyEventsItem;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mResult:Lcom/sonim/borqs/launcher/MyEventsItem;

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->deliverResult(Lcom/sonim/borqs/launcher/MyEventsItem;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->mResult:Lcom/sonim/borqs/launcher/MyEventsItem;

    if-nez v0, :cond_2

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->forceLoad()V

    .line 67
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 72
    return-void
.end method
