.class public final Lcom/android/mms/ui/MessageListView;
.super Lcom/android/mms/ui/zoom/ZoomMessageListView;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mOnSizeChangedListener:Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/mms/ui/zoom/ZoomMessageListView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/zoom/ZoomMessageListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 40
    packed-switch p1, :pswitch_data_0

    .line 56
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mms/ui/zoom/ZoomMessageListView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 42
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 43
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 50
    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/4 v0, 0x1

    return v0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/zoom/ZoomMessageListView;->onSizeChanged(IIII)V

    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mOnSizeChangedListener:Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mOnSizeChangedListener:Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;->onSizeChanged(IIII)V

    .line 66
    :cond_0
    return-void
.end method

.method setOnSizeChangedListener(Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mOnSizeChangedListener:Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;

    .line 74
    return-void
.end method
