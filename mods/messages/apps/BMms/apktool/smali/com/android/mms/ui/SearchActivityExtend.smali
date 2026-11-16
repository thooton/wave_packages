.class public Lcom/android/mms/ui/SearchActivityExtend;
.super Landroid/app/Activity;
.source "SearchActivityExtend.java"


# instance fields
.field private mSearchStringEdit:Landroid/widget/EditText;

.field private mSearchThread:Landroid/os/HandlerThread;

.field private mSearchThreadHandler:Landroid/os/Handler;

.field private mSpinSearchMode:Landroid/widget/Spinner;


# direct methods
.method static synthetic -wrap0(Lcom/android/mms/ui/SearchActivityExtend;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/SearchActivityExtend;->getSearchIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Search Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSearchThread:Landroid/os/HandlerThread;

    .line 62
    return-void
.end method

.method private getSearchIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSearchStringEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    return-object v3

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSpinSearchMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 83
    const/4 v0, 0x0

    .line 85
    if-ne v2, v1, :cond_2

    .line 86
    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->getAddressByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    return-object v3

    .line 90
    :cond_1
    const/4 v0, 0x2

    move-object v3, v2

    move v2, v0

    move v0, v1

    .line 94
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/MailBoxMessageList;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string/jumbo v6, "is_search"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const-string/jumbo v1, "title"

    const v6, 0x7f0702f7

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SearchActivityExtend;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string/jumbo v1, "mode_position"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string/jumbo v1, "key_str"

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v1, "display_str"

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "match_whole"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    return-object v5

    :cond_2
    move-object v3, v4

    goto :goto_0
.end method

.method private initUi()V
    .locals 2

    .prologue
    .line 159
    const v0, 0x7f0f0153

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchActivityExtend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSpinSearchMode:Landroid/widget/Spinner;

    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSpinSearchMode:Landroid/widget/Spinner;

    const v1, 0x7f0702f9

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPromptId(I)V

    .line 161
    const v0, 0x7f0f0155

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchActivityExtend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSearchStringEdit:Landroid/widget/EditText;

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSearchStringEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 163
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivityExtend;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 165
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchActivityExtend;->setContentView(I)V

    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v0, Lcom/android/mms/ui/SearchActivityExtend$1;

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SearchActivityExtend$1;-><init>(Lcom/android/mms/ui/SearchActivityExtend;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSearchThreadHandler:Landroid/os/Handler;

    .line 155
    invoke-direct {p0}, Lcom/android/mms/ui/SearchActivityExtend;->initUi()V

    .line 156
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    const v0, 0x7f07011f

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 192
    const v1, 0x7f020088

    .line 191
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 193
    const/16 v1, 0x73

    .line 191
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 194
    const/4 v1, 0x2

    .line 191
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSearchThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchActivityExtend;->stopSearchAndKillThread(Landroid/os/Handler;)V

    .line 187
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 177
    return v2

    .line 171
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend;->mSearchThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    :goto_0
    return v2

    .line 174
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivityExtend;->finish()V

    goto :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public stopSearchAndKillThread(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 117
    :cond_0
    return-void
.end method
