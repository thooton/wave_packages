.class public Lcom/android/mms/rcs/RcsNotificationMessageListItem;
.super Landroid/widget/RelativeLayout;
.source "RcsNotificationMessageListItem.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/android/mms/rcs/RcsNotificationMessageListItem;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-object p1, p0, Lcom/android/mms/rcs/RcsNotificationMessageListItem;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object p1, p0, Lcom/android/mms/rcs/RcsNotificationMessageListItem;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 78
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0, p1}, Lcom/android/mms/rcs/RcsNotificationMessageListItem;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/rcs/RcsNotificationMessageListItem;->setLongClickable(Z)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/mms/rcs/RcsNotificationMessageListItem;->setClickable(Z)V

    .line 69
    iget v0, p2, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/mms/rcs/RcsNotificationMessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsUtils;->getStringOfNotificationBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/mms/rcs/RcsNotificationMessageListItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 59
    const v0, 0x7f0f0093

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/RcsNotificationMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsNotificationMessageListItem;->mText:Landroid/widget/TextView;

    .line 60
    return-void
.end method
