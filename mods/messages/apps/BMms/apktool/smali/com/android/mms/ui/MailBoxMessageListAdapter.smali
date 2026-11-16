.class public Lcom/android/mms/ui/MailBoxMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailBoxMessageListAdapter.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MailBoxMessageListAdapter$OnListContentChangedListener;
    }
.end annotation


# static fields
.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan;


# instance fields
.field private mAddress:Ljava/lang/String;

.field mAvatarView:Landroid/widget/QuickContactBadge;

.field mBodyView:Landroid/widget/TextView;

.field mDateView:Landroid/widget/TextView;

.field mErrorIndicator:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field mImageViewLock:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListChangedListener:Lcom/android/mms/ui/MailBoxMessageListAdapter$OnListContentChangedListener;

.field private mListView:Landroid/widget/ListView;

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/BoxMessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgBox:I

.field private mMsgType:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field mNameView:Landroid/widget/TextView;

.field private mSubscription:I

.field private mWapPushAddressIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/MailBoxMessageListAdapter$OnListContentChangedListener;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 105
    invoke-direct {p0, p1, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mHandler:Landroid/os/Handler;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mSubscription:I

    move-object v0, p1

    .line 106
    check-cast v0, Landroid/app/ListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    iput-object p2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mListChangedListener:Lcom/android/mms/ui/MailBoxMessageListAdapter$OnListContentChangedListener;

    .line 110
    new-instance v0, Lcom/android/mms/ui/MailBoxMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/MailBoxMessageListAdapter$1;-><init>(Lcom/android/mms/ui/MailBoxMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mWapPushAddressIndex:I

    .line 117
    return-void
.end method

.method private static getKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    const-string/jumbo v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string/jumbo v0, ""

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAvatarView()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    const v1, 0x7f020063

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    const v2, 0x7f020066

    .line 140
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMsgType:Ljava/lang/String;

    const-string/jumbo v5, "mms"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMsgBox:I

    if-ne v2, v6, :cond_3

    :cond_0
    move v2, v4

    .line 149
    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    iget v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mSubscription:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 151
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 152
    const v2, 0x7f020064

    .line 151
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 154
    :goto_1
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    const v2, 0x7f020067

    .line 154
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mAddress:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 160
    iget-object v5, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMsgType:Ljava/lang/String;

    const-string/jumbo v6, "mms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 165
    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->isCreatedByMultipleCellPhone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 169
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 178
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 180
    return-void

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMsgType:Ljava/lang/String;

    const-string/jumbo v5, "sms"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMsgBox:I

    if-eq v2, v6, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 153
    const v2, 0x7f020065

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 155
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    const v2, 0x7f020068

    .line 155
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v1

    .line 163
    goto :goto_3

    .line 170
    :cond_8
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 171
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 172
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getWapPushNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v1, v2, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_4

    .line 174
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_4
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15

    .prologue
    .line 217
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const-string/jumbo v2, "MailBoxMessageListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bind: contacts.addListeners "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->cleanItemCache()V

    .line 223
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 224
    iput-object v9, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMsgType:Ljava/lang/String;

    .line 225
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 226
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 227
    const-string/jumbo v8, ""

    .line 228
    const-string/jumbo v7, ""

    .line 229
    const-string/jumbo v6, ""

    .line 230
    const-string/jumbo v5, ""

    .line 231
    const-string/jumbo v2, ""

    .line 235
    const/4 v2, 0x0

    .line 236
    const/4 v3, 0x0

    .line 237
    const/4 v4, 0x0

    .line 238
    const/4 v14, 0x1

    iput v14, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMsgBox:I

    .line 240
    const-string/jumbo v14, "sms"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 241
    move-object/from16 v0, p3

    invoke-virtual {p0, v9, v10, v11, v0}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/BoxMessageItem;

    move-result-object v6

    .line 242
    iget v2, v6, Lcom/android/mms/ui/BoxMessageItem;->mStatus:I

    .line 243
    iget v2, v6, Lcom/android/mms/ui/BoxMessageItem;->mSmsType:I

    iput v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMsgBox:I

    .line 244
    iget v2, v6, Lcom/android/mms/ui/BoxMessageItem;->mRead:I

    .line 245
    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 246
    :goto_0
    iget v3, v6, Lcom/android/mms/ui/BoxMessageItem;->mSubID:I

    iput v3, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mSubscription:I

    .line 247
    iget-object v8, v6, Lcom/android/mms/ui/BoxMessageItem;->mAddress:Ljava/lang/String;

    .line 248
    iget v3, v6, Lcom/android/mms/ui/BoxMessageItem;->mSmsType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    .line 249
    :goto_1
    iget-boolean v4, v6, Lcom/android/mms/ui/BoxMessageItem;->mLocked:Z

    .line 250
    iget-object v7, v6, Lcom/android/mms/ui/BoxMessageItem;->mBody:Ljava/lang/String;

    .line 251
    iget-object v5, v6, Lcom/android/mms/ui/BoxMessageItem;->mDateStr:Ljava/lang/String;

    .line 252
    iget-object v6, v6, Lcom/android/mms/ui/BoxMessageItem;->mName:Ljava/lang/String;

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v3

    move v3, v4

    move v4, v2

    .line 290
    :goto_2
    invoke-static/range {p2 .. p3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v10

    move-object/from16 v2, p1

    .line 291
    check-cast v2, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;

    .line 292
    iget-object v11, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v11

    .line 291
    invoke-virtual {v2, v4, v11, v10}, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->bind(ZZLcom/android/mms/data/Conversation;)V

    .line 295
    const v2, 0x7f0f00be

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mBodyView:Landroid/widget/TextView;

    .line 296
    const v2, 0x7f0f00c0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mDateView:Landroid/widget/TextView;

    .line 297
    const v2, 0x7f0f006f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mErrorIndicator:Landroid/widget/ImageView;

    .line 298
    const v2, 0x7f0f00bf

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mImageViewLock:Landroid/widget/ImageView;

    .line 299
    const v2, 0x7f0f00bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mNameView:Landroid/widget/TextView;

    .line 300
    const v2, 0x7f0f0064

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    iput-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 301
    iput-object v9, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mAddress:Ljava/lang/String;

    .line 302
    iput-object v7, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mName:Ljava/lang/String;

    .line 304
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 305
    const-string/jumbo v2, ":"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 306
    const-string/jumbo v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 308
    iget v9, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mWapPushAddressIndex:I

    aget-object v2, v2, v9

    .line 309
    iget v9, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mWapPushAddressIndex:I

    aget-object v7, v7, v9

    .line 307
    invoke-virtual {p0, v2, v7, v4}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->formatNameView(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 323
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->updateAvatarView()V

    .line 325
    iget-object v7, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mImageViewLock:Landroid/widget/ImageView;

    if-eqz v3, :cond_d

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mErrorIndicator:Landroid/widget/ImageView;

    if-eqz v5, :cond_e

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    if-eqz v4, :cond_f

    .line 332
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 333
    sget-object v3, Lcom/android/mms/ui/MailBoxMessageListAdapter;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x11

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 334
    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mBodyView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :goto_6
    return-void

    .line 245
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 248
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 253
    :cond_3
    const-string/jumbo v10, "mms"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 254
    const/16 v2, 0x11

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 255
    const/16 v2, 0x1a

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mSubscription:I

    .line 256
    const/16 v2, 0x12

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 257
    const/16 v2, 0x13

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMsgBox:I

    .line 258
    const/16 v2, 0x16

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 259
    const/16 v3, 0xa

    .line 258
    if-lt v2, v3, :cond_6

    const/4 v2, 0x1

    .line 260
    :goto_7
    const/16 v3, 0x17

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    .line 261
    :goto_8
    const/16 v6, 0x1b

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 263
    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMsgBox:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 264
    const/4 v4, 0x1

    .line 267
    :cond_4
    const/16 v5, 0xd

    .line 268
    const/16 v6, 0xe

    .line 267
    move-object/from16 v0, p3

    invoke-static {v0, v5, v6}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v5

    .line 269
    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 270
    iget-object v5, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f07012c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 273
    :cond_5
    const/16 v6, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 274
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v9, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    .line 278
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 279
    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v7, v8}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 280
    const/4 v7, 0x1

    invoke-static {v8, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v9, v8

    move-object v8, v5

    move v5, v2

    goto/16 :goto_2

    .line 258
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 260
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 281
    :cond_8
    const-wide/16 v8, 0x0

    cmp-long v7, v12, v8

    if-lez v7, :cond_9

    .line 282
    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 283
    const/4 v7, 0x1

    invoke-static {v8, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v9, v8

    move-object v8, v5

    move v5, v2

    goto/16 :goto_2

    .line 285
    :cond_9
    const-string/jumbo v8, ""

    .line 286
    const-string/jumbo v7, ""

    move-object v9, v8

    move-object v8, v5

    move v5, v2

    goto/16 :goto_2

    .line 311
    :cond_a
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 312
    const-string/jumbo v2, ":"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 313
    iget v7, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mWapPushAddressIndex:I

    aget-object v2, v2, v7

    .line 314
    iget-object v7, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mName:Ljava/lang/String;

    invoke-virtual {p0, v2, v7, v4}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->formatNameView(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 315
    :cond_b
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 316
    const-string/jumbo v2, ":"

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 317
    iget v7, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mWapPushAddressIndex:I

    aget-object v2, v2, v7

    .line 318
    iget-object v7, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, v7, v2, v4}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->formatNameView(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 320
    :cond_c
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mName:Ljava/lang/String;

    invoke-virtual {p0, v2, v7, v4}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->formatNameView(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 325
    :cond_d
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 328
    :cond_e
    const/16 v2, 0x8

    goto/16 :goto_5

    .line 336
    :cond_f
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mBodyView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_10
    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v2

    goto/16 :goto_2
.end method

.method public cleanItemCache()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 358
    return-void
.end method

.method public formatNameView(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 349
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 350
    sget-object v1, Lcom/android/mms/ui/MailBoxMessageListAdapter;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 351
    const/16 v4, 0x11

    .line 350
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    return-void

    .line 347
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/BoxMessageItem;
    .locals 8

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BoxMessageItem;

    .line 121
    if-nez v0, :cond_0

    .line 122
    new-instance v1, Lcom/android/mms/ui/BoxMessageItem;

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/BoxMessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/database/Cursor;)V

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v1, Lcom/android/mms/ui/BoxMessageItem;->mType:Ljava/lang/String;

    iget-wide v4, v1, Lcom/android/mms/ui/BoxMessageItem;->mMsgId:J

    invoke-static {v2, v4, v5}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->getKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 202
    int-to-long v0, p1

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 197
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 364
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mListChangedListener:Lcom/android/mms/ui/MailBoxMessageListAdapter$OnListContentChangedListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MailBoxMessageListAdapter$OnListContentChangedListener;->onListContentChanged()V

    .line 374
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3

    .prologue
    .line 183
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v0, "MailBoxMessageListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/MailBoxMessageListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MailBoxMessageListAdapter$2;-><init>(Lcom/android/mms/ui/MailBoxMessageListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public updateItemBackgroud(I)V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 207
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 208
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter;->mListView:Landroid/widget/ListView;

    sub-int v1, p1, v1

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 209
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 210
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 212
    check-cast v0, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->updateBackground()V

    .line 214
    return-void
.end method
