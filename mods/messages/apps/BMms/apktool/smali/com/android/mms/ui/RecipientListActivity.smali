.class public Lcom/android/mms/ui/RecipientListActivity;
.super Landroid/app/ListActivity;
.source "RecipientListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;
    }
.end annotation


# instance fields
.field private mAddContactIntent:Landroid/content/Intent;

.field private mListView:Landroid/widget/ListView;

.field private mRecipientListAdapter:Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;

.field private mThreadId:J


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/RecipientListActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAddContactIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/RecipientListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/RecipientListActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientListActivity;->addNumberToContacts(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private addNumberToContacts(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 226
    invoke-static {p1}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 227
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const v3, 0x7f070379

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    new-instance v1, Lcom/android/mms/ui/RecipientListActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RecipientListActivity$3;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 238
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    if-eqz v0, :cond_1

    .line 144
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    .line 151
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 65
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    .line 71
    const-string/jumbo v0, "thread_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    .line 75
    :goto_0
    iget-wide v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 76
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "No thread_id specified in extras or icicle. Finishing..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->finish()V

    .line 78
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "thread_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    goto :goto_0

    .line 81
    :cond_2
    iget-wide v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    invoke-static {p0, v0, v1, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No conversation found for threadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Finishing..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->finish()V

    .line 85
    return-void

    .line 87
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    .line 89
    new-instance v1, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;

    const v2, 0x7f04004e

    invoke-direct {v1, p0, v2, v0}, Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/data/ContactList;)V

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mRecipientListAdapter:Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;

    .line 91
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mRecipientListAdapter:Lcom/android/mms/ui/RecipientListActivity$RecipientListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/ui/RecipientListActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/RecipientListActivity$1;-><init>(Lcom/android/mms/ui/RecipientListActivity;Lcom/android/mms/data/ContactList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/ui/RecipientListActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/RecipientListActivity$2;-><init>(Lcom/android/mms/ui/RecipientListActivity;Lcom/android/mms/data/ContactList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 127
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    .line 128
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 128
    const v4, 0x7f0d0004

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 170
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 163
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->finish()V

    goto :goto_0

    .line 166
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f0191 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 155
    const-string/jumbo v0, "thread_id"

    iget-wide v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    return-void
.end method
