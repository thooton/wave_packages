.class public Lcom/android/music/MediaAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MediaAppWidgetProvider.java"


# static fields
.field private static sInstance:Lcom/android/music/MediaAppWidgetProvider;


# instance fields
.field public mArtist:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/music/MediaAppWidgetProvider;->mTitle:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/music/MediaAppWidgetProvider;->mArtist:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/music/MediaAppWidgetProvider;->mPreferences:Landroid/content/SharedPreferences;

    .line 38
    return-void
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const v7, 0x7f0b0002

    const v6, 0x7f0b0001

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 80
    const/high16 v3, 0x7f030000

    .line 79
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 82
    const-string/jumbo v2, "sharedpref"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/MediaAppWidgetProvider;->mPreferences:Landroid/content/SharedPreferences;

    .line 83
    iget-object v2, p0, Lcom/android/music/MediaAppWidgetProvider;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/android/music/MediaAppWidgetProvider;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "title"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/MediaAppWidgetProvider;->mTitle:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/android/music/MediaAppWidgetProvider;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "artist"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/MediaAppWidgetProvider;->mArtist:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/android/music/MediaAppWidgetProvider;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/MediaAppWidgetProvider;->mArtist:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 87
    :cond_0
    invoke-virtual {v1, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    const v2, 0x7f070065

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 88
    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 101
    :goto_0
    invoke-direct {p0, p1, v1, v5}, Lcom/android/music/MediaAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 102
    invoke-direct {p0, p1, p2, v1}, Lcom/android/music/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 103
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaAppWidgetProvider;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 93
    iget-object v0, p0, Lcom/android/music/MediaAppWidgetProvider;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v1, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    const v2, 0x7f070065

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 98
    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static declared-synchronized getInstance()Lcom/android/music/MediaAppWidgetProvider;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-class v1, Lcom/android/music/MediaAppWidgetProvider;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/android/music/MediaAppWidgetProvider;->sInstance:Lcom/android/music/MediaAppWidgetProvider;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/music/MediaAppWidgetProvider;

    invoke-direct {v0}, Lcom/android/music/MediaAppWidgetProvider;-><init>()V

    sput-object v0, Lcom/android/music/MediaAppWidgetProvider;->sInstance:Lcom/android/music/MediaAppWidgetProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 54
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 126
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/music/MediaAppWidgetProvider;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 5

    .prologue
    const/high16 v4, 0x7f0b0000

    const/4 v3, 0x0

    .line 230
    new-instance v0, Landroid/content/ComponentName;

    .line 231
    const-class v1, Lcom/android/music/MediaPlaybackService;

    .line 230
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    if-eqz p3, :cond_0

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 240
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 251
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 253
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 255
    const v2, 0x7f0b0003

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 257
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.music.musicservicecommand.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 259
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 261
    const v1, 0x7f0b0004

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 262
    return-void

    .line 242
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/music/MusicBrowserActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 248
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 3

    .prologue
    .line 109
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/music/MediaAppWidgetProvider;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/music/MediaAppWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string/jumbo v0, "com.android.music.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    if-eqz v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    .line 141
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0, p1, p3}, Lcom/android/music/MediaAppWidgetProvider;->defaultAppWidget(Landroid/content/Context;[I)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "command"

    .line 66
    const-string/jumbo v2, "appwidgetupdate"

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 69
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method performUpdate(Lcom/android/music/MediaPlaybackService;[I)V
    .locals 12

    .prologue
    const v11, 0x7f0b0003

    const v10, 0x7f0b0002

    const/4 v9, 0x0

    const/4 v1, 0x0

    const v8, 0x7f0b0001

    .line 147
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 148
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 149
    const/high16 v4, 0x7f030000

    .line 148
    invoke-direct {v3, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 151
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 156
    :try_start_0
    const-string/jumbo v0, "sharedpref"

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Lcom/android/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaAppWidgetProvider;->mPreferences:Landroid/content/SharedPreferences;

    .line 157
    iget-object v0, p0, Lcom/android/music/MediaAppWidgetProvider;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 159
    const-string/jumbo v6, "title"

    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    const-string/jumbo v6, "artist"

    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-static {v0}, Lcom/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "mounted"

    .line 170
    const-string/jumbo v6, "shared"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 171
    const-string/jumbo v6, "unmounted"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 170
    if-eqz v6, :cond_2

    .line 172
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const v0, 0x7f07002f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 188
    :goto_1
    if-eqz v0, :cond_5

    .line 190
    const/16 v1, 0x8

    invoke-virtual {v3, v8, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 191
    invoke-virtual {v3, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    :goto_2
    invoke-virtual {p1}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 202
    if-eqz v0, :cond_6

    .line 204
    const v1, 0x7f02001c

    .line 203
    invoke-virtual {v3, v11, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 211
    :goto_3
    invoke-direct {p0, p1, v3, v0}, Lcom/android/music/MediaAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 213
    invoke-direct {p0, p1, p2, v3}, Lcom/android/music/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 214
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 175
    :cond_1
    const v0, 0x7f070030

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 177
    :cond_2
    const-string/jumbo v6, "removed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const v0, 0x7f07002b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 182
    :cond_3
    const v0, 0x7f07002c

    .line 181
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 184
    :cond_4
    if-nez v4, :cond_7

    .line 185
    const v0, 0x7f070046

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 195
    :cond_5
    invoke-virtual {v3, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 196
    invoke-virtual {v3, v8, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v3, v10, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 207
    :cond_6
    const v1, 0x7f02001d

    .line 206
    invoke-virtual {v3, v11, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method
