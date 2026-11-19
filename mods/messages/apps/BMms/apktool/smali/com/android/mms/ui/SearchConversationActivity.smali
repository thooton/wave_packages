.class public Lcom/android/mms/ui/SearchConversationActivity;
.super Landroid/app/ListActivity;
.source "SearchConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchConversationActivity$MyHandler;,
        Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;,
        Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;
    }
.end annotation


# static fields
.field private static final SEARCH_URI:Landroid/net/Uri;


# instance fields
.field private mAdapter:Lcom/android/mms/ui/ConversationListViewAdapter;

.field private mHandler:Lcom/android/mms/ui/SearchConversationActivity$MyHandler;

.field private mListview:Landroid/widget/ListView;

.field public mQueryHandler:Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;

.field private mQueryString:Ljava/lang/String;

.field private mQueryTask:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

.field private mSearchView:Landroid/widget/EditText;

.field private mToolbar:Landroid/widget/Toolbar;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/SearchConversationActivity;->SEARCH_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/SearchConversationActivity;)Lcom/android/mms/ui/ConversationListViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mAdapter:Lcom/android/mms/ui/ConversationListViewAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/SearchConversationActivity;)Lcom/android/mms/ui/SearchConversationActivity$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mHandler:Lcom/android/mms/ui/SearchConversationActivity$MyHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/SearchConversationActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/SearchConversationActivity;)Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryTask:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/SearchConversationActivity;Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;)Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryTask:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SearchConversationActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SearchConversationActivity;->updateViews(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "content://mms-sms/search-message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/SearchConversationActivity;->SEARCH_URI:Landroid/net/Uri;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SearchConversationActivity$MyHandler;-><init>(Lcom/android/mms/ui/SearchConversationActivity;Lcom/android/mms/ui/SearchConversationActivity$MyHandler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mHandler:Lcom/android/mms/ui/SearchConversationActivity$MyHandler;

    .line 73
    iput-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryTask:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    .line 56
    return-void
.end method

.method private handleMessageClick(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 5

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationListItem;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 156
    const-string/jumbo v2, "SearchConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessageClick:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/SearchConversationActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-class v2, Lcom/android/mms/ui/SearchConversationActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    const v0, 0x7f080024

    .line 111
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 114
    const v0, 0x7f0f001e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mToolbar:Landroid/widget/Toolbar;

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchConversationActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/android/mms/ui/SearchConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    const v2, 0x7f080034

    .line 116
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 118
    new-instance v0, Lcom/android/mms/ui/ConversationListViewAdapter;

    invoke-direct {v0, p0, v3}, Lcom/android/mms/ui/ConversationListViewAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mAdapter:Lcom/android/mms/ui/ConversationListViewAdapter;

    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchConversationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mListview:Landroid/widget/ListView;

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity;->mAdapter:Lcom/android/mms/ui/ConversationListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    new-instance v0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    invoke-direct {v0, p0, v3}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;-><init>(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryTask:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    .line 124
    const v0, 0x7f0f0151

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mSearchView:Landroid/widget/EditText;

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mSearchView:Landroid/widget/EditText;

    const v1, 0x7f070271

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SearchConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 127
    new-instance v0, Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/SearchConversationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/SearchConversationActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryHandler:Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mSearchView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/SearchConversationActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SearchConversationActivity$1;-><init>(Lcom/android/mms/ui/SearchConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    return-void
.end method

.method private logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method private updateViews(Ljava/lang/CharSequence;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    const-string/jumbo v0, "SearchConversationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateViews:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "| isRestart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SearchConversationActivity;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mAdapter:Lcom/android/mms/ui/ConversationListViewAdapter;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mAdapter:Lcom/android/mms/ui/ConversationListViewAdapter;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/ConversationListViewAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    if-nez p2, :cond_4

    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    return-void

    .line 173
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryString:Ljava/lang/String;

    .line 175
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryTask:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    if-nez v0, :cond_5

    .line 177
    new-instance v0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;-><init>(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryTask:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryTask:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->requestQuery(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 96
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 97
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchConversationActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 98
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 101
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchConversationActivity;->setContentView(I)V

    .line 79
    invoke-direct {p0}, Lcom/android/mms/ui/SearchConversationActivity;->initViews()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mAdapter:Lcom/android/mms/ui/ConversationListViewAdapter;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mAdapter:Lcom/android/mms/ui/ConversationListViewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListViewAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryTask:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryTask:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->cancelQuery()V

    .line 90
    iput-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryTask:Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;

    .line 92
    :cond_1
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 148
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 149
    check-cast p2, Lcom/android/mms/ui/ConversationListItem;

    .line 150
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SearchConversationActivity;->handleMessageClick(Lcom/android/mms/ui/ConversationListItem;)V

    .line 151
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity;->mQueryString:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SearchConversationActivity;->updateViews(Ljava/lang/CharSequence;Z)V

    .line 108
    return-void
.end method
