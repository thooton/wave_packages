.class public Lcom/android/mms/ui/NotificationConversationList;
.super Lcom/android/mms/ui/ConversationList;
.source "NotificationConversationList.java"


# instance fields
.field private mEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;-><init>()V

    return-void
.end method


# virtual methods
.method public createNewMessage()V
    .locals 3

    .prologue
    .line 122
    const-wide/16 v0, 0x0

    .line 123
    const-class v2, Lcom/android/mms/ui/NotificationConversationList;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NotificationConversationList;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method protected initCreateNewMessageButton()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationList;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f070351

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NotificationConversationList;->setTitle(I)V

    .line 55
    const v0, 0x7f0f007e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NotificationConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NotificationConversationList;->mEmptyView:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationConversationList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 59
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 61
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 87
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 81
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationConversationList;->finish()V

    .line 82
    return v1

    .line 84
    :sswitch_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->markAsReadForNotificationMessage(Landroid/content/Context;)V

    .line 85
    return v1

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f018e -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationList;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 95
    const v0, 0x7f0f018e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 96
    if-eqz v3, :cond_0

    .line 97
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getUnreadNotificationThreadIds(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 98
    if-nez v0, :cond_3

    move v0, v2

    .line 99
    :goto_0
    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 102
    :cond_0
    const v0, 0x7f0f0192

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 107
    :cond_1
    const v0, 0x7f0f0194

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    :cond_2
    return v1

    .line 98
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    .line 99
    goto :goto_1
.end method

.method public openThread(J)V
    .locals 1

    .prologue
    .line 129
    const-class v0, Lcom/android/mms/ui/NotificationConversationList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NotificationConversationList;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public startAsyncQuery()V
    .locals 3

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/NotificationConversationList;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0701fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/NotificationConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 69
    # PERF(inbox filter): seek the SMS index; scan MMS at most once on stock providers.
    const-string/jumbo v1, "notification=1 and (EXISTS (SELECT 1 FROM sms WHERE sms.thread_id=threads._id) OR _id IN (SELECT DISTINCT thread_id FROM pdu WHERE thread_id NOT NULL))"

    .line 68
    const/16 v2, 0x6a5

    invoke-static {v0, v2, v1}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/NotificationConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 71
    # PERF(inbox filter): seek the SMS index; scan MMS at most once on stock providers.
    const-string/jumbo v1, "read=0 and (EXISTS (SELECT 1 FROM sms WHERE sms.thread_id=threads._id) OR _id IN (SELECT DISTINCT thread_id FROM pdu WHERE thread_id NOT NULL))"

    .line 70
    const/16 v2, 0x6a6

    invoke-static {v0, v2, v1}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method
