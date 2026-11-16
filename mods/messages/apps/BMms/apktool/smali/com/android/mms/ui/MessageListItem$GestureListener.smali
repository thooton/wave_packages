.class Lcom/android/mms/ui/MessageListItem$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$GestureListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem$GestureListener;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 916
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get2(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 917
    const-string/jumbo v1, "pref_key_enable_selectable_copy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get1(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 917
    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-wrap4(Lcom/android/mms/ui/MessageListItem;)V

    .line 922
    :cond_0
    return v2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 887
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    .line 887
    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->-wrap3(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;I)V

    .line 893
    return v3

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get1(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    .line 897
    array-length v0, v0

    if-nez v0, :cond_2

    .line 898
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_1

    .line 899
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMmsDownloadStatus()I

    move-result v0

    .line 900
    const/16 v1, 0x83

    .line 899
    if-eq v0, v1, :cond_1

    .line 901
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMmsDownloadStatus()I

    move-result v0

    .line 902
    const/16 v1, 0x81

    .line 901
    if-eq v0, v1, :cond_1

    .line 903
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->downloadAttachment()V

    .line 904
    return v3

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->-wrap3(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;I)V

    .line 911
    :goto_0
    return v3

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get2(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$GestureListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->-get1(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->onMessageContentClick(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_0
.end method
