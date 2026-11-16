.class public Lcom/android/mms/rcs/FavouriteMessageList;
.super Landroid/app/ListActivity;
.source "FavouriteMessageList.java"

# interfaces
.implements Lcom/android/mms/rcs/FavoriteMessageListAdapter$OnListContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;,
        Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;,
        Lcom/android/mms/rcs/FavouriteMessageList$UnFavoriteMessagesListener;
    }
.end annotation


# static fields
.field private static final FAVORITE_URI:Landroid/net/Uri;


# instance fields
.field private isChangeToConvasationMode:Z

.field private mCountTextView:Landroid/widget/TextView;

.field private mCursor:Landroid/database/Cursor;

.field private final mCursorLock:Ljava/lang/Object;

.field private mIsPause:Z

.field private mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMatchWhole:I

.field private mMessageTitle:Landroid/widget/TextView;

.field private mMmsWhereDelete:Ljava/lang/String;

.field private mModeCallback:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

.field private mMultiChoiceMode:Z

.field private mQueryDone:Z

.field private mQueryHandler:Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;

.field private mSearchDisplayStr:Ljava/lang/String;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSmsWhereDelete:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/mms/rcs/FavouriteMessageList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/rcs/FavouriteMessageList;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/rcs/FavouriteMessageList;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/rcs/FavouriteMessageList;)Lcom/android/mms/rcs/FavoriteMessageListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/rcs/FavouriteMessageList;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/rcs/FavouriteMessageList;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/mms/rcs/FavouriteMessageList;Lcom/android/mms/rcs/FavoriteMessageListAdapter;)Lcom/android/mms/rcs/FavoriteMessageListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/mms/rcs/FavouriteMessageList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mMultiChoiceMode:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/mms/rcs/FavouriteMessageList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mQueryDone:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/rcs/FavouriteMessageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->cancelFavouriteMessages()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/rcs/FavouriteMessageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->confirmDeleteMessages()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/suntek/mway/rcs/client/aidl/constant/Constants$FavoriteMessageProvider;->CONST_FAVOURITE_MESSAGE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/rcs/FavouriteMessageList;->FAVORITE_URI:Landroid/net/Uri;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 126
    iput-boolean v1, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mIsPause:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mQueryDone:Z

    .line 129
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mSmsWhereDelete:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mMmsWhereDelete:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mCursorLock:Ljava/lang/Object;

    .line 138
    iput-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mModeCallback:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    .line 140
    iput-boolean v1, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mMultiChoiceMode:Z

    .line 145
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mSearchDisplayStr:Ljava/lang/String;

    .line 146
    iput v1, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mMatchWhole:I

    .line 147
    iput-boolean v1, p0, Lcom/android/mms/rcs/FavouriteMessageList;->isChangeToConvasationMode:Z

    .line 109
    return-void
.end method

