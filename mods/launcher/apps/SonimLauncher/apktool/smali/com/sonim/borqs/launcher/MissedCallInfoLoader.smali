.class public Lcom/sonim/borqs/launcher/MissedCallInfoLoader;
.super Landroid/content/AsyncTaskLoader;
.source "MissedCallInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/sonim/borqs/launcher/MyEventsItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final PKG_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 19
    const-string/jumbo v0, "MissedCallInfoLoader"

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->TAG:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "com.android.dialer"

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->PKG_NAME:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private getLogCountForPhoneNumber(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 173
    const-string/jumbo v0, "number"

    aput-object v0, v2, v7

    const-string/jumbo v0, "date"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(type = 3 OR type = 1002) AND is_read = 0 AND number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "\'"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 179
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 181
    if-nez v1, :cond_1

    .line 187
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_0
    return v7

    .line 183
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 187
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_2
    return v0

    .line 184
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 185
    :goto_0
    :try_start_2
    const-string/jumbo v2, "MissedCallInfoLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in getLogCountForPhoneNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_3
    return v7

    .line 186
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 187
    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 184
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public deliverResult(Lcom/sonim/borqs/launcher/MyEventsItem;)V
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->mResult:Lcom/sonim/borqs/launcher/MyEventsItem;

    .line 64
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v0, :cond_2

    .line 69
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 70
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    const/4 v3, 0x1

    .line 70
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    :cond_2
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lcom/sonim/borqs/launcher/MyEventsItem;

    invoke-virtual {p0, p1}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->deliverResult(Lcom/sonim/borqs/launcher/MyEventsItem;)V

    return-void
.end method

.method public loadInBackground()Lcom/sonim/borqs/launcher/MyEventsItem;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->loadMissedCallCount()Lcom/sonim/borqs/launcher/MyEventsItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->loadInBackground()Lcom/sonim/borqs/launcher/MyEventsItem;

    move-result-object v0

    return-object v0
.end method

.method public loadMissedCallCount()Lcom/sonim/borqs/launcher/MyEventsItem;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 100
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 101
    const-string/jumbo v0, "number"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "date"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 102
    const-string/jumbo v5, "date DESC"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "(type = 3 OR type = 1002) AND is_read = 0"

    const/4 v4, 0x0

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 112
    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-gtz v0, :cond_2

    .line 162
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_1
    return-object v6

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :try_start_3
    const-string/jumbo v0, "MissedCallInfoLoader"

    const-string/jumbo v1, "Security exception while reading call log unread count"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v6

    goto :goto_0

    .line 113
    :cond_2
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 115
    new-instance v3, Lcom/sonim/borqs/launcher/MyEventsItem;

    invoke-direct {v3}, Lcom/sonim/borqs/launcher/MyEventsItem;-><init>()V

    .line 118
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 119
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 123
    invoke-virtual {v3, v8, v9}, Lcom/sonim/borqs/launcher/MyEventsItem;->setLastEventTime(J)V

    .line 129
    invoke-direct {p0, v4}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->getLogCountForPhoneNumber(Ljava/lang/String;)I

    move-result v5

    .line 131
    if-ne v2, v5, :cond_6

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/sonim/borqs/launcher/MyEventsCommonDBUtils;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 137
    const v5, 0x7f0b0044

    .line 136
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 137
    const/4 v7, 0x0

    aput-object v0, v5, v7

    .line 136
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_1
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sonim/borqs/launcher/MyEventsItem;->setEventTypeAndPriority(I)V

    .line 143
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonim/borqs/launcher/MyEventsItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {v3, v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v3, v2}, Lcom/sonim/borqs/launcher/MyEventsItem;->setTotalMissedEvents(I)V

    .line 147
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/high16 v5, 0x7f0c0000

    .line 147
    invoke-virtual {v0, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v3, v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    const-string/jumbo v2, "com.android.dialer"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 154
    const-string/jumbo v2, "EXTRA_SHOW_TAB"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    invoke-virtual {v3, v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->setLaunchIntent(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 162
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_5
    return-object v3

    .line 139
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0b0042

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 159
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 160
    :goto_2
    :try_start_6
    const-string/jumbo v2, "MissedCallInfoLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in loadMissedCallCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 162
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_7
    return-object v6

    .line 161
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 162
    :goto_3
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_8
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 159
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 80
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->onStopLoading()V

    .line 82
    iput-object v2, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->mResult:Lcom/sonim/borqs/launcher/MyEventsItem;

    .line 84
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 86
    iput-object v2, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 88
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->mResult:Lcom/sonim/borqs/launcher/MyEventsItem;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->mResult:Lcom/sonim/borqs/launcher/MyEventsItem;

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->deliverResult(Lcom/sonim/borqs/launcher/MyEventsItem;)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->mResult:Lcom/sonim/borqs/launcher/MyEventsItem;

    if-nez v0, :cond_2

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;->forceLoad()V

    .line 41
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 46
    return-void
.end method
