.class public Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;
.super Lcom/nuance/flext9_OEM/input/HandWritingView;
.source "AlphaHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$1;,
        Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;,
        Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;
    }
.end annotation


# static fields
.field private static final FADING_DELAY:I = 0x2

.field private static final MSG_FADING:I = 0x1

.field private static final PEN_WIDTH:I = 0x6


# instance fields
.field private mDensity:F

.field private mFaddingStarted:Z

.field private mFaddingStrokeQueue:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;

.field mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mPenColor:I

.field private mStroke:Lcom/nuance/flext9_OEM/input/Stroke;

.field private mWritingMode:Ljava/lang/String;

.field private mWritingModePaint:Landroid/graphics/Paint;


# direct methods
.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->fading()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$1;-><init>(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 44
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mDensity:F

    .line 46
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mPenColor:I

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mDensity:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 53
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 59
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 60
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mDensity:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mPenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    new-instance v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mPenColor:I

    invoke-direct {v0, p0, p1, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;-><init>(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;

    .line 65
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Stroke;->create(I)Lcom/nuance/flext9_OEM/input/Stroke;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mStroke:Lcom/nuance/flext9_OEM/input/Stroke;

    .line 66
    return-void
.end method

.method private fading()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->-get0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;)I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->reduceAlpha()V

    .line 113
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->invalidate()V

    .line 114
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->stopFading()V

    .line 165
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->invalidate()V

    .line 166
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/HandWritingView;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mWritingMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mDensity:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 92
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mDensity:F

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 93
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mWritingMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mWritingModePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    neg-float v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->-wrap0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;Landroid/graphics/Canvas;)V

    .line 100
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStarted:Z

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->reduceAlpha()V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mStroke:Lcom/nuance/flext9_OEM/input/Stroke;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v1

    .line 105
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 106
    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mStroke:Lcom/nuance/flext9_OEM/input/Stroke;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/Stroke;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->invalidate()V

    .line 160
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mOnWritingActionListener:Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;

    invoke-interface {v0, p0}, Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->invalidate()V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mStroke:Lcom/nuance/flext9_OEM/input/Stroke;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v1

    .line 148
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->add(Landroid/graphics/Path;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mOnWritingActionListener:Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mStroke:Lcom/nuance/flext9_OEM/input/Stroke;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/Stroke;->getArcs()[Lcom/nuance/flext9_OEM/input/Stroke$Arc;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;->penUp([Lcom/nuance/flext9_OEM/input/Stroke$Arc;Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mStroke:Lcom/nuance/flext9_OEM/input/Stroke;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/Stroke;->clear()V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setWritingMode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mWritingMode:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public startFading()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->-get0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;)I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStarted:Z

    .line 122
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStarted:Z

    goto :goto_0
.end method

.method public stopFading()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->clear()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->mFaddingStarted:Z

    .line 133
    return-void
.end method
