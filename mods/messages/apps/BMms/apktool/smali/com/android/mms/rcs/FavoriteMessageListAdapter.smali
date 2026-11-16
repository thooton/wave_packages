.class public Lcom/android/mms/rcs/FavoriteMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "FavoriteMessageListAdapter.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/FavoriteMessageListAdapter$OnListContentChangedListener;
    }
.end annotation


# static fields
.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan;


# instance fields
.field private mAddress:Ljava/lang/String;

.field mAvatarView:Landroid/widget/QuickContactBadge;

.field mBgReadDrawable:Landroid/graphics/drawable/Drawable;

.field mBgSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field mBgUnReadDrawable:Landroid/graphics/drawable/Drawable;

.field mBodyView:Landroid/widget/TextView;

.field mDateView:Landroid/widget/TextView;

.field mErrorIndicator:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field mImageViewLock:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListChangedListener:Lcom/android/mms/rcs/FavoriteMessageListAdapter$OnListContentChangedListener;

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

.field private mName:Ljava/lang/String;

.field mNameView:Landroid/widget/TextView;

.field private mSubscription:I

.field private mWapPushAddressIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/rcs/FavoriteMessageListAdapter$OnListContentChangedListener;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0, p1, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mHandler:Landroid/os/Handler;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mSubscription:I

    move-object v0, p1

    .line 89
    check-cast v0, Landroid/app/ListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 91
    iput-object p2, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mListChangedListener:Lcom/android/mms/rcs/FavoriteMessageListAdapter$OnListContentChangedListener;

    .line 92
    new-instance v0, Lcom/android/mms/rcs/FavoriteMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/rcs/FavoriteMessageListAdapter$1;-><init>(Lcom/android/mms/rcs/FavoriteMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mWapPushAddressIndex:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    const v1, 0x7f0200c1

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mBgSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    const v1, 0x7f020018

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mBgUnReadDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    const v1, 0x7f020017

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mBgReadDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    return-void
.end method

.method private updateAvatarView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 121
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 137
    return-void

    .line 127
    :cond_0
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 129
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getWapPushNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v2, v1, v3}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 175
    const-string/jumbo v0, "Mms"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "FavoriteMessageListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bind: contacts.addListeners "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->cleanItemCache()V

    .line 182
    const-string/jumbo v0, "msg_id"

    .line 181
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 184
    const-string/jumbo v0, "thread_id"

    .line 183
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 186
    const-string/jumbo v0, "number"

    .line 185
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 188
    const-string/jumbo v0, "body"

    .line 187
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 189
    const-string/jumbo v0, ""

    .line 190
    const-string/jumbo v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    const-string/jumbo v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    move v0, v1

    .line 192
    :goto_0
    array-length v3, v8

    if-ge v0, v3, :cond_5

    .line 193
    aget-object v3, v8, v0

    invoke-static {v3, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    .line 194
    if-eqz v3, :cond_1

    const-string/jumbo v9, ""

    if-ne v3, v9, :cond_2

    .line 195
    :cond_1
    aget-object v3, v8, v0

    .line 197
    :cond_2
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    if-eq v0, v9, :cond_3

    .line 198
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_4
    invoke-static {v6, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 206
    :cond_5
    const-string/jumbo v0, "date"

    .line 205
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 208
    const-string/jumbo v0, "msg_type"

    .line 207
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 209
    invoke-static {p2, v8, v9, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {p2, v7, v0}, Lcom/android/mms/rcs/RcsUtils;->formatConversationSnippet(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 211
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mBgSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :goto_1
    const v0, 0x7f0f00be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mBodyView:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0f00c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mDateView:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f0f006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mErrorIndicator:Landroid/widget/ImageView;

    .line 220
    const v0, 0x7f0f00bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mImageViewLock:Landroid/widget/ImageView;

    .line 221
    const v0, 0x7f0f00bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mNameView:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0f0064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 223
    iput-object v6, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAddress:Ljava/lang/String;

    .line 224
    iput-object v2, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mName:Ljava/lang/String;

    .line 226
    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 227
    const-string/jumbo v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string/jumbo v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 230
    iget v6, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mWapPushAddressIndex:I

    aget-object v0, v0, v6

    .line 231
    iget v6, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mWapPushAddressIndex:I

    aget-object v2, v2, v6

    .line 229
    invoke-virtual {p0, v0, v2}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->formatNameView(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->updateAvatarView()V

    .line 245
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Landroid/widget/QuickContactBadge;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 246
    if-eqz v0, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/QuickContactBadge;->setTag(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mErrorIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mBodyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void

    .line 214
    :cond_7
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 232
    :cond_8
    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 233
    const-string/jumbo v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 234
    iget v2, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mWapPushAddressIndex:I

    aget-object v0, v0, v2

    .line 235
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->formatNameView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 236
    :cond_9
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 237
    const-string/jumbo v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 238
    iget v2, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mWapPushAddressIndex:I

    aget-object v0, v0, v2

    .line 239
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->formatNameView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 241
    :cond_a
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->formatNameView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public cleanItemCache()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 273
    return-void
.end method

.method public formatNameView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, " "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 268
    :goto_0
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    return-void

    .line 263
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 266
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 157
    int-to-long v0, p1

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 278
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 279
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mListChangedListener:Lcom/android/mms/rcs/FavoriteMessageListAdapter$OnListContentChangedListener;

    invoke-interface {v0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter$OnListContentChangedListener;->onListContentChanged()V

    .line 289
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3

    .prologue
    .line 140
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string/jumbo v0, "FavoriteMessageListAdapter"

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

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/rcs/FavoriteMessageListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter$2;-><init>(Lcom/android/mms/rcs/FavoriteMessageListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method public updateItemBackgroud(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 162
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 163
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 164
    :cond_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->mBgSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
