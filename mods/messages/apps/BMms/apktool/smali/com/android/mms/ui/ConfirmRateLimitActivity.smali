.class public Lcom/android/mms/ui/ConfirmRateLimitActivity;
.super Landroid/app/Activity;
.source "ConfirmRateLimitActivity.java"


# instance fields
.field private mCreateTime:J

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/mms/ui/ConfirmRateLimitActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->doAnswer(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doAnswer(Z)V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.mms.RATE_LIMIT_CONFIRMED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v1, "answer"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->finish()V

    .line 119
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->requestWindowFeature(I)Z

    .line 52
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f0f0061

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    new-instance v1, Lcom/android/mms/ui/ConfirmRateLimitActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConfirmRateLimitActivity$1;-><init>(Lcom/android/mms/ui/ConfirmRateLimitActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0f0062

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    new-instance v1, Lcom/android/mms/ui/ConfirmRateLimitActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConfirmRateLimitActivity$2;-><init>(Lcom/android/mms/ui/ConfirmRateLimitActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/android/mms/ui/ConfirmRateLimitActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConfirmRateLimitActivity$3;-><init>(Lcom/android/mms/ui/ConfirmRateLimitActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mRunnable:Ljava/lang/Runnable;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mCreateTime:J

    .line 79
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 108
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->doAnswer(Z)V

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    iget-wide v0, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mCreateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 86
    const-wide/16 v2, 0x4c2c

    .line 85
    add-long/2addr v0, v2

    .line 88
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->doAnswer(Z)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
