.class public Lcom/android/mms/ui/MailBoxMessageList;
.super Landroid/app/ListActivity;
.source "MailBoxMessageList.java"

# interfaces
.implements Lcom/android/mms/ui/MailBoxMessageListAdapter$OnListContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MailBoxMessageList$1;,
        Lcom/android/mms/ui/MailBoxMessageList$2;,
        Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;,
        Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;,
        Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;
    }
.end annotation


# static fields
.field private static final SEARCH_URI:Landroid/net/Uri;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mBoxSpinner:Landroid/widget/Spinner;

.field private mCountTextView:Landroid/widget/TextView;

.field private mCursor:Landroid/database/Cursor;

.field private final mCursorLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mHasLockedMessage:Z

.field private mIsInSearchMode:Z

.field private mIsPause:Z

.field private mListAdapter:Lcom/android/mms/ui/MailBoxMessageListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMatchWhole:I

.field private mMessageTitle:Landroid/widget/TextView;

.field private mMmsWhereDelete:Ljava/lang/String;

.field private mModeCallback:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

.field private mMultiChoiceMode:Z

.field private mQueryBoxType:I

.field private mQueryDone:Z

.field private mQueryHandler:Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;

.field private mQuerySlotType:I

.field private mQueryText:Ljava/lang/CharSequence;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mSearchDisplayStr:Ljava/lang/String;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchKeyStr:Ljava/lang/String;

.field private mSearchModePosition:I

.field private mSearchTitle:Ljava/lang/CharSequence;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSlotSpinner:Landroid/widget/Spinner;

.field private mSmsWhereDelete:Ljava/lang/String;

.field private mSpinners:Landroid/view/View;

.field private mThreadId:J

