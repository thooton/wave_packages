.class Lcom/android/mms/widget/MmsWidgetService$MmsFactory;
.super Ljava/lang/Object;
.source "MmsWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/MmsWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsFactory"
.end annotation


# static fields
.field private static SENDERS_TEXT_COLOR_READ:I

.field private static SENDERS_TEXT_COLOR_UNREAD:I

.field private static SUBJECT_TEXT_COLOR_READ:I

.field private static SUBJECT_TEXT_COLOR_UNREAD:I


# instance fields
.field private final mAppWidgetId:I

.field private final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mContext:Landroid/content/Context;

.field private mConversationCursor:Landroid/database/Cursor;

.field private mShouldShowViewMore:Z

.field private mUnreadConvCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    .line 87
    const-string/jumbo v0, "appWidgetId"

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    .line 88
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 89
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MmsFactory intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "widget id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_READ:I

    .line 95
    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_UNREAD:I

    .line 96
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_READ:I

    .line 97
    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 98
    return-void
.end method

.method private addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 207
    if-eqz p2, :cond_0

    .line 208
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 209
    const/16 v3, 0x21

    .line 208
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 211
    :cond_0
    return-object v0
.end method

.method private getConversationCount()I
    .locals 2

    .prologue
    .line 195
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "getConversationCount"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getViewMoreConversationsView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 328
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "getViewMoreConversationsView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040066

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 333
    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v2, 0x7f070289

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0f0177

    .line 332
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 335
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    const v2, 0x7f0f0176

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 336
    return-object v0
.end method

.method private onLoadComplete()V
    .locals 5

    .prologue
    const v4, 0x7f0f0170

    const/4 v0, 0x0

    .line 363
    const-string/jumbo v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "onLoadComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040064

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 368
    iget v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    if-lez v2, :cond_2

    :goto_0
    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 370
    iget v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    if-lez v0, :cond_1

    .line 372
    iget v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {v1, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 376
    return-void

    .line 369
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private queryAllConversations()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "msg_chat_type!=4"

    .line 141
    invoke-static {v4, v0}, Lcom/android/mms/rcs/RcsUtils;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 146
    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 147
    sget-object v5, Lcom/android/mms/data/Conversation;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    .line 145
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method private queryUnreadCount()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 152
    const/4 v7, 0x0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 156
    const-string/jumbo v3, "read=0"

    sget-object v5, Lcom/android/mms/data/Conversation;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    const/4 v4, 0x0

    .line 154
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 157
    if-eqz v1, :cond_2

    .line 158
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 161
    :goto_0
    if-eqz v1, :cond_0

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_0
    return v0

    .line 160
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 161
    :goto_1
    if-eqz v1, :cond_1

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "getCount"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->-get0()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v3

    .line 180
    return v1

    .line 182
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v4

    .line 183
    iget-object v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v4, v2, :cond_2

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    .line 184
    iget-boolean v2, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    :goto_1
    add-int/2addr v0, v4

    monitor-exit v3

    return v0

    :cond_2
    move v2, v1

    .line 183
    goto :goto_0

    :cond_3
    move v0, v1

    .line 184
    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 354
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 341
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040066

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 343
    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const v2, 0x7f0701fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0f0177

    .line 342
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 344
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 9

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 219
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getViewAt position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->-get0()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 225
    iget-boolean v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mShouldShowViewMore:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getConversationCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 229
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 232
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to move to position: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 236
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    .line 239
    new-instance v4, Landroid/widget/RemoteViews;

    .line 240
    iget-object v5, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f040065

    .line 239
    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 242
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 243
    const v5, 0x7f0f0174

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 244
    const v5, 0x7f0f0175

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 249
    :goto_0
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v5

    .line 250
    if-eqz v5, :cond_8

    :goto_1
    const v1, 0x7f0f006d

    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 255
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 255
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 254
    const v1, 0x7f0f006b

    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_UNREAD:I

    .line 262
    :goto_3
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    const-string/jumbo v5, ", "

    invoke-virtual {v1, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 265
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 266
    iget-object v5, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070283

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 267
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 268
    iget-object v6, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07012b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 269
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    iget-object v7, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    .line 270
    const v8, 0x1030046

    .line 269
    invoke-direct {v6, v7, v8, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    .line 271
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v7, 0x11

    .line 269
    invoke-virtual {v1, v6, v5, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 272
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 273
    iget-object v6, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020110

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 272
    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 274
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x11

    .line 272
    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 278
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 279
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    .line 280
    const/16 v7, 0x11

    .line 279
    invoke-virtual {v1, v0, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 282
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_b

    .line 285
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 286
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->getDisplayName(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 291
    :cond_6
    :goto_4
    const v0, 0x7f0f0066

    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 296
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 297
    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsUtils;->getStringOfNotificationBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 305
    :goto_5
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v0

    if-eqz v0, :cond_d

    sget v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_UNREAD:I

    :goto_6
    invoke-direct {p0, v1, v0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->addColor(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 304
    const v1, 0x7f0f003b

    .line 303
    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 309
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string/jumbo v1, "thread_id"

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 317
    :goto_7
    const v1, 0x7f0f0173

    invoke-virtual {v4, v1, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 319
    return-object v4

    .line 246
    :cond_7
    const v5, 0x7f0f0174

    const/16 v6, 0x8

    :try_start_3
    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 247
    const v5, 0x7f0f0175

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_8
    move v0, v1

    .line 251
    goto/16 :goto_1

    .line 257
    :cond_9
    :try_start_4
    sget v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_READ:I

    goto/16 :goto_2

    .line 261
    :cond_a
    sget v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SENDERS_TEXT_COLOR_READ:I

    goto/16 :goto_3

    .line 288
    :cond_b
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_4

    .line 299
    :cond_c
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRcsLastMsgType()I

    move-result v5

    .line 299
    invoke-static {v0, v1, v5}, Lcom/android/mms/rcs/RcsUtils;->formatConversationSnippet(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    .line 306
    :cond_d
    sget v0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->SUBJECT_TEXT_COLOR_READ:I

    goto :goto_6

    .line 314
    :cond_e
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/MailBoxMessageList;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :cond_f
    move-object v1, v0

    goto/16 :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 102
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 106
    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    .prologue
    .line 124
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "onDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->-get0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->queryAllConversations()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 133
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->queryUnreadCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mUnreadConvCount:I

    .line 134
    invoke-direct {p0}, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->onLoadComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 136
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 110
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    invoke-static {}, Lcom/android/mms/widget/MmsWidgetService;->-get0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mConversationCursor:Landroid/database/Cursor;

    .line 118
    :cond_1
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 120
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3

    .prologue
    .line 379
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdate from Contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcom/android/mms/widget/MmsWidgetService$MmsFactory;->mAppWidgetId:I

    const v2, 0x7f0f0172

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 383
    return-void
.end method
