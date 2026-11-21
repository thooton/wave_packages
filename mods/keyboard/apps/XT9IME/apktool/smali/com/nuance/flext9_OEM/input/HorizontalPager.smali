.class public final Lcom/nuance/flext9_OEM/input/HorizontalPager;
.super Landroid/view/ViewGroup;
.source "HorizontalPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/HorizontalPager$OnScreenSwitchListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCREEN_SET_DURATION_MILLIS:I = 0x1f4

.field private static final FRACTION_OF_SCREEN_WIDTH_FOR_SWIPE:I = 0x6

.field private static final IF_INVALID_SCREEN:I = -0x1

.field private static final STATE_HORIZONTAL_SCROLLING:I = 0x1

.field private static final STATE_REST:I = 0x0

.field private static final STATE_VERTICAL_SCROLLING:I = -0x1

.field private static final UNIT_PIXELS_PER_SECOND:I = 0x3e8

.field private static final VELOCITY_PER_SECOND:I = 0x258


# instance fields
.field private mCurrentPage:I

.field private mDensityAdjustedVelocity:I

.field private mInitialLayout:Z

.field private mLastCurrentLayoutWidth:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOnScreenSwitchListener:Lcom/nuance/flext9_OEM/input/HorizontalPager$OnScreenSwitchListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 65
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mInitialLayout:Z

    .line 58
    iput v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mNextScreen:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    .line 63
    iput v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastCurrentLayoutWidth:I

    .line 66
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mInitialLayout:Z

    .line 58
    iput v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mNextScreen:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    .line 63
    iput v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastCurrentLayoutWidth:I

    .line 70
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->init()V

    .line 71
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mScroller:Landroid/widget/Scroller;

    .line 76
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 80
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44160000    # 600.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 79
    iput v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mDensityAdjustedVelocity:I

    .line 81
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchSlop:I

    .line 83
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mMaximumVelocity:I

    .line 84
    return-void
.end method

.method private snapToDestination()V
    .locals 5

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getWidth()I

    move-result v1

    .line 281
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getScrollX()I

    move-result v2

    .line 282
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    .line 283
    iget v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    mul-int/2addr v3, v1

    sub-int/2addr v2, v3

    .line 284
    if-gez v2, :cond_1

    iget v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    if-eqz v3, :cond_1

    .line 285
    div-int/lit8 v3, v1, 0x6

    neg-int v4, v2

    if-ge v3, v4, :cond_1

    .line 286
    add-int/lit8 v0, v0, -0x1

    .line 291
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->snapToScreen(I)V

    .line 292
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->setFocusForcategory(I)V

    .line 293
    return-void

    .line 287
    :cond_1
    if-lez v2, :cond_0

    iget v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildCount()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 288
    div-int/lit8 v1, v1, 0x6

    if-ge v1, v2, :cond_0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private snapToScreen(I)V
    .locals 1

    .prologue
    .line 295
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->snapToScreen(II)V

    .line 296
    return-void
.end method

