.class public Lcom/android/mms/ui/ConversationMultiSelectList;
.super Landroid/app/ListActivity;
.source "ConversationMultiSelectList.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationMultiSelectList$1;,
        Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;,
        Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;
    }
.end annotation


# static fields
.field private static mIsDbLocked:Z

.field public static mSelectedThreadIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

.field private mDoOnceAfterFirstQuery:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSmsEnabled:Z

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;

.field private mSavedFirstItemOffset:I

.field private mSavedFirstVisiblePosition:I

.field private mSmsPromoBannerView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/ConversationMultiSelectList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/ConversationMultiSelectList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mDoOnceAfterFirstQuery:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/ConversationMultiSelectList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/ConversationMultiSelectList;->mIsDbLocked:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/ConversationMultiSelectList;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/ConversationMultiSelectList;)Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mQueryHandler:Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/ConversationMultiSelectList;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSavedFirstItemOffset:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/mms/ui/ConversationMultiSelectList;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSavedFirstVisiblePosition:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/ConversationMultiSelectList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mDoOnceAfterFirstQuery:Z

    return p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mIsDbLocked:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/mms/ui/ConversationMultiSelectList;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSavedFirstVisiblePosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/ConversationMultiSelectList;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationMultiSelectList;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/ConversationMultiSelectList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->startAsyncQuery()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ConversationMultiSelectList;->mIsDbLocked:Z

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSavedFirstVisiblePosition:I

    .line 453
    new-instance v0, Lcom/android/mms/ui/ConversationMultiSelectList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationMultiSelectList$1;-><init>(Lcom/android/mms/ui/ConversationMultiSelectList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    .line 79
    return-void
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 4

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    const-wide/16 v2, -0x1

    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_0
    invoke-static {v0, p2}, Lcom/android/mms/ui/ConversationMultiSelectList;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    .line 353
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 380
    const v0, 0x7f040013

    invoke-static {p3, v0, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 381
    const v0, 0x7f0f0080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 383
    if-nez p1, :cond_0

    .line 384
    const v2, 0x7f0701f4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 392
    :goto_0
    const v0, 0x7f0f0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 393
    if-nez p2, :cond_1

    .line 394
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 405
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    const v2, 0x7f0701f1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 408
    const v2, 0x7f0701fa

    .line 406
    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 409
    const v2, 0x7f0701ad

    .line 406
    invoke-virtual {v0, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 412
    return-void

    .line 387
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 388
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    .line 389
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/high16 v5, 0x7f0d0000

    .line 388
    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 397
    new-instance v2, Lcom/android/mms/ui/ConversationMultiSelectList$4;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ConversationMultiSelectList$4;-><init>(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public static confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    const/16 v0, 0x70a

    .line 363
    invoke-static {p1, p0, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V

    .line 365
    return-void
.end method

.method private initListAdapter()V
    .locals 3

    .prologue
    .line 228
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 231
    return-void
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 605
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 606
    const-string/jumbo v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void
.end method

.method private startAsyncQuery()V
    .locals 3

    .prologue
    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0701fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mQueryHandler:Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;

    const/16 v1, 0x6a5

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V

    .line 319
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mQueryHandler:Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;

    const-string/jumbo v1, "read=0"

    const/16 v2, 0x6a6

    invoke-static {v0, v2, v1}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 337
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 127
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->setContentView(I)V

    .line 130
    const v0, 0x7f0f0014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSmsPromoBannerView:Landroid/view/View;

    .line 132
    new-instance v0, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationMultiSelectList;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mQueryHandler:Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;

    .line 134
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 136
    const v1, 0x7f0f007e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationMultiSelectList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 137
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->initListAdapter()V

    .line 139
    const v0, 0x7f070102

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->setTitle(I)V

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mPrefs:Landroid/content/SharedPreferences;

    .line 143
    if-eqz p1, :cond_0

    .line 144
    const-string/jumbo v0, "last_list_pos"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSavedFirstVisiblePosition:I

    .line 146
    const-string/jumbo v0, "last_list_offset"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSavedFirstItemOffset:I

    .line 151
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSelectedThreadIds:Ljava/util/HashSet;

    .line 152
    return-void

    .line 148
    :cond_0
    iput v2, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSavedFirstVisiblePosition:I

    .line 149
    iput v3, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSavedFirstItemOffset:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    const v0, 0x1d4d9

    const v1, 0x7f070111

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 157
    const v0, 0x1d4da

    const v1, 0x7f070122

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 158
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDraftChanged(JZ)V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mQueryHandler:Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationMultiSelectList$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationMultiSelectList$3;-><init>(Lcom/android/mms/ui/ConversationMultiSelectList;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 312
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 610
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemCount()I

    .line 611
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 612
    invoke-static {p0, v0}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 614
    sget-object v2, Lcom/android/mms/ui/ConversationMultiSelectList;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 615
    if-nez v2, :cond_1

    .line 616
    sget-object v2, Lcom/android/mms/ui/ConversationMultiSelectList;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    instance-of v0, p2, Lcom/android/mms/ui/ConversationListItem;

    if-eqz v0, :cond_0

    .line 618
    check-cast p2, Lcom/android/mms/ui/ConversationListItem;

    .line 619
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/mms/ui/ConversationListItem;->toggleCheckBox(Z)V

    .line 628
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->invalidateOptionsMenu()V

    .line 629
    return-void

    .line 622
    :cond_1
    sget-object v2, Lcom/android/mms/ui/ConversationMultiSelectList;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 623
    instance-of v0, p2, Lcom/android/mms/ui/ConversationListItem;

    if-eqz v0, :cond_0

    .line 624
    check-cast p2, Lcom/android/mms/ui/ConversationListItem;

    .line 625
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/mms/ui/ConversationListItem;->toggleCheckBox(Z)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->startAsyncQuery()V

    .line 237
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 179
    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    sget-object v0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSelectedThreadIds:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mQueryHandler:Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationMultiSelectList;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mQueryHandler:Lcom/android/mms/ui/ConversationMultiSelectList$ThreadListQueryHandler;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3, v0}, Lcom/android/mms/ui/ConversationMultiSelectList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1d4d9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 203
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 204
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->finish()V

    .line 210
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    sget-object v0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const v0, 0x1d4d9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 165
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    const v0, 0x1d4da

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 169
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 172
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 215
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 216
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mIsSmsEnabled:Z

    if-eq v0, v1, :cond_0

    .line 217
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mIsSmsEnabled:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->invalidateOptionsMenu()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSmsPromoBannerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 224
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    const-string/jumbo v0, "last_list_pos"

    iget v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSavedFirstVisiblePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string/jumbo v0, "last_list_offset"

    iget v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSavedFirstItemOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 243
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationMultiSelectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 244
    const/16 v1, 0xef

    .line 243
    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 246
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mDoOnceAfterFirstQuery:Z

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationMultiSelectList$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationMultiSelectList$2;-><init>(Lcom/android/mms/ui/ConversationMultiSelectList;)V

    .line 262
    const-wide/16 v2, 0x64

    .line 252
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 282
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 288
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 291
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 294
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 298
    return-void
.end method