.field private mThreadIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private resetSearchRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSlotSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSpinners:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/MailBoxMessageList;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/MailBoxMessageList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsInSearchMode:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/MailBoxMessageList;)Lcom/android/mms/ui/MailBoxMessageListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListAdapter:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/MailBoxMessageList;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryBoxType:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/mms/ui/MailBoxMessageList;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQuerySlotType:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/MailBoxMessageList;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/mms/ui/MailBoxMessageList;Lcom/android/mms/ui/MailBoxMessageListAdapter;)Lcom/android/mms/ui/MailBoxMessageListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListAdapter:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/mms/ui/MailBoxMessageList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMultiChoiceMode:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/mms/ui/MailBoxMessageList;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryBoxType:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/mms/ui/MailBoxMessageList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryDone:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/mms/ui/MailBoxMessageList;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQuerySlotType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/MailBoxMessageList;Landroid/database/Cursor;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageList;->needShowCountNum(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/MailBoxMessageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageList;->confirmDeleteMessages()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/MailBoxMessageList;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageList;->deleteMessages(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/MailBoxMessageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageList;->resetSearchView()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/MailBoxMessageList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageList;->setMessageTitle(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/mms/ui/MailBoxMessageList;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageList;->showMessageCount(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/mms/ui/MailBoxMessageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageList;->startAsyncQuery()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/mms/ui/MailBoxMessageList;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MailBoxMessageList;->startDownloadAttachment(Landroid/net/Uri;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const-string/jumbo v0, "content://mms-sms/search-message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MailBoxMessageList;->SEARCH_URI:Landroid/net/Uri;

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 158
    iput-boolean v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsPause:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryDone:Z

    .line 160
    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryBoxType:I

    .line 161
    iput v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQuerySlotType:I

    .line 164
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSmsWhereDelete:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMmsWhereDelete:Ljava/lang/String;

    .line 166
    iput-boolean v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mHasLockedMessage:Z

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mThreadIds:Ljava/util/ArrayList;

    .line 169
    iput-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListAdapter:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCursorLock:Ljava/lang/Object;

    .line 176
    iput-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSlotSpinner:Landroid/widget/Spinner;

    .line 178
    iput-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList;->mModeCallback:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    .line 179
    iput-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList;->mActionMode:Landroid/view/ActionMode;

    .line 181
    iput-boolean v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMultiChoiceMode:Z

    .line 190
    iput v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchModePosition:I

    .line 191
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchKeyStr:Ljava/lang/String;

    .line 192
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchDisplayStr:Ljava/lang/String;

    .line 193
    iput v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMatchWhole:I

    .line 570
    new-instance v0, Lcom/android/mms/ui/MailBoxMessageList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MailBoxMessageList$1;-><init>(Lcom/android/mms/ui/MailBoxMessageList;)V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->resetSearchRunnable:Ljava/lang/Runnable;

    .line 673
    new-instance v0, Lcom/android/mms/ui/MailBoxMessageList$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MailBoxMessageList$2;-><init>(Lcom/android/mms/ui/MailBoxMessageList;)V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 123
    return-void
.end method

.method private calcuteSelect()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 936
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListAdapter:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->getCount()I

    move-result v1

    .line 937
    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 938
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 940
    if-eqz v1, :cond_0

    if-nez v7, :cond_1

    .line 941
    :cond_0
    return-void

    .line 943
    :cond_1
    const-string/jumbo v4, ""

    .line 944
    const-string/jumbo v3, ""

    .line 945
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    move v1, v0

    .line 948
    :goto_0
    if-ge v5, v7, :cond_8

    .line 949
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 951
    iget-object v8, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 948
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 954
    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListAdapter:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    invoke-virtual {v8, v0}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 955
    if-nez v0, :cond_3

    .line 956
    return-void

    .line 959
    :cond_3
    const-string/jumbo v8, "sms"

    .line 961
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 965
    const-string/jumbo v9, "sms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 966
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 967
    const/16 v9, 0xb

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 968
    if-ne v9, v2, :cond_4

    move v1, v2

    .line 971
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 972
    iget-object v8, p0, Lcom/android/mms/ui/MailBoxMessageList;->mThreadIds:Ljava/util/ArrayList;

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    :cond_5
    :goto_2
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/mms/ui/MailBoxMessageList;->mThreadId:J

    goto :goto_1

    .line 962
    :catch_0
    move-exception v0

    goto :goto_1

    .line 973
    :cond_6
    const-string/jumbo v9, "mms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 974
    const/16 v8, 0x17

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 975
    if-ne v8, v2, :cond_7

    move v1, v2

    .line 978
    :cond_7
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 979
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 983
    :cond_8
    iput-object v4, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSmsWhereDelete:Ljava/lang/String;

    .line 984
    iput-object v3, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMmsWhereDelete:Ljava/lang/String;

    .line 985
    iput-boolean v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mHasLockedMessage:Z

    .line 986
    return-void
.end method

.method private confirmDeleteDialog(Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 852
    const v0, 0x7f040013

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 853
    const v0, 0x7f0f0080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 854
    const v2, 0x7f0702e4

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MailBoxMessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    const v0, 0x7f0f0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 856
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 857
    iget-boolean v2, p0, Lcom/android/mms/ui/MailBoxMessageList;->mHasLockedMessage:Z

    if-nez v2, :cond_0

    .line 858
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 868
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 869
    const v2, 0x7f0701f1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 870
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 871
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 872
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 873
    const v1, 0x7f0701ac

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 874
    const v1, 0x7f0701ad

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 875
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 876
    return-void

    .line 860
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;->setDeleteLockedMessage(Z)V

    .line 861
    new-instance v2, Lcom/android/mms/ui/MailBoxMessageList$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/mms/ui/MailBoxMessageList$7;-><init>(Lcom/android/mms/ui/MailBoxMessageList;Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private confirmDeleteMessages()V
    .locals 2

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageList;->calcuteSelect()V

    .line 834
    new-instance v0, Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;-><init>(Lcom/android/mms/ui/MailBoxMessageList;Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;)V

    .line 835
    iget-boolean v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mHasLockedMessage:Z

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MailBoxMessageList;->confirmDeleteDialog(Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;Z)V

    .line 836
    return-void
.end method

.method private deleteMessages(Z)V
    .locals 9

    .prologue
    const v8, 0x7f0702dd

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 880
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSmsWhereDelete:Ljava/lang/String;

    .line 881
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMmsWhereDelete:Ljava/lang/String;

    .line 883
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSmsWhereDelete:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 884
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    if-nez p1, :cond_0

    .line 887
    if-nez v0, :cond_7

    const-string/jumbo v0, " locked=0 "

    .line 893
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 894
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 895
    const-string/jumbo v3, "content://sms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 894
    invoke-static {p0, v2, v3, v0, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 896
    if-lez v0, :cond_2

    .line 897
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryBoxType:I

    if-ne v0, v7, :cond_1

    .line 898
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageList;->updateDraftCache()V

    .line 900
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MailBoxMessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 906
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 907
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 909
    if-nez p1, :cond_3

    .line 910
    if-nez v0, :cond_8

    const-string/jumbo v0, " locked=0 "

    .line 916
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 917
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 918
    const-string/jumbo v2, "content://mms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 917
    invoke-static {p0, v1, v2, v0, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 919
    if-lez v0, :cond_5

    .line 920
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryBoxType:I

    if-ne v0, v7, :cond_4

    .line 921
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageList;->updateDraftCache()V

    .line 923
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MailBoxMessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 928
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 929
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 930
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mThreadIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->updateThreads(Ljava/util/ArrayList;)V

    .line 931
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 933
    :cond_6
    return-void

    .line 887
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 888
    const-string/jumbo v2, " AND locked=0 "

    .line 887
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 910
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 911
    const-string/jumbo v1, " AND locked=0 "

    .line 910
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getSelectBoxIndex(I)I
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    .line 451
    const/4 v0, 0x3

    return v0

    .line 453
    :cond_0
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method private getUnReadMessageCount(Landroid/database/Cursor;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 649
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 650
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 652
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_2
    return v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 394
    const-string/jumbo v0, "is_search"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsInSearchMode:Z

    .line 395
    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 396
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchTitle:Ljava/lang/CharSequence;

    .line 397
    const-string/jumbo v0, "mode_position"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchModePosition:I

    .line 399
    const-string/jumbo v0, "key_str"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchKeyStr:Ljava/lang/String;

    .line 400
    const-string/jumbo v0, "display_str"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchDisplayStr:Ljava/lang/String;

    .line 401
    const-string/jumbo v0, "match_whole"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMatchWhole:I

    .line 410
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsInSearchMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMessageTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSpinners:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :goto_1
    invoke-static {p1, p0}, Lcom/android/mms/ui/MessageUtils;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 423
    invoke-static {p1, p0}, Lcom/android/mms/ui/MessageUtils;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 425
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V

    .line 426
    return-void

    .line 404
    :cond_0
    const-string/jumbo v0, "mailbox_id"

    .line 405
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 406
    const-string/jumbo v2, "box_spinner_type"

    const/4 v3, 0x1

    .line 405
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 404
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryBoxType:I

    .line 407
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mBoxSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryBoxType:I

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MailBoxMessageList;->getSelectBoxIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 414
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryBoxType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSlotSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSlotSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mModeCallback:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    goto :goto_1
.end method

.method private initSpinner()V
    .locals 4

    .prologue
    .line 457
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 458
    const v0, 0x7f0f00b9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mBoxSpinner:Landroid/widget/Spinner;

    .line 459
    const v0, 0x7f0f00ba

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSlotSpinner:Landroid/widget/Spinner;

    .line 460
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mBoxSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/mms/ui/MailBoxMessageList$5;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/MailBoxMessageList$5;-><init>(Lcom/android/mms/ui/MailBoxMessageList;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 489
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSlotSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 492
    const v0, 0x7f060003

    const v2, 0x1090008

    .line 491
    invoke-static {p0, v0, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 493
    const v2, 0x7f040057

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 494
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSlotSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSlotSpinner:Landroid/widget/Spinner;

    const-string/jumbo v2, "slot_spinner_type"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 496
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSlotSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/mms/ui/MailBoxMessageList$6;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/MailBoxMessageList$6;-><init>(Lcom/android/mms/ui/MailBoxMessageList;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 522
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSlotSpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_0
.end method

.method private markAsRead(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MailBoxMessageList$4;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MailBoxMessageList$4;-><init>(Lcom/android/mms/ui/MailBoxMessageList;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 391
    return-void
.end method

.method private needShowCountNum(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 659
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsInSearchMode:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private resetSearchView()V
    .locals 4

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->resetSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->resetSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    return-void
.end method

.method private setMessageTitle(I)V
    .locals 7

    .prologue
    const v6, 0x7f0d0002

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 663
    if-lez p1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMessageTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 665
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 666
    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchDisplayStr:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 664
    invoke-virtual {v1, v6, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMessageTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 669
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchDisplayStr:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 668
    invoke-virtual {v1, v6, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, -0x2

    .line 1019
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 1021
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1022
    const v2, 0x7f040025

    const/4 v3, 0x0

    .line 1021
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1023
    invoke-virtual {v1, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1024
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    .line 1025
    const/16 v3, 0x15

    .line 1024
    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1027
    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCountTextView:Landroid/widget/TextView;

    .line 1028
    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMessageTitle:Landroid/widget/TextView;

    .line 1029
    return-void
.end method

.method private showDownloadDialog(Landroid/net/Uri;I)V
    .locals 3

    .prologue
    .line 344
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    const v1, 0x7f07013d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 346
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 347
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 348
    const v1, 0x7f07031d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 349
    new-instance v1, Lcom/android/mms/ui/MailBoxMessageList$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/MailBoxMessageList$3;-><init>(Lcom/android/mms/ui/MailBoxMessageList;Landroid/net/Uri;I)V

    const v2, 0x7f0701ac

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 355
    const v1, 0x7f0701ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 357
    return-void
.end method

.method private showMessageCount(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCountTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryBoxType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 581
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageList;->getUnReadMessageCount(Landroid/database/Cursor;)I

    move-result v2

    .line 580
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 582
    const-string/jumbo v2, "/"

    .line 580
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 582
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 580
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startAsyncQuery()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 526
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCursorLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->setProgressBarIndeterminateVisibility(Z)V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryDone:Z

    .line 533
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQuerySlotType:I

    if-ne v0, v10, :cond_1

    .line 534
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sub_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 540
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsInSearchMode:Z

    if-eqz v0, :cond_2

    .line 541
    sget-object v0, Lcom/android/mms/ui/MailBoxMessageList;->SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 542
    const-string/jumbo v1, "search_mode"

    iget v2, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchModePosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 543
    const-string/jumbo v1, "key_str"

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchKeyStr:Ljava/lang/String;

    .line 541
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 544
    const-string/jumbo v1, "match_whole"

    .line 545
    iget v2, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMatchWhole:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 547
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryHandler:Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v1, 0x232a

    .line 548
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 547
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 563
    :goto_2
    return-void

    .line 536
    :cond_1
    :try_start_3
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQuerySlotType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 537
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sub_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 550
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://mms-sms/mailbox/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryBoxType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryHandler:Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 553
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 554
    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 555
    const-string/jumbo v7, "normalized_date DESC"

    .line 552
    const/16 v1, 0x2329

    .line 555
    const/4 v6, 0x0

    .line 552
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 526
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v8

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    iput-boolean v10, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryDone:Z

    .line 560
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 561
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2
.end method

.method private startDownloadAttachment(Landroid/net/Uri;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    const-string/jumbo v1, "uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    const-string/jumbo v1, "sub_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string/jumbo v1, "origin_sub_id"

    .line 366
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 369
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    const/16 v1, 0x83

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 370
    const v0, 0x7f07013e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 372
    return-void
.end method

.method private updateDraftCache()V
    .locals 4

    .prologue
    .line 989
    iget-wide v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 990
    return-void

    .line 991
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/mms/ui/MailBoxMessageList;->mThreadId:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 992
    return-void
.end method


# virtual methods
.method public checkAll()V
    .locals 4

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 1002
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1002
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListAdapter:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->notifyDataSetChanged()V

    .line 1006
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->closeContextMenu()V

    .line 251
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;-><init>(Lcom/android/mms/ui/MailBoxMessageList;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryHandler:Lcom/android/mms/ui/MailBoxMessageList$BoxMsgListQueryHandler;

    .line 203
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->setContentView(I)V

    .line 204
    const v0, 0x7f0f00b8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSpinners:Landroid/view/View;

    .line 205
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageList;->initSpinner()V

    .line 207
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListView:Landroid/widget/ListView;

    .line 208
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 209
    new-instance v0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;-><init>(Lcom/android/mms/ui/MailBoxMessageList;Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;)V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mModeCallback:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    .line 210
    const v0, 0x7f0f00bb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 214
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageList;->setupActionBar()V

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mHandler:Landroid/os/Handler;

    .line 217
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->handleIntent(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 692
    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    .line 693
    return v2

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 697
    const v0, 0x7f0f018b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchItem:Landroid/view/MenuItem;

    .line 698
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchView:Landroid/widget/SearchView;

    .line 699
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 701
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f070271

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MailBoxMessageList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 703
    const-string/jumbo v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 705
    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 710
    :cond_1
    const v0, 0x7f0f0192

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_2

    .line 712
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 714
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z

    move-result v0

    .line 715
    const v1, 0x7f0f0197

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 716
    if-eqz v1, :cond_3

    .line 717
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 719
    :cond_3
    const v1, 0x7f0f0198

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 720
    if-eqz v1, :cond_4

    .line 721
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 724
    :cond_4
    return v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mHasLockedMessage:Z

    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsPause:Z

    .line 807
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListAdapter:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListAdapter:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 813
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->removeDialogs()V

    .line 814
    invoke-static {}, Lcom/android/mms/data/Contact;->clearListener()V

    .line 815
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 819
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMultiChoiceMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 820
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SearchActivityExtend;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 822
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MailBoxMessageList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 826
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    goto :goto_0

    .line 829
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onListContentChanged()V
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsPause:Z

    if-nez v0, :cond_0

    .line 996
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageList;->startAsyncQuery()V

    .line 998
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryDone:Z

    if-nez v0, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 260
    if-nez v0, :cond_1

    .line 261
    return-void

    .line 265
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 267
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 268
    const-string/jumbo v1, "sms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move v2, v1

    .line 270
    :goto_0
    const-string/jumbo v1, "mms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 271
    const/16 v1, 0x13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 272
    const/4 v8, 0x3

    .line 271
    if-ne v1, v8, :cond_4

    const/4 v1, 0x1

    .line 270
    :goto_1
    or-int/2addr v1, v2

    .line 275
    if-eqz v1, :cond_6

    .line 276
    invoke-static {p0, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->startActivity(Landroid/content/Intent;)V

    .line 277
    return-void

    .line 269
    :cond_2
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    .line 268
    :cond_3
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    .line 271
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 270
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 278
    :cond_6
    const-string/jumbo v1, "sms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 281
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 282
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    const-string/jumbo v2, "thread_id"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 284
    const-string/jumbo v2, "message_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 285
    const-string/jumbo v2, "message_type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string/jumbo v2, "message_body"

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string/jumbo v0, "needResend"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MailBoxMessageList;->startActivity(Landroid/content/Intent;)V

    .line 289
    return-void

    .line 292
    :cond_7
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 291
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showSmsMessageContent(Landroid/content/Context;J)V

    .line 341
    :cond_8
    :goto_2
    return-void

    .line 294
    :cond_9
    const/16 v1, 0x16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 297
    const/16 v2, 0x13

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v8, 0x4

    if-ne v2, v8, :cond_a

    .line 298
    const/16 v2, 0xa

    if-lt v1, v2, :cond_a

    .line 299
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    const-string/jumbo v2, "thread_id"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 301
    const-string/jumbo v2, "message_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 302
    const-string/jumbo v2, "message_type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string/jumbo v2, "message_subject"

    const/16 v3, 0xd

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string/jumbo v2, "message_subject_charset"

    const/16 v3, 0xe

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string/jumbo v0, "needResend"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MailBoxMessageList;->startActivity(Landroid/content/Intent;)V

    .line 307
    return-void

    .line 310
    :cond_a
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 311
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 312
    const/16 v3, 0x18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 313
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getMmsDownloadStatus(I)I

    move-result v3

    .line 314
    const/16 v4, 0x12

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x82

    if-ne v5, v4, :cond_b

    .line 315
    packed-switch v3, :pswitch_data_0

    .line 326
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MailBoxMessageList;->showDownloadDialog(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 338
    :catch_0
    move-exception v0

    .line 339
    const-string/jumbo v1, "MailBoxMessageList"

    const-string/jumbo v2, "Open message error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 318
    :pswitch_1
    const v0, 0x7f07013e

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    const/4 v1, 0x1

    .line 318
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 331
    :cond_b
    new-instance v2, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    .line 330
    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V

    .line 332
    const/16 v2, 0x11

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 333
    if-nez v0, :cond_8

    .line 334
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MailBoxMessageList;->markAsRead(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 315
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MailBoxMessageList;->setIntent(Landroid/content/Intent;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageList;->handleIntent(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 757
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 796
    :pswitch_0
    return v2

    .line 759
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SearchActivityExtend;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 761
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/MailBoxMessageList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 798
    :goto_0
    return v2

    .line 764
    :cond_0
    return v2

    .line 766
    :pswitch_2
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 769
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 770
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/MailBoxMessageList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 773
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 774
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/MailBoxMessageList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 775
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->setMailboxMode(Z)V

    .line 776
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->finish()V

    goto :goto_0

    .line 779
    :pswitch_5
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->showMemoryStatusDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 783
    :pswitch_6
    :try_start_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getCellBroadcastIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailBoxMessageList;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    const-string/jumbo v0, "MailBoxMessageList"

    const-string/jumbo v1, "ActivityNotFoundException for CellBroadcastListActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 790
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 791
    const-string/jumbo v1, "favorited"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 792
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/MailBoxMessageList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 793
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->setMailboxMode(Z)V

    goto :goto_0

    .line 757
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0188
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsPause:Z

    .line 444
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedMsgType(J)V

    .line 445
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 729
    const v0, 0x7f0f0195

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_0

    .line 731
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 733
    :cond_0
    const v0, 0x7f0f0188

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 734
    if-eqz v0, :cond_1

    .line 735
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 737
    :cond_1
    const v0, 0x7f0f0198

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 738
    if-eqz v0, :cond_2

    .line 739
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_3

    .line 743
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList;->mQueryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 747
    :cond_3
    const v0, 0x7f0f0196

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 748
    if-eqz v0, :cond_4

    .line 749
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 752
    :cond_4
    return v3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsPause:Z

    .line 432
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageList;->startAsyncQuery()V

    .line 433
    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mIsInSearchMode:Z

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 438
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mMultiChoiceMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 238
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public unCheckAll()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1009
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    move v0, v1

    .line 1010
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1010
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListAdapter:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList;->mListAdapter:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->notifyDataSetChanged()V

    .line 1016
    :cond_1
    return-void
.end method