.method private snapToScreen(II)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mNextScreen:I

    .line 299
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mNextScreen:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    .line 300
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 302
    if-gez p2, :cond_0

    .line 303
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    .line 304
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 303
    div-float/2addr v4, v5

    .line 304
    const/high16 v5, 0x43fa0000    # 500.0f

    .line 303
    mul-float/2addr v4, v5

    float-to-int v5, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->invalidate()V

    .line 309
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getScrollX()I

    move-result v1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 252
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->scrollTo(II)V

    .line 254
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->postInvalidate()V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mNextScreen:I

    if-eq v0, v2, :cond_0

    .line 256
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mNextScreen:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    .line 257
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mOnScreenSwitchListener:Lcom/nuance/flext9_OEM/input/HorizontalPager$OnScreenSwitchListener;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mOnScreenSwitchListener:Lcom/nuance/flext9_OEM/input/HorizontalPager$OnScreenSwitchListener;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    invoke-interface {v0, v1}, Lcom/nuance/flext9_OEM/input/HorizontalPager$OnScreenSwitchListener;->onScreenSwitched(I)V

    .line 260
    :cond_2
    iput v2, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mNextScreen:I

    goto :goto_0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 129
    packed-switch v2, :pswitch_data_0

    .line 171
    :goto_0
    return v1

    .line 131
    :pswitch_0
    iget v2, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    if-ne v2, v0, :cond_0

    :goto_1
    move v1, v0

    .line 153
    goto :goto_0

    .line 133
    :cond_0
    iget v2, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    if-ne v2, v5, :cond_1

    move v0, v1

    .line 135
    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 138
    iget v2, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastMotionX:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 139
    iget v4, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchSlop:I

    if-le v2, v4, :cond_3

    move v2, v0

    .line 141
    :goto_2
    if-eqz v2, :cond_2

    .line 143
    iput v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    .line 144
    iput v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastMotionX:F

    .line 146
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 147
    iget v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 148
    iget v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchSlop:I

    if-le v2, v3, :cond_4

    .line 149
    :goto_3
    if-eqz v0, :cond_5

    .line 150
    iput v5, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    .line 139
    goto :goto_2

    :cond_4
    move v0, v1

    .line 148
    goto :goto_3

    .line 157
    :pswitch_1
    iput v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    goto :goto_0

    .line 164
    :pswitch_2
    iput v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastMotionY:F

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastMotionX:F

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 116
    :goto_0
    if-ge v1, v3, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 119
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 120
    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 121
    add-int/2addr v0, v5

    .line 116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 89
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 91
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildCount()I

    move-result v1

    move v0, v2

    .line 92
    :goto_0
    if-ge v0, v1, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mInitialLayout:Z

    if-eqz v0, :cond_2

    .line 96
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    mul-int/2addr v0, v6

    invoke-virtual {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->scrollTo(II)V

    .line 97
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mInitialLayout:Z

    .line 109
    :cond_1
    :goto_1
    iput v6, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastCurrentLayoutWidth:I

    .line 110
    return-void

    .line 99
    :cond_2
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastCurrentLayoutWidth:I

    if-eq v6, v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 104
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mNextScreen:I

    .line 105
    iget v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mNextScreen:I

    mul-int/2addr v0, v1

    .line 106
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 107
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getScrollX()I

    move-result v1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 181
    packed-switch v0, :pswitch_data_0

    .line 248
    :cond_1
    :goto_0
    return v1

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 187
    :cond_2
    iput v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastMotionX:F

    .line 188
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iput v2, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    goto :goto_0

    .line 191
    :cond_3
    iput v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    goto :goto_0

    .line 195
    :pswitch_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastMotionX:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 196
    iget v4, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchSlop:I

    if-le v0, v4, :cond_5

    move v0, v1

    .line 197
    :goto_1
    if-eqz v0, :cond_4

    .line 199
    iput v1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    .line 201
    :cond_4
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    if-ne v0, v1, :cond_1

    .line 203
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastMotionX:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 204
    iput v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mLastMotionX:F

    .line 205
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getScrollX()I

    move-result v3

    .line 206
    if-gez v0, :cond_6

    .line 207
    if-lez v3, :cond_1

    .line 208
    neg-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->scrollBy(II)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 196
    goto :goto_1

    .line 210
    :cond_6
    if-lez v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v3, v4, v3

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 213
    if-lez v3, :cond_1

    .line 214
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->scrollBy(II)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    if-ne v0, v1, :cond_7

    .line 221
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 223
    iget v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mMaximumVelocity:I

    int-to-float v3, v3

    .line 222
    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 224
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 225
    iget v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mDensityAdjustedVelocity:I

    if-le v0, v3, :cond_8

    iget v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    if-lez v3, :cond_8

    .line 227
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->snapToScreen(I)V

    .line 235
    :goto_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 236
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 237
    iput-object v5, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 240
    :cond_7
    iput v2, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    goto/16 :goto_0

    .line 228
    :cond_8
    iget v3, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mDensityAdjustedVelocity:I

    neg-int v3, v3

    if-ge v0, v3, :cond_9

    .line 229
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 231
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->snapToScreen(I)V

    goto :goto_2

    .line 233
    :cond_9
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->snapToDestination()V

    goto :goto_2

    .line 243
    :pswitch_3
    iput v2, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mTouchState:I

    goto/16 :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setCurrentScreen(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    .line 269
    if-eqz p2, :cond_0

    .line 270
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->snapToScreen(II)V

    .line 274
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->invalidate()V

    .line 275
    return-void

    .line 272
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->scrollTo(II)V

    goto :goto_0
.end method

.method public setOnScreenSwitchListener(Lcom/nuance/flext9_OEM/input/HorizontalPager$OnScreenSwitchListener;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HorizontalPager;->mOnScreenSwitchListener:Lcom/nuance/flext9_OEM/input/HorizontalPager$OnScreenSwitchListener;

    .line 278
    return-void
.end method
