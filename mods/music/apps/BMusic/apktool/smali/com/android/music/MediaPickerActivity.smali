.class public Lcom/android/music/MediaPickerActivity;
.super Landroid/app/ListActivity;
.source "MediaPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPickerActivity$PickListAdapter;
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mFirstYear:Ljava/lang/String;

.field private mLastYear:Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mWhereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 211
    const-string/jumbo v0, "title COLLATE UNICODE"

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private MakeCursor()V
    .locals 11

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 133
    const/4 v0, 0x7

    new-array v6, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v6, v4

    .line 134
    const-string/jumbo v0, "artist"

    aput-object v0, v6, v5

    const-string/jumbo v0, "album"

    aput-object v0, v6, v7

    .line 135
    const-string/jumbo v0, "title"

    aput-object v0, v6, v8

    const-string/jumbo v0, "_data"

    const/4 v1, 0x4

    aput-object v0, v6, v1

    .line 136
    const-string/jumbo v0, "mime_type"

    const/4 v1, 0x5

    aput-object v0, v6, v1

    const-string/jumbo v0, "year"

    const/4 v1, 0x6

    aput-object v0, v6, v1

    .line 137
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v4

    .line 138
    const-string/jumbo v0, "title"

    aput-object v0, v2, v5

    const-string/jumbo v0, "artist"

    aput-object v0, v2, v7

    .line 139
    const-string/jumbo v0, "album"

    aput-object v0, v2, v8

    const-string/jumbo v0, "title"

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 140
    const-string/jumbo v0, "_data"

    const/4 v1, 0x5

    aput-object v0, v2, v1

    const-string/jumbo v0, "mime_type"

    const/4 v1, 0x6

    aput-object v0, v2, v1

    .line 146
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v4, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 153
    const-string/jumbo v4, "video/*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    iput-object v3, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    .line 155
    return-void

    .line 158
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "year>="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    const-string/jumbo v5, " AND "

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    const-string/jumbo v5, "year"

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    const-string/jumbo v5, "<="

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    iget-object v5, p0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/MediaPickerActivity;->mWhereClause:Ljava/lang/String;

    .line 168
    :cond_1
    const-string/jumbo v4, "video/*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 172
    iget-object v5, p0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    .line 170
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_2
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 198
    if-nez v0, :cond_5

    .line 200
    iput-object v3, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    .line 201
    return-void

    .line 178
    :cond_3
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 179
    iget-object v7, p0, Lcom/android/music/MediaPickerActivity;->mWhereClause:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    move-object v4, p0

    move-object v8, v3

    .line 177
    invoke-static/range {v4 .. v9}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_4

    .line 182
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_4
    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "media/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 189
    iget-object v5, p0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    .line 187
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_5
    new-array v0, v0, [Landroid/database/Cursor;

    .line 206
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    .line 207
    new-instance v1, Lcom/android/music/SortCursor;

    const-string/jumbo v2, "title"

    invoke-direct {v1, v0, v2}, Lcom/android/music/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    .line 208
    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 76
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPickerActivity;->setContentView(I)V

    .line 78
    invoke-direct {p0}, Lcom/android/music/MediaPickerActivity;->MakeCursor()V

    .line 79
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Lcom/android/music/MediaPickerActivity$PickListAdapter;

    .line 84
    iget-object v3, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    new-array v4, v1, [Ljava/lang/String;

    .line 85
    new-array v5, v1, [I

    .line 84
    const v2, 0x7f030013

    move-object v1, p0

    .line 83
    invoke-direct/range {v0 .. v5}, Lcom/android/music/MediaPickerActivity$PickListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "firstyear"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "lastyear"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPickerActivity;->setTitle(I)V

    .line 61
    :goto_0
    invoke-static {p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 62
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->init()V

    .line 63
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 68
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 93
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    .line 94
    const-string/jumbo v2, "mime_type"

    .line 93
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 97
    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 103
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    .line 104
    const-string/jumbo v3, "_id"

    .line 103
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 111
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MediaPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->finish()V

    .line 114
    return-void

    .line 106
    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 107
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    .line 108
    const-string/jumbo v3, "_id"

    .line 107
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 119
    :cond_1
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_2

    .line 121
    :try_start_0
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 126
    invoke-static {v2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void

    .line 122
    :catch_0
    move-exception v1

    goto :goto_1
.end method
