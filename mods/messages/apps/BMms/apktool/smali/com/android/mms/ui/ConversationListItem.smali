.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/widget/RelativeLayout;
.source "ConversationListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Landroid/widget/Checkable;


# static fields
.field public static final ITALIC:Landroid/text/style/StyleSpan;

.field public static final STYLE_BOLD:Landroid/text/style/StyleSpan;

.field private static sDefaultCheckedImageDrawable:Landroid/graphics/drawable/Drawable;

.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;

.field private static sDefaultGroupChatImage:Landroid/graphics/drawable/Drawable;

.field private static sDefaultGroupContactImage:Landroid/graphics/drawable/Drawable;

.field private static sDefaultToPcChatImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field volatile mWaveContactUpdates:Ljava/lang/Object;

.field private isLastMessageMms:Z

.field private mAttachmentInfoView:Landroid/widget/TextView;

.field private mAttachmentStatusSubView:Landroid/widget/TextView;

.field private mAttachmentStatusView:Landroid/widget/TextView;

.field private mAttachmentView:Landroid/view/View;

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDateView:Landroid/widget/TextView;

.field private mErrorIndicator:Landroid/view/View;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mSendFailView:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;


# direct methods
.method waveRefreshRecipients()V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    .line 114
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->ITALIC:Landroid/text/style/StyleSpan;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    .line 123
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 127
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultGroupChatImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    const v1, 0x7f0200f2

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultGroupChatImage:Landroid/graphics/drawable/Drawable;

    .line 131
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultToPcChatImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    const v1, 0x7f0200f5

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultToPcChatImage:Landroid/graphics/drawable/Drawable;

    .line 135
    :cond_2
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultCheckedImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultCheckedImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_3
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultGroupContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    const v1, 0x7f020106

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultGroupContactImage:Landroid/graphics/drawable/Drawable;

    .line 142
    :cond_4
    return-void
.end method

