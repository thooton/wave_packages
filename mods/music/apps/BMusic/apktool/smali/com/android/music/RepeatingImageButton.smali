.class public Lcom/android/music/RepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "RepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/RepeatingImageButton$1;,
        Lcom/android/music/RepeatingImageButton$RepeatListener;
    }
.end annotation


# instance fields
.field private mInterval:J

.field private mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method static synthetic -get0(Lcom/android/music/RepeatingImageButton;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method static synthetic -wrap0(Lcom/android/music/RepeatingImageButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/music/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/music/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/android/music/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mInterval:J

    .line 116
    new-instance v0, Lcom/android/music/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/android/music/RepeatingImageButton$1;-><init>(Lcom/android/music/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 49
    invoke-virtual {p0, v2}, Lcom/android/music/RepeatingImageButton;->setFocusable(Z)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/music/RepeatingImageButton;->setLongClickable(Z)V

    .line 51
    return-void
.end method

.method private doRepeat(Z)V
    .locals 6

    .prologue
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 127
    iget-object v2, p0, Lcom/android/music/RepeatingImageButton;->mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/music/RepeatingImageButton;->mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    iget-wide v4, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    sub-long v4, v0, v4

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-interface {v2, p0, v4, v5, v0}, Lcom/android/music/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 131
    :cond_0
    return-void

    .line 129
    :cond_1
    iget v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/RepeatingImageButton;->mRepeatCount:I

    goto :goto_0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 90
    sparse-switch p1, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 95
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 96
    const/4 v0, 0x1

    return v0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 103
    sparse-switch p1, :sswitch_data_0

    .line 113
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 107
    :sswitch_0
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/music/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 108
    iget-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/RepeatingImageButton;->doRepeat(Z)V

    .line 110
    iput-wide v2, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    goto :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/music/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 80
    iget-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0, v2}, Lcom/android/music/RepeatingImageButton;->doRepeat(Z)V

    .line 82
    iput-wide v4, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    .line 85
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/RepeatingImageButton;->mStartTime:J

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeatCount:I

    .line 71
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/music/RepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/music/RepeatingImageButton;->mListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 64
    iput-wide p2, p0, Lcom/android/music/RepeatingImageButton;->mInterval:J

    .line 65
    return-void
.end method
