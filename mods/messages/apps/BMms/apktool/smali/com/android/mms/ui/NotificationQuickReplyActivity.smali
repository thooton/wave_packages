.class public Lcom/android/mms/ui/NotificationQuickReplyActivity;
.super Landroid/app/Activity;
.source "NotificationQuickReplyActivity.java"


# static fields
.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mBackImageButton:Landroid/widget/ImageButton;

.field private mMsgSenderAddress:Ljava/lang/String;

.field private mMsgSubId:I

.field private mMsgThreadId:J

.field private mReplyContent:Landroid/widget/EditText;

.field private mReplyToTextView:Landroid/widget/TextView;

.field private mSendImageButton:Landroid/widget/ImageButton;

.field private mViewMessageTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/NotificationQuickReplyActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgSenderAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/NotificationQuickReplyActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgThreadId:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/NotificationQuickReplyActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mReplyContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/NotificationQuickReplyActivity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->sendSms(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/NotificationQuickReplyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->setSmsOrMmsSendButtonImage()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getSmsSubscriptionId()I
    .locals 4

    .prologue
    .line 224
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 225
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 226
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v1

    .line 225
    if-eqz v1, :cond_0

    .line 227
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->isSMSPromptEnabled()Z

    move-result v1

    .line 225
    if-eqz v1, :cond_0

    .line 228
    iget v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgSubId:I

    if-ltz v1, :cond_1

    .line 229
    iget v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgSubId:I

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    const-string/jumbo v1, "QuickReplyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error SUB:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleRemoteInput(Landroid/content/Intent;J)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-static {p1}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    const-string/jumbo v2, "key_text_reply"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 117
    if-eqz v4, :cond_0

    .line 118
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgSenderAddress:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgThreadId:J

    invoke-direct {p0, v1, v2, v6, v7}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->sendSms(Ljava/lang/String;Ljava/lang/String;J)V

    .line 121
    const/4 v7, 0x1

    .line 122
    const-string/jumbo v1, "key_is_group"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 123
    const-string/jumbo v0, "msg_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    const-string/jumbo v0, "key_sort"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 127
    new-instance v0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;-><init>(Lcom/android/mms/ui/NotificationQuickReplyActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->start()V

    .line 136
    invoke-direct {p0, p2, p3, v5}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->sendMarkAsRead(JZ)V

    move v0, v7

    .line 140
    :cond_0
    return v0
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 156
    const v0, 0x7f0f012d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mReplyToTextView:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mReplyToTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 158
    iget-object v2, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgSenderAddress:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 157
    const v2, 0x7f070362

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v0, 0x7f0f012c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mBackImageButton:Landroid/widget/ImageButton;

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mBackImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/NotificationQuickReplyActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity$2;-><init>(Lcom/android/mms/ui/NotificationQuickReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f0f0130

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mViewMessageTextView:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mViewMessageTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/NotificationQuickReplyActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity$3;-><init>(Lcom/android/mms/ui/NotificationQuickReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v0, 0x7f0f003c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/NotificationQuickReplyActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity$4;-><init>(Lcom/android/mms/ui/NotificationQuickReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v0, 0x7f0f0039

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mReplyContent:Landroid/widget/EditText;

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mReplyContent:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/NotificationQuickReplyActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity$5;-><init>(Lcom/android/mms/ui/NotificationQuickReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 208
    return-void
.end method

.method private sendMarkAsRead(JZ)V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    .line 146
    const-class v1, Lcom/android/mms/ui/NotificationActionHandleReceiver;

    .line 145
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    const-string/jumbo v1, "com.android.mms.MARK_AS_READ"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v1, "msg_thread_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    const-string/jumbo v1, "key_is_group"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method private sendSms(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 211
    const-string/jumbo v0, ";"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-direct {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->getSmsSubscriptionId()I

    move-result v6

    .line 213
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 215
    :try_start_0
    invoke-virtual {v0, p3, p4}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->finish()V

    .line 221
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    :try_start_1
    const-string/jumbo v1, "QuickReplyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->finish()V

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->finish()V

    .line 218
    throw v0
.end method

.method private setSmsOrMmsSendButtonImage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0200fe

    const/4 v3, 0x1

    .line 238
    invoke-static {v3}, Lcom/android/mms/data/Contact;->getMe(Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/android/mms/ui/NotificationQuickReplyActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/NotificationQuickReplyActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mReplyContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 249
    :goto_0
    sget-object v1, Lcom/android/mms/ui/NotificationQuickReplyActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0, v1}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    sget-object v1, Lcom/android/mms/ui/NotificationQuickReplyActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 252
    const v2, 0x7f0200ff

    .line 251
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 268
    :goto_1
    return-void

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 264
    iget-object v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mSendImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->finish()V

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 104
    const/4 v1, 0x5

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 106
    const v0, 0x7f040047

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->setContentView(I)V

    .line 108
    invoke-direct {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->initViews()V

    .line 109
    invoke-direct {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->setSmsOrMmsSendButtonImage()V

    .line 110
    return-void

    .line 94
    :cond_2
    const-string/jumbo v1, "msg_thread_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgThreadId:J

    .line 95
    const-string/jumbo v1, "msg_sender"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgSenderAddress:Ljava/lang/String;

    .line 96
    const-string/jumbo v1, "msg_sub_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgSubId:I

    .line 97
    iget-wide v2, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity;->mMsgThreadId:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->handleRemoteInput(Landroid/content/Intent;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->finish()V

    .line 99
    return-void
.end method