.method private formatMessage()Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const/16 v9, 0x202c

    const v8, 0x3fa66666    # 1.3f

    const/16 v7, 0x11

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 181
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 200
    const v4, 0x7f0a0005

    .line 199
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    aget-object v0, v0, v1

    .line 207
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 208
    invoke-static {}, Lcom/android/mms/ui/WaveInboxUi;->isRtlLocale()Z

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_d

    .line 212
    invoke-static {v0}, Lcom/android/mms/ui/WaveInboxUi;->hasNoArabicChars(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x202d

    if-eq v4, v6, :cond_c

    .line 216
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x202d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 223
    :goto_2
    # PERF: for read, non-draft inbox rows at normal fontScale, skip allocating
    # a SpannableStringBuilder with zero spans and return the plain String directly.
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v4

    if-nez v4, :wave_alloc_ssb

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v4

    if-nez v4, :wave_alloc_ssb

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v8

    if-eqz v4, :wave_alloc_ssb

    return-object v1

    :wave_alloc_ssb
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 227
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x202e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070283

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 231
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 232
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020111

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 231
    invoke-direct {v1, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 233
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    sub-int v0, v5, v0

    add-int/lit8 v0, v0, 0x1

    .line 231
    invoke-virtual {v4, v1, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 234
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f07012b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 237
    const v1, 0x1030046

    .line 238
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 239
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 238
    invoke-virtual {v4, v5, v2, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 240
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 241
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020110

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 240
    invoke-direct {v1, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 242
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    sub-int v0, v5, v0

    add-int/lit8 v0, v0, 0x1

    .line 240
    invoke-virtual {v4, v1, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 252
    :cond_1
    :goto_3
    # PERF: read fontScale directly from Resources Configuration in memory instead of
    # synchronous Settings.System.getFloat("font_scale") SettingsProvider Binder IPC per inbox row.
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 255
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 256
    sget-object v1, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v4, v1, v3, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 258
    cmpl-float v0, v0, v8

    if-nez v0, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 260
    const v2, 0x7f0b001c

    .line 259
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 271
    :cond_2
    :goto_4
    return-object v4

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_4

    .line 187
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->getDisplayName(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-static {v0, v1}, Lcom/android/mms/data/WavePhoneSnapshot;->formatNames(Lcom/android/mms/data/ContactList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-static {v0, v1}, Lcom/android/mms/data/WavePhoneSnapshot;->formatNames(Lcom/android/mms/data/ContactList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 208
    goto/16 :goto_1

    :cond_8
    move-object v1, v0

    move-object v0, v4

    .line 210
    goto/16 :goto_2

    .line 244
    :cond_9
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 245
    const v2, 0x7f07012b

    .line 244
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 246
    sget-object v1, Lcom/android/mms/ui/ConversationListItem;->ITALIC:Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 248
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 263
    :cond_a
    cmpl-float v0, v0, v8

    if-eqz v0, :cond_b

    .line 264
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0019

    invoke-static {v1, v2}, Lcom/android/mms/ui/WaveInboxUi;->getDimenPxCached(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4

    .line 267
    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0b001a

    invoke-static {v1, v2}, Lcom/android/mms/ui/WaveInboxUi;->getDimenPxCached(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4

    :cond_c
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_2

    :cond_d
    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_2
.end method

.method private formateUnreadToBold(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    if-nez p1, :wave_nonnull

    const/4 v0, 0x0

    return-object v0

    :wave_nonnull
    # PERF: skip allocating SpannableStringBuilder on every read inbox row.
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v1

    if-nez v1, :wave_bold

    return-object p1

    :wave_bold
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 572
    sget-object v1, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 573
    const/16 v4, 0x11

    .line 572
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 576
    return-object v0
.end method

.method private setContactDrawable(Landroid/widget/QuickContactBadge;Lcom/android/mms/data/Contact;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 340
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 341
    invoke-virtual {p1, v3}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 345
    if-eqz p3, :cond_0

    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultGroupContactImage:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    .line 346
    :goto_0
    if-nez p2, :cond_1

    .line 347
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultCheckedImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 348
    const v1, 0x7f0200fd

    invoke-virtual {p1, v1}, Landroid/widget/QuickContactBadge;->setBackgroundResource(I)V

    .line 349
    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    invoke-virtual {p1, v5}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 351
    return-void

    .line 345
    :cond_0
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, v1}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 354
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 355
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getNameForAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/LetterTileDrawable;->isEnglishLetterString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    .line 357
    invoke-static {v0, p1, p2}, Lcom/android/mms/ui/WaveInboxUi;->obtainLetterImageDrawable(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 369
    :goto_1
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 384
    :goto_2
    invoke-static {p1, v0}, Lcom/android/mms/ui/WaveInboxUi;->setImageDrawableIfChanged(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 385
    invoke-static {p1, v5}, Lcom/android/mms/ui/WaveMessageUi;->setVisibilityIfChanged(Landroid/view/View;I)V

    .line 386
    return-void

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/mms/ui/WaveInboxUi;->applyLetterAvatar(Landroid/content/Context;Landroid/widget/QuickContactBadge;Lcom/android/mms/data/Contact;)V

    goto :goto_1

    .line 365
    :cond_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/QuickContactBadge;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 366
    invoke-virtual {p1, v3}, Landroid/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 372
    :cond_4
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 373
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 380
    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/mms/ui/WaveInboxUi;->applyLetterAvatar(Landroid/content/Context;Landroid/widget/QuickContactBadge;Lcom/android/mms/data/Contact;)V

    goto :goto_2

    .line 374
    :cond_5
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 376
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getWapPushNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {p1, v1, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_3

    .line 378
    :cond_6
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method private setGroupAvatar(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 308
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 309
    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 337
    return-void
.end method

.method private updateAttachmentView(Ljava/lang/String;)V
    .locals 8

    .prologue
    const v7, 0x7f070145

    const v6, 0x7f07013e

    const/high16 v5, -0x1000000

    const/4 v0, 0x0

    const/16 v4, 0x8

    .line 500
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListItem;->isLastMessageMms:Z

    if-eqz v1, :cond_5

    .line 501
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getLastMessageStatus()I

    move-result v1

    .line 515
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusSubView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    sparse-switch v1, :sswitch_data_0

    .line 552
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusView:Landroid/widget/TextView;

    const v2, 0x7f070144

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 554
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusSubView:Landroid/widget/TextView;

    const v2, 0x7f070141

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 555
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusSubView:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 556
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    :goto_1
    return-void

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentInfoView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListItem;->formateUnreadToBold(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 520
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 521
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusSubView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 522
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusSubView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 527
    :sswitch_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v1

    .line 529
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 530
    const/4 v3, 0x3

    .line 529
    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 531
    :cond_2
    if-nez v0, :cond_4

    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    if-eqz v1, :cond_3

    .line 534
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 535
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusSubView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 536
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusSubView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusSubView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusView:Landroid/widget/TextView;

    const v1, 0x7f070140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 546
    :cond_4
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusSubView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 561
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusSubView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 517
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x80 -> :sswitch_1
        0x81 -> :sswitch_0
        0x83 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateAvatarView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 275
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    sget-object v1, Lcom/android/mms/ui/ConversationListItem;->sDefaultGroupChatImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 280
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    sget-object v1, Lcom/android/mms/ui/ConversationListItem;->sDefaultToPcChatImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 286
    return-void

    .line 290
    :cond_1
    const v0, 0x7f0f0063

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 292
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/ui/ConversationListItem;->setContactDrawable(Landroid/widget/QuickContactBadge;Lcom/android/mms/data/Contact;Z)V

    .line 294
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v0, v1}, Lcom/android/mms/ui/WaveInboxUi;->ensureSingleAvatarChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 304
    :goto_0
    return-void

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 297
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 298
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, v2, v1, v3}, Lcom/android/mms/ui/ConversationListItem;->setContactDrawable(Landroid/widget/QuickContactBadge;Lcom/android/mms/data/Contact;Z)V

    .line 299
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-static {v0, v1}, Lcom/android/mms/ui/WaveInboxUi;->ensureSingleAvatarChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0

    .line 301
    :cond_3
    invoke-static {v0}, Lcom/android/mms/ui/WaveInboxUi;->setGroupAvatar(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private updateBackground()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const v0, 0x7f080020

    .line 588
    :goto_0
    invoke-static {p0, v0}, Lcom/android/mms/ui/WaveInboxUi;->updateBackground(Lcom/android/mms/ui/ConversationListItem;I)V

    .line 590
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    const v0, 0x7f020018

    goto :goto_0

    .line 586
    :cond_1
    const v0, 0x7f020017

    goto :goto_0
.end method

.method private updateFromView()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/WaveInboxUi;->setTextIfChanged(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 390
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 391
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 407
    iput-object p2, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    # PERF(inbox recipients): subscribe before the first read, so a fast lookup
    # can't finish between formatting the old name and adding the listener.
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;
    move-result-object v0
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;
    invoke-static {p0, v5, v0}, Lcom/android/mms/ui/WaveInboxContactUpdates;->bind(Lcom/android/mms/ui/ConversationListItem;Landroid/os/Handler;Lcom/android/mms/data/ContactList;)V
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 408
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getAttachmentInfo()Ljava/lang/String;

    move-result-object v3

    .line 409
    const-string/jumbo v0, "SMS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->isLastMessageMms:Z

    .line 418
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateBackground()V

    .line 420
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v4

    .line 422
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v0

    .line 423
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentView:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v5, v0}, Lcom/android/mms/ui/WaveMessageUi;->setVisibilityIfChanged(Landroid/view/View;I)V

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 427
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v6

    .line 426
    invoke-static {p1, v6, v7}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationListItem;->formateUnreadToBold(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/mms/ui/WaveInboxUi;->setTextIfChanged(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/mms/ui/WaveInboxUi;->setTextIfChanged(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    .line 439
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 440
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRcsLastMsgId()I

    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 444
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v6

    .line 443
    invoke-static {p1, v6, v7}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationListItem;->formateUnreadToBold(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/mms/ui/WaveInboxUi;->setTextIfChanged(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 448
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRcsLastMsgType()I

    move-result v6

    .line 447
    invoke-static {v0, v5, v6}, Lcom/android/mms/rcs/RcsUtils;->formatConversationSnippet(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 451
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    :goto_1
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 456
    invoke-static {p1, v0}, Lcom/android/mms/rcs/RcsUtils;->getStringOfNotificationBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    if-eqz v4, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSendFailView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    .line 484
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationListItem;->updateAttachmentView(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 488
    sget-object v0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSelectedThreadIds:Ljava/util/HashSet;

    .line 489
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_c

    if-eqz v0, :cond_c

    .line 490
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 489
    if-eqz v0, :cond_c

    .line 490
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_c

    .line 491
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->toggleCheckBox(Z)V

    .line 497
    :cond_2
    :goto_5
    # FEAT(imessage): clean media/reply/notice snippets in conversation list.
    invoke-static {p0, p2}, Lcom/android/mms/ui/WaveInboxUi;->onBind(Lcom/android/mms/ui/ConversationListItem;Lcom/android/mms/data/Conversation;)V

    return-void

    :cond_3
    move v0, v2

    .line 423
    goto/16 :goto_0

    .line 453
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 458
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 459
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 460
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x11

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 461
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 463
    :cond_6
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-static {v5, v0}, Lcom/android/mms/ui/WaveInboxUi;->setTextIfChanged(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 466
    :cond_7
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 468
    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListItem;->isLastMessageMms:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    .line 469
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/mms/ui/WaveInboxUi;->prependMmsPrefix(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->formateUnreadToBold(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/mms/ui/WaveInboxUi;->setTextIfChanged(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/mms/ui/WaveMessageUi;->setVisibilityIfChanged(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 474
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    move v0, v2

    .line 479
    goto/16 :goto_3

    :cond_b
    move v2, v1

    .line 481
    goto/16 :goto_4

    .line 493
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListItem;->toggleCheckBox(Z)V

    goto/16 :goto_5
.end method

.method public bind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public bindAvatar(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 627
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 629
    return-void
.end method

.method public getConversation()Lcom/android/mms/data/Conversation;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 147
    const v0, 0x7f0f0066

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0f003b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0f006b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0f0069

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentInfoView:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0f0067

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusView:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0f0068

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentStatusSubView:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0f006a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSendFailView:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0f006d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAttachmentView:Landroid/view/View;

    .line 156
    const v0, 0x7f0f006f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mErrorIndicator:Landroid/view/View;

    .line 157
    const v0, 0x7f0f0064

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 159
    const v0, 0x7f0f0070

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 160
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 0

    # PERF(inbox recipients): don't redraw all visible rows for unrelated contacts.
    invoke-static {p0, p1}, Lcom/android/mms/ui/WaveInboxContactUpdates;->changed(Lcom/android/mms/ui/ConversationListItem;Lcom/android/mms/data/Contact;)V
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->setIsChecked(Z)V

    .line 604
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setIsChecked(Z)V

    .line 618
    return-void
.end method

.method public toggleCheckBox(Z)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    return-void
.end method

.method public final unbind()V
    .locals 3

    .prologue
    .line 593
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbind: contacts.removeListeners "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/WaveInboxContactUpdates;->unbind(Lcom/android/mms/ui/ConversationListItem;)V
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 598
    return-void
.end method
