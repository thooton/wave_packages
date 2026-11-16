.class public Lcom/android/mms/rcs/RcsCreateGroupChatActivity;
.super Landroid/app/Activity;
.source "RcsCreateGroupChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/RcsCreateGroupChatActivity$1;
    }
.end annotation


# instance fields
.field private mCreateGroupChatCallback:Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

.field private mRcsGroupChatReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

.field private mRecipientList:Lcom/android/mms/data/ContactList;

.field private mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

.field private mSubjectEdit:Landroid/widget/EditText;


# direct methods
.method static synthetic -get0(Lcom/android/mms/rcs/RcsCreateGroupChatActivity;)Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mCreateGroupChatCallback:Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/rcs/RcsCreateGroupChatActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->handleRcsGroupChatCreateNotActive(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRecipientList:Lcom/android/mms/data/ContactList;

    .line 255
    new-instance v0, Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    .line 256
    new-instance v1, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$1;-><init>(Lcom/android/mms/rcs/RcsCreateGroupChatActivity;)V

    .line 255
    invoke-direct {v0, v1}, Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;-><init>(Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver$GroupChatNotifyCallback;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRcsGroupChatReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    .line 90
    return-void
.end method

.method private buildUris(Ljava/util/Set;I)[Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)[",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 342
    new-array v3, p2, [Landroid/net/Uri;

    .line 343
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 344
    const/4 v0, 0x0

    move v1, v0

    .line 345
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 347
    add-int/lit8 v2, v1, 0x1

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v3, v1

    .line 348
    if-ne v2, p2, :cond_1

    .line 352
    :cond_0
    return-object v3

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private confirmCreateGroupChat()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;,
            Lcom/suntek/mway/rcs/client/api/exception/InviteTooManyUserException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->createGroupChat()V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    const v0, 0x7f07000a

    invoke-direct {p0, v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->toast(I)V

    goto :goto_0
.end method

.method private createGroupChat()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;,
            Lcom/suntek/mway/rcs/client/api/exception/InviteTooManyUserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 221
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 222
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->getAccount()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "+86"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const v0, 0x7f0700fa

    .line 225
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mSubjectEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 232
    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 233
    const v0, 0x7f0700d3

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    return-void

    .line 237
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    const v0, 0x7f0700c6

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mCreateGroupChatCallback:Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

    if-nez v2, :cond_3

    .line 241
    new-instance v2, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

    invoke-direct {v2, p0}, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mCreateGroupChatCallback:Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mCreateGroupChatCallback:Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

    invoke-virtual {v2}, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->onBegin()V

    .line 245
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getInstance()Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->create(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    .line 246
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mCreateGroupChatCallback:Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mCreateGroupChatCallback:Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

    invoke-virtual {v0, v6}, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->onDone(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mCreateGroupChatCallback:Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;

    invoke-virtual {v0}, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->onEnd()V

    .line 253
    :cond_4
    return-void
.end method

.method private getIntentData()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "recipients"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRecipientList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->clear()V

    .line 124
    iget-object v1, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRecipientList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_0
    return-void
.end method

.method private handleRcsGroupChatCreateNotActive(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 303
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity$2;-><init>(Lcom/android/mms/rcs/RcsCreateGroupChatActivity;Landroid/os/Bundle;)V

    .line 316
    const-wide/16 v2, 0x7d0

    .line 303
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 129
    const v0, 0x7f0f0139

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mSubjectEdit:Landroid/widget/EditText;

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/suntek/rcs/ui/common/mms/RcsEditTextInputFilter;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Lcom/suntek/rcs/ui/common/mms/RcsEditTextInputFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 131
    iget-object v1, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mSubjectEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 132
    const v0, 0x7f0f013d

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0f013e

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f0f013c

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 136
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ChipsRecipientAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRecipientList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 138
    return-void
.end method

.method private insertNumbersIntoRecipientsEditor(Lcom/android/mms/data/ContactList;)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 167
    const/4 v1, 0x1

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 169
    invoke-virtual {p1, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    .line 173
    return-void
.end method

.method private launchMultiplePhonePicker()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.action.MULTI_PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void
.end method

.method private toast(I)V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 327
    return-void
.end method

.method private tryCreateGroupChat()V
    .locals 2

    .prologue
    .line 197
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->confirmCreateGroupChat()V
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/suntek/mway/rcs/client/api/exception/InviteTooManyUserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string/jumbo v1, "RCS_UI"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 201
    :catch_1
    move-exception v0

    .line 202
    const-string/jumbo v1, "RCS_UI"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 198
    :catch_2
    move-exception v0

    .line 199
    const v1, 0x7f07000a

    invoke-direct {p0, v1}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->toast(I)V

    .line 200
    const-string/jumbo v1, "RCS_UI"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 142
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 162
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    return-void

    .line 147
    :pswitch_0
    if-eqz p3, :cond_1

    .line 148
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 150
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 153
    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->buildUris(Ljava/util/Set;I)[Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/ContactList;->blockingGetByUris([Landroid/net/Uri;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    .line 156
    invoke-direct {p0, v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->insertNumbersIntoRecipientsEditor(Lcom/android/mms/data/ContactList;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 150
    goto :goto_1

    .line 145
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 178
    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 180
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->launchMultiplePhonePicker()V

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->tryCreateGroupChat()V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x7f0f013d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->setContentView(I)V

    .line 112
    invoke-direct {p0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->getIntentData()V

    .line 113
    invoke-direct {p0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->initView()V

    .line 114
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRcsGroupChatReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    .line 115
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.suntek.mway.rcs.app.service.ACTION_GROUP_CHAT_MANAGE_NOTIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->mRcsGroupChatReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 323
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 331
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 338
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 333
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/rcs/RcsCreateGroupChatActivity;->finish()V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
