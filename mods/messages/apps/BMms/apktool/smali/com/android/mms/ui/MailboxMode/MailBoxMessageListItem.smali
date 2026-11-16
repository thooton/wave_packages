.class public Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;
.super Landroid/widget/LinearLayout;
.source "MailBoxMessageListItem.java"


# instance fields
.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mIsUnread:Z

.field private mPosition:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method


# virtual methods
.method public bind(ZZLcom/android/mms/data/Conversation;)V
    .locals 0

    .prologue
    .line 54
    iput-object p3, p0, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->mConversation:Lcom/android/mms/data/Conversation;

    .line 55
    iput-boolean p2, p0, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->mPosition:Z

    .line 56
    iput-boolean p1, p0, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->mIsUnread:Z

    .line 57
    invoke-virtual {p0}, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->updateBackground()V

    .line 58
    return-void
.end method

.method public updateBackground()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->mPosition:Z

    if-eqz v0, :cond_0

    .line 63
    const v0, 0x7f080020

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/MailboxMode/MailBoxMessageListItem;->mIsUnread:Z

    if-eqz v0, :cond_1

    .line 65
    const v0, 0x7f020018

    goto :goto_0

    .line 67
    :cond_1
    const v0, 0x7f020017

    goto :goto_0
.end method