.method private cancelFavouriteMessages()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 386
    iget-object v1, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->getCount()I

    move-result v1

    .line 387
    iget-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 388
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 389
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 390
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 391
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 393
    :goto_0
    if-ge v1, v3, :cond_5

    .line 394
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 396
    iget-object v5, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 393
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 399
    :cond_2
    iget-object v5, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    invoke-virtual {v5, v0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 400
    if-nez v0, :cond_3

    .line 401
    return-void

    .line 403
    :cond_3
    new-instance v5, Lcom/suntek/mway/rcs/client/aidl/service/entity/SimpleMessage;

    invoke-direct {v5}, Lcom/suntek/mway/rcs/client/aidl/service/entity/SimpleMessage;-><init>()V

    .line 405
    const-string/jumbo v6, "msg_id"

    .line 404
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 407
    const-string/jumbo v8, "chat_type"

    .line 406
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 408
    invoke-virtual {v5, v6, v7}, Lcom/suntek/mway/rcs/client/aidl/service/entity/SimpleMessage;->setMessageRowId(J)V

    .line 409
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->isRcsMessage(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 410
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/SimpleMessage;->setStoreType(I)V

    .line 414
    :goto_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 412
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/SimpleMessage;->setStoreType(I)V

    goto :goto_2

    .line 417
    :cond_5
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mModeCallback:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    if-eqz v0, :cond_6

    .line 418
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mModeCallback:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->setModeFinish()V

    .line 421
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->cancelCollect(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_3
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->notifyDataSetChanged()V

    .line 428
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 422
    :catch_1
    move-exception v0

    .line 423
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;->printStackTrace()V

    goto :goto_3
.end method

.method private confirmDeleteMessages()V
    .locals 2

    .prologue
    .line 356
    new-instance v0, Lcom/android/mms/rcs/FavouriteMessageList$UnFavoriteMessagesListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/FavouriteMessageList$UnFavoriteMessagesListener;-><init>(Lcom/android/mms/rcs/FavouriteMessageList;Lcom/android/mms/rcs/FavouriteMessageList$UnFavoriteMessagesListener;)V

    .line 357
    invoke-direct {p0, v0}, Lcom/android/mms/rcs/FavouriteMessageList;->confirmUnfavoriteDialog(Lcom/android/mms/rcs/FavouriteMessageList$UnFavoriteMessagesListener;)V

    .line 358
    return-void
.end method

.method private confirmUnfavoriteDialog(Lcom/android/mms/rcs/FavouriteMessageList$UnFavoriteMessagesListener;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f070096

    .line 369
    const v0, 0x7f040013

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 370
    const v0, 0x7f0f0080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 371
    invoke-virtual {p0, v3}, Lcom/android/mms/rcs/FavouriteMessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    const v0, 0x7f0f0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 373
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 377
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 378
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 380
    const v1, 0x7f0701ac

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    const v1, 0x7f0701ad

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 383
    return-void
.end method

.method private setupActionBar()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, -0x2

    .line 455
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 457
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 458
    const v2, 0x7f040025

    const/4 v3, 0x0

    .line 457
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 459
    invoke-virtual {v1, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 460
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    .line 461
    const/16 v3, 0x15

    .line 460
    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 463
    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mCountTextView:Landroid/widget/TextView;

    .line 464
    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mMessageTitle:Landroid/widget/TextView;

    .line 465
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mMessageTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    return-void
.end method

.method private startAsyncQuery()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 247
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mCursorLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/FavouriteMessageList;->setProgressBarIndeterminateVisibility(Z)V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mQueryDone:Z

    .line 250
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mQueryHandler:Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 251
    sget-object v3, Lcom/android/mms/rcs/FavouriteMessageList;->FAVORITE_URI:Landroid/net/Uri;

    .line 252
    const-string/jumbo v7, "date DESC"

    .line 250
    const/16 v1, 0x2329

    .line 252
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 250
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8

    .line 259
    :goto_0
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    iput-boolean v10, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mQueryDone:Z

    .line 256
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 257
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkAll()V
    .locals 4

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 438
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->notifyDataSetChanged()V

    .line 442
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->closeContextMenu()V

    .line 205
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;-><init>(Lcom/android/mms/rcs/FavouriteMessageList;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mQueryHandler:Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;

    .line 159
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/FavouriteMessageList;->setContentView(I)V

    .line 160
    const v0, 0x7f0f00b8

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/FavouriteMessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListView:Landroid/widget/ListView;

    .line 166
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 167
    new-instance v0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;-><init>(Lcom/android/mms/rcs/FavouriteMessageList;Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;)V

    iput-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mModeCallback:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    .line 172
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 308
    const v0, 0x7f0f017b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 312
    :cond_0
    const v0, 0x7f0f019c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_1

    .line 314
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 317
    :cond_1
    return v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mIsPause:Z

    .line 346
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 352
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->removeDialogs()V

    .line 353
    return-void
.end method

.method public onListContentChanged()V
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mIsPause:Z

    if-nez v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->startAsyncQuery()V

    .line 434
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mQueryDone:Z

    if-nez v0, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 214
    if-nez v0, :cond_1

    .line 215
    return-void

    .line 217
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    sget-object v2, Lcom/android/mms/rcs/FavouriteMessageList;->FAVORITE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v2, "message_id"

    .line 220
    const-string/jumbo v3, "msg_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 219
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v1}, Lcom/android/mms/rcs/FavouriteMessageList;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/FavouriteMessageList;->setIntent(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 338
    :goto_0
    return v2

    .line 329
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 330
    const-string/jumbo v1, "com.suntek.mway.rcs.ACTION_LUNCHER_BACKUP_RESOTORE_ALL_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string/jumbo v1, "isFavoriteMessage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/FavouriteMessageList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x7f0f019c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mIsPause:Z

    .line 243
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 227
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 228
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 229
    invoke-direct {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->setupActionBar()V

    .line 230
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/android/mms/rcs/FavouriteMessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    iput-boolean v2, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mIsPause:Z

    .line 232
    invoke-direct {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->startAsyncQuery()V

    .line 233
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 234
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mModeCallback:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 237
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mMultiChoiceMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 192
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public unCheckAll()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    move v0, v1

    .line 446
    :goto_0
    if-ge v0, v2, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavouriteMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList;->mListAdapter:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->notifyDataSetChanged()V

    .line 452
    :cond_1
    return-void
.end method
