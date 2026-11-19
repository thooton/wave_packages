.class public Lcom/android/mms/ui/NewMessageAlertActivity;
.super Landroid/app/Activity;
.source "NewMessageAlertActivity.java"


# static fields
.field private static ALERT_POP_UP_HEADER:Ljava/lang/String;

.field private static mLaunchedUri:Ljava/lang/String;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mMessageAlertObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessageAlertObject;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageTextView:Landroid/widget/TextView;

.field private mNext:Landroid/widget/Button;

.field private mNoOfNotifications:I

.field private mNotificationPos:I

.field private mSenderTextView:Landroid/widget/TextView;

.field private mThreadId:Ljava/lang/Long;

.field private mTimeTextView:Landroid/widget/TextView;

.field private mView:Landroid/widget/Button;

.field private mViewCenter:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/NewMessageAlertActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNotificationPos:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/NewMessageAlertActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNotificationPos:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/NewMessageAlertActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageAlertActivity;->openMms()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/NewMessageAlertActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageAlertActivity;->setAlertData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNotificationPos:I

    .line 62
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mThreadId:Ljava/lang/Long;

    .line 51
    return-void
.end method

.method private formatTime(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openMms()V
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNoOfNotifications:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/android/mms/ui/NewMessageAlertActivity;->mLaunchedUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setAlertData()V
    .locals 6

    .prologue
    const v5, 0x7f0701e6

    const v4, 0x7f0701e5

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/NewMessageAlertActivity;->ALERT_POP_UP_HEADER:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mMessageAlertObjects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mMessageAlertObjects:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNotificationPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessageAlertObject;

    invoke-virtual {v0}, Lcom/android/mms/transaction/MessageAlertObject;->getmThreadId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mThreadId:Ljava/lang/Long;

    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mMessageAlertObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNoOfNotifications:I

    .line 114
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNoOfNotifications:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 115
    sget-object v0, Lcom/android/mms/ui/NewMessageAlertActivity;->ALERT_POP_UP_HEADER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://mms-sms/conversations/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mThreadId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/NewMessageAlertActivity;->mLaunchedUri:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mView:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mViewCenter:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 124
    :goto_0
    iget v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNotificationPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNoOfNotifications:I

    if-ne v0, v1, :cond_4

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mViewCenter:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mView:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mMessageAlertObjects:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNotificationPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessageAlertObject;

    invoke-virtual {v0}, Lcom/android/mms/transaction/MessageAlertObject;->getmBody()Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mTimeTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mMessageAlertObjects:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNotificationPos:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessageAlertObject;

    invoke-virtual {v0}, Lcom/android/mms/transaction/MessageAlertObject;->getmTime()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->formatTime(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mSenderTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mMessageAlertObjects:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNotificationPos:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessageAlertObject;

    invoke-virtual {v0}, Lcom/android/mms/transaction/MessageAlertObject;->getmSender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mMessageAlertObjects:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNotificationPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessageAlertObject;

    invoke-virtual {v0}, Lcom/android/mms/transaction/MessageAlertObject;->getmSenderNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->setImage(Ljava/lang/String;)V

    .line 141
    return-void

    .line 120
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/mms/ui/NewMessageAlertActivity;->ALERT_POP_UP_HEADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "                "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNotificationPos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNoOfNotifications:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mView:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mViewCenter:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mViewCenter:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mView:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private setImage(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 170
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p0, v1}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 172
    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 176
    const v2, 0x7f0b0037

    .line 175
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 177
    check-cast v0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 178
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 179
    const/4 v4, 0x1

    .line 178
    invoke-static {v2, v1, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "alertdata"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mMessageAlertObjects:Ljava/util/ArrayList;

    .line 74
    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->setContentView(I)V

    .line 76
    const v0, 0x7f0f0112

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mMessageTextView:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0f0111

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mTimeTextView:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0f0110

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mSenderTextView:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0f0064

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mImageView:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0f0113

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mView:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mView:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/NewMessageAlertActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageAlertActivity$1;-><init>(Lcom/android/mms/ui/NewMessageAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f0f0114

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNext:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mNext:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/NewMessageAlertActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageAlertActivity$2;-><init>(Lcom/android/mms/ui/NewMessageAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0f0115

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mViewCenter:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity;->mViewCenter:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/NewMessageAlertActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageAlertActivity$3;-><init>(Lcom/android/mms/ui/NewMessageAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageAlertActivity;->setAlertData()V

    .line 106
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 150
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageAlertActivity;->finish()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
