.class public Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;
.super Ljava/lang/Object;
.source "ComposeMessageCreateGroupChatCallback.java"


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mContext:Landroid/app/Activity;

    .line 38
    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mContext:Landroid/app/Activity;

    const v1, 0x7f070312

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mContext:Landroid/app/Activity;

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mContext:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v0, v1, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 46
    :cond_1
    return-void
.end method

.method public onDone(Z)V
    .locals 3

    .prologue
    .line 49
    if-eqz p1, :cond_0

    const v0, 0x7f07000c

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mContext:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    return-void

    .line 50
    :cond_0
    const v0, 0x7f07000d

    goto :goto_0
.end method

.method public onEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 57
    iput-object v1, p0, Lcom/android/mms/rcs/ComposeMessageCreateGroupChatCallback;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 59
    :cond_0
    return-void
.end method
