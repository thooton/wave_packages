.class public Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;
.super Lcom/nuance/flext9_OEM/input/HandWritingView;
.source "ChineseHandWritingView.java"


# instance fields
.field private mModeName:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPenColor:I

.field private mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    .line 25
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPaint:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPenColor:I

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 43
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 44
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 46
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 51
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x40c0c000    # 6.0234375f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 56
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    .line 64
    return-void
.end method


# virtual methods
.method public clearArcs()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 140
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 144
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 149
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 151
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->invalidate()V

    .line 158
    return-void
.end method

.method public isArcsEmpty()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/HandWritingView;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;

    check-cast v0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    .line 71
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->getHandWritingMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 77
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 78
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->getWidth()I

    move-result v2

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    .line 79
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    .line 82
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 87
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 127
    return v0

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;

    invoke-interface {v0, p0}, Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;->penDown(Landroid/view/View;)V

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 100
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->invalidate()V

    .line 105
    return v7

    .line 108
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 109
    :goto_0
    if-ge v0, v1, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    float-to-int v2, v2

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    float-to-int v3, v3

    .line 112
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPath:Landroid/graphics/Path;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 113
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->invalidate()V

    .line 117
    return v7

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mOnWritingActionListener:Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Lcom/nuance/flext9_OEM/input/HandWritingView$OnWritingAction;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->invalidate()V

    .line 124
    return v7

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setModeString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->mModeName:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;->invalidate()V

    .line 164
    return-void
.end method
