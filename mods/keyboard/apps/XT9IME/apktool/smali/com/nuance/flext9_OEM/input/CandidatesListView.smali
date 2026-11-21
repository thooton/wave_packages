.class public Lcom/nuance/flext9_OEM/input/CandidatesListView;
.super Landroid/view/View;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/CandidatesListView$1;,
        Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;,
        Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;,
        Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;
    }
.end annotation


# static fields
.field public static final COMPONENT_MARKER:C = '\u9fff'

.field protected static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected static final MAX_SUGGESTIONS:I

.field protected static final MSG_REMOVE_PREVIEW:I = 0x1

.field protected static final MSG_REMOVE_THROUGH_PREVIEW:I = 0x2

.field protected static final OUT_OF_BOUNDS:I = -0x1

.field protected static final SCROLL_PIXELS:I = 0xc

.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected mA:F

.field protected mBgPadding:Landroid/graphics/Rect;

.field protected mColorComponent:I

.field protected mColorNormal:I

.field protected mColorOther:I

.field protected mColorRecommended:I

.field protected mColorSpecialLanguage:I

.field protected mCurrentWordIndex:I

.field protected mDescent:I

.field protected mDivider:Landroid/graphics/drawable/Drawable;

.field protected mDragSelected:Z

.field protected mEnableHighlight:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGetMoreWordsHandler:Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;

.field mHandler:Landroid/os/Handler;

.field protected mIsEmojiShownInCandidateView:Z

.field protected mLayoutHeight:I

.field protected mMinCandidateWidth:I

.field protected mMinPadWidth:I

.field protected mMouseDown:Z

.field protected mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

.field protected mPadWidth:[I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPopupPreviewX:I

.field protected mPopupPreviewY:I

.field protected mPreviewPopup:Landroid/widget/PopupWindow;

.field protected mPreviewText:Landroid/widget/TextView;

.field protected mScrolled:Z

.field protected mSelectedIndex:I

.field protected mSelectedString:Ljava/lang/CharSequence;

.field protected mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field protected mShowingNextCandidatesPrediction:Z

.field protected mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeSpeed:Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;

.field protected mTargetScrollX:I

.field protected mTextSize:I

.field protected mTotalWidth:I

.field protected mTouchIndex:I

.field protected mTouchX:I

.field protected mV:F

.field protected mWordWidth:[I

.field protected mWordX:[I


# direct methods
.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/CandidatesListView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->needMoreWords()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/CandidatesListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->hidePreview()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "WordListView"

    sput-object v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->EMPTY_LIST:Ljava/util/List;

    .line 62
    const/16 v0, 0x100

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->MAX_SUGGESTIONS:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchX:I

    .line 68
    sget v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->MAX_SUGGESTIONS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    .line 69
    sget v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->MAX_SUGGESTIONS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPadWidth:[I

    .line 70
    sget v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->MAX_SUGGESTIONS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    .line 90
    iput v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    .line 91
    iput v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    .line 93
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mMouseDown:Z

    .line 94
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDragSelected:Z

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchIndex:I

    .line 109
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mIsEmojiShownInCandidateView:Z

    .line 111
    new-instance v0, Lcom/nuance/flext9_OEM/input/CandidatesListView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$1;-><init>(Lcom/nuance/flext9_OEM/input/CandidatesListView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, p0, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;-><init>(Lcom/nuance/flext9_OEM/input/CandidatesListView;F)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 186
    const-string/jumbo v0, "layout_inflater"

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 187
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 188
    const v1, 0x7f03000a

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6, v6}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 190
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->readStyles(Landroid/content/Context;)V

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mLayoutHeight:I

    .line 198
    iput-boolean v5, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mEnableHighlight:Z

    .line 200
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 202
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;->isSpecialLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorSpecialLanguage:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDescent:I

    .line 212
    iput-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;

    .line 213
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/nuance/flext9_OEM/input/CandidatesListView$2;

    invoke-direct {v1, p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$2;-><init>(Lcom/nuance/flext9_OEM/input/CandidatesListView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 233
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 234
    invoke-virtual {p0, v5}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 235
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setWillNotDraw(Z)V

    .line 236
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setHorizontalScrollBarEnabled(Z)V

    .line 237
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setVerticalScrollBarEnabled(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->clear()V

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mMinPadWidth:I

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mMinCandidateWidth:I

    .line 247
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorNormal:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private bound(FFF)F
    .locals 1

    .prologue
    .line 168
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 169
    return p2

    .line 170
    :cond_0
    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    .line 171
    return p3

    .line 172
    :cond_1
    return p1
.end method

.method private hidePreview()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 833
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mCurrentWordIndex:I

    .line 834
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 836
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 838
    :cond_0
    return-void
.end method

.method private needMoreWords()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 890
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;

    if-eqz v1, :cond_0

    .line 891
    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTotalWidth:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 890
    :cond_0
    return v0
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/high16 v5, -0x10000

    .line 907
    sget-object v0, Lcom/nuance/flext9_OEM/input/R$styleable;->WordListView:[I

    const v1, 0x7f0e0003

    .line 906
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 909
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 911
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 912
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 914
    packed-switch v3, :pswitch_data_0

    .line 911
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 916
    :pswitch_0
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorNormal:I

    goto :goto_1

    .line 919
    :pswitch_1
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorRecommended:I

    goto :goto_1

    .line 922
    :pswitch_2
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorOther:I

    goto :goto_1

    .line 925
    :pswitch_3
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorComponent:I

    goto :goto_1

    .line 928
    :pswitch_4
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorSpecialLanguage:I

    goto :goto_1

    .line 931
    :pswitch_5
    const/16 v4, 0x14

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTextSize:I

    goto :goto_1

    .line 934
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 935
    return-void

    .line 914
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private refresh()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 271
    :goto_0
    sget v2, Lcom/nuance/flext9_OEM/input/CandidatesListView;->MAX_SUGGESTIONS:I

    if-ge v0, v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aput v1, v2, v0

    .line 273
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPadWidth:[I

    aput v1, v2, v0

    .line 274
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aput v1, v2, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 277
    return-void
.end method

.method private scrollToTarget()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 587
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 588
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    .line 589
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v10

    add-double/2addr v0, v6

    double-to-int v0, v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setScrollX(I)V

    .line 590
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    if-lt v0, v1, :cond_0

    .line 591
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setScrollX(I)V

    .line 592
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->requestLayout()V

    .line 602
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->invalidate()V

    .line 603
    return-void

    .line 595
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    .line 596
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v10

    add-double/2addr v0, v6

    double-to-int v0, v0

    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setScrollX(I)V

    .line 597
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    if-gt v0, v1, :cond_0

    .line 598
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setScrollX(I)V

    .line 599
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->requestLayout()V

    goto :goto_0
.end method

.method private scrollToTargetForHardKey()V
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setScrollX(I)V

    .line 1054
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->requestLayout()V

    .line 1055
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->invalidate()V

    .line 1056
    return-void
.end method

.method private slide()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 541
    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 545
    iget v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    .line 549
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    mul-float/2addr v4, v7

    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->pull(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setScrollX(I)V

    .line 550
    iget v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    iget v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    .line 552
    iget v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_0

    .line 553
    iput v5, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    .line 557
    :cond_0
    iget v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_4

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v2

    if-gt v2, v1, :cond_4

    .line 561
    :cond_1
    :goto_0
    iput v5, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    .line 562
    iput v5, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    .line 563
    cmpg-float v2, v0, v5

    if-gez v2, :cond_6

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v2

    if-ltz v2, :cond_6

    .line 564
    invoke-virtual {p0, v6}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setScrollX(I)V

    .line 572
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    .line 573
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->requestLayout()V

    .line 575
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->needMoreWords()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 580
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->invalidate()V

    .line 581
    return-void

    .line 558
    :cond_4
    cmpg-float v2, v0, v5

    if-gez v2, :cond_5

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v2

    if-gez v2, :cond_1

    .line 559
    :cond_5
    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v2

    if-gt v2, v1, :cond_2

    goto :goto_0

    .line 566
    :cond_6
    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 568
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setScrollX(I)V

    goto :goto_1
.end method


# virtual methods
.method protected calcAccel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 462
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    move v0, v1

    .line 463
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    .line 464
    iget v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 467
    cmpg-float v4, v2, v1

    if-ltz v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, v2, v4

    if-lez v4, :cond_5

    .line 468
    :cond_0
    cmpg-float v4, v2, v1

    if-gez v4, :cond_2

    .line 471
    :goto_1
    mul-float v4, v0, v2

    cmpl-float v4, v4, v1

    if-lez v4, :cond_3

    .line 472
    const v1, -0x445c28f6    # -0.005f

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    .line 473
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->bound(FFF)F

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    .line 497
    :goto_2
    return-void

    .line 462
    :cond_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    iget v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    goto :goto_0

    .line 468
    :cond_2
    int-to-float v4, v3

    sub-float/2addr v2, v4

    goto :goto_1

    .line 477
    :cond_3
    iput v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    .line 478
    iput v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    .line 479
    cmpg-float v0, v2, v1

    if-gez v0, :cond_4

    .line 480
    iput v5, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    .line 485
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->invalidate()V

    goto :goto_2

    .line 483
    :cond_4
    iput v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    goto :goto_3

    .line 490
    :cond_5
    iget v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_6

    .line 491
    const v1, -0x40e66666    # -0.6f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    goto :goto_2

    .line 494
    :cond_6
    iput v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    goto :goto_2
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 723
    sget-object v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    .line 724
    iput v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchX:I

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 726
    iput v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    .line 727
    iput v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTotalWidth:I

    .line 729
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 730
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 731
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 734
    :cond_0
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setScrollX(I)V

    .line 735
    iput v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    .line 736
    iput v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    .line 737
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTotalWidth:I

    return v0
.end method

.method public disableHighlight()V
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mEnableHighlight:Z

    .line 943
    return-void
.end method

.method public enableHighlight()V
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mEnableHighlight:Z

    .line 939
    return-void
.end method

.method public getCurrentHighlighted()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    return-object v0

    .line 961
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstCandidateInCurrentPage()I
    .locals 5

    .prologue
    .line 1035
    const/4 v0, 0x0

    .line 1036
    const/4 v1, -0x1

    .line 1037
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1039
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1040
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v3, v3, v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 1046
    :goto_1
    return v0

    .line 1044
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getFirstCandidateIndexInNextOrPreviousPage(Z)I
    .locals 6

    .prologue
    .line 1003
    const/4 v0, 0x0

    .line 1004
    const/4 v1, -0x1

    .line 1005
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1006
    if-eqz p1, :cond_2

    .line 1007
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1008
    :goto_0
    if-ge v0, v2, :cond_3

    .line 1009
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v4, v4, v0

    if-gt v4, v3, :cond_0

    .line 1010
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aget v5, v5, v0

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    if-lt v4, v5, :cond_0

    .line 1027
    :goto_1
    return v0

    .line 1014
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1024
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1018
    :cond_2
    if-ge v0, v2, :cond_3

    .line 1019
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v3, v3, v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1020
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getIsEmojiShownInCandidateView()Z
    .locals 1

    .prologue
    .line 1073
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mIsEmojiShownInCandidateView:Z

    return v0
.end method

.method public getLastCandidateInCurrentPage()I
    .locals 6

    .prologue
    .line 1059
    const/4 v1, 0x0

    .line 1060
    const/4 v0, -0x1

    .line 1061
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1062
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1063
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_1

    .line 1064
    add-int/lit8 v0, v1, -0x1

    .line 1069
    :cond_0
    return v0

    .line 1067
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    return v0
.end method

.method public isKeyOutofLeftBound(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 986
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v0, v0, p1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 987
    return v2

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v0, v0, p1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 990
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 991
    return v2

    .line 994
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyOutofRightBound(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 970
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 971
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v1, v1, p1

    if-lt v1, v0, :cond_0

    .line 972
    return v3

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v1, v1, p1

    if-gt v1, v0, :cond_1

    .line 974
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    if-lt v1, v0, :cond_1

    .line 975
    return v3

    .line 978
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingNextCandidatesPrediction()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mShowingNextCandidatesPrediction:Z

    return v0
.end method

.method protected longPressFirstWord()V
    .locals 0

    .prologue
    .line 882
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 896
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 897
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->hidePreview()V

    .line 898
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    .prologue
    .line 306
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTotalWidth:I

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    if-nez v2, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getHeight()I

    move-result v18

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 311
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 317
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 317
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getLeft()I

    move-result v2

    neg-int v0, v2

    move/from16 v16, v0

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v19

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 323
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchX:I

    move/from16 v21, v0

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v22

    .line 326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mScrolled:Z

    move/from16 v23, v0

    .line 327
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDescent:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v24, v2, 0x2

    .line 329
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 331
    if-nez v17, :cond_2

    if-eqz p1, :cond_2

    .line 332
    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    move/from16 v0, v16

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 337
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 339
    if-nez v9, :cond_7

    .line 340
    sget-object v2, Lcom/nuance/flext9_OEM/input/CandidatesListView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDraw() - no word found at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getLeft()I

    move-result v2

    add-int v2, v2, v16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTotalWidth:I

    .line 437
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollToTarget()V

    .line 446
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mMouseDown:Z

    if-nez v2, :cond_6

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->calcAccel()V

    .line 448
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    const/4 v3, 0x0

    cmpl-float v2, v3, v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    const/4 v3, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_6

    .line 449
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->slide()V

    .line 452
    :cond_6
    return-void

    .line 344
    :cond_7
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_8

    move/from16 v2, v16

    .line 329
    :goto_1
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    move/from16 v16, v2

    goto/16 :goto_0

    .line 348
    :cond_8
    const/4 v10, 0x0

    .line 349
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 351
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0x9fff

    if-ne v2, v3, :cond_b

    .line 352
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x7e

    if-ne v2, v3, :cond_9

    move/from16 v2, v16

    .line 353
    goto :goto_1

    .line 355
    :cond_9
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 356
    const/4 v10, 0x1

    .line 357
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorComponent:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    :cond_a
    :goto_2
    instance-of v2, v9, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_f

    move-object v2, v9

    .line 373
    check-cast v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ForegroundColorSpan;

    const/4 v3, 0x0

    array-length v4, v2

    :goto_3
    if-ge v3, v4, :cond_e

    aget-object v5, v2, v3

    .line 374
    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 359
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mEnableHighlight:Z

    if-eqz v2, :cond_c

    .line 360
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 361
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorRecommended:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 363
    :cond_c
    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mEnableHighlight:Z

    if-eqz v2, :cond_d

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

    invoke-interface {v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;->isSpecialLanguage()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 365
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 366
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorSpecialLanguage:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 370
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorOther:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_e
    move-object v2, v9

    .line 376
    check-cast v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/StyleSpan;

    const/4 v3, 0x0

    array-length v4, v2

    if-lez v4, :cond_f

    aget-object v2, v2, v3

    .line 377
    invoke-virtual {v2}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 378
    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v2

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 384
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aget v2, v2, v17

    if-eqz v2, :cond_14

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aget v3, v2, v17

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPadWidth:[I

    aget v2, v2, v17

    move v8, v2

    move v15, v3

    .line 397
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aput v16, v2, v17

    .line 399
    add-int v2, v21, v22

    move/from16 v0, v16

    if-lt v2, v0, :cond_11

    .line 400
    add-int v2, v21, v22

    add-int v3, v16, v15

    if-ge v2, v3, :cond_11

    .line 401
    xor-int/lit8 v2, v23, 0x1

    .line 399
    if-eqz v2, :cond_11

    .line 402
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    .line 403
    if-eqz p1, :cond_10

    .line 404
    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v18

    invoke-virtual {v2, v3, v4, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 407
    move/from16 v0, v16

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    :cond_10
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchIndex:I

    .line 414
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mIsEmojiShownInCandidateView:Z

    if-eqz v2, :cond_12

    .line 415
    if-eqz p1, :cond_12

    .line 416
    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v3, v2

    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    int-to-float v5, v15

    move/from16 v0, v18

    int-to-float v6, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 418
    move/from16 v0, v16

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 422
    :cond_12
    if-eqz p1, :cond_13

    .line 426
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int v2, v16, v8

    int-to-float v12, v2

    move/from16 v0, v24

    int-to-float v13, v0

    move-object/from16 v8, p1

    move-object v14, v7

    .line 425
    invoke-static/range {v8 .. v14}, Lcom/nuance/flext9_OEM/input/WaveFrame;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 428
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mColorOther:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    add-int v2, v16, v15

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 431
    move/from16 v0, v16

    neg-int v2, v0

    sub-int/2addr v2, v15

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 433
    :cond_13
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 434
    add-int v2, v16, v15

    goto/16 :goto_1

    .line 388
    :cond_14
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v7, v9, v10, v2}, Lcom/nuance/flext9_OEM/input/WaveFrame;->measure(Landroid/graphics/Paint;Ljava/lang/CharSequence;II)F

    move-result v2

    .line 389
    float-to-int v3, v2

    .line 391
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mMinPadWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mMinCandidateWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 392
    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aput v3, v4, v17

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPadWidth:[I

    aput v2, v4, v17

    move v8, v2

    move v15, v3

    goto/16 :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 771
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    return v4

    .line 775
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 776
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 777
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 778
    iput v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchX:I

    .line 780
    packed-switch v0, :pswitch_data_0

    .line 814
    :cond_1
    :goto_0
    return v4

    .line 782
    :pswitch_0
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mMouseDown:Z

    .line 783
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDragSelected:Z

    .line 785
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->flush()V

    .line 786
    iput v5, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mA:F

    .line 787
    iput v5, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    .line 788
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mScrolled:Z

    .line 789
    iput v6, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchIndex:I

    .line 790
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->invalidate()V

    goto :goto_0

    .line 793
    :pswitch_1
    if-gtz v2, :cond_1

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDragSelected:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 795
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDragSelected:Z

    goto :goto_0

    .line 799
    :pswitch_2
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mMouseDown:Z

    .line 800
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mDragSelected:Z

    .line 802
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 803
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$RollAverage;->get()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setVelocity(F)V

    .line 805
    :cond_2
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mScrolled:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchIndex:I

    if-eq v0, v6, :cond_3

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchIndex:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 806
    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchIndex:I

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    iget v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 807
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->trySelect()V

    .line 809
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->removeHighlight()V

    .line 810
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->hidePreview()V

    goto :goto_0

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected pull(F)F
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 500
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 501
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v2

    .line 502
    iget v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTotalWidth:I

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 505
    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    .line 507
    cmpg-float v4, v0, v1

    if-gez v4, :cond_0

    .line 517
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 519
    mul-float/2addr v3, v3

    mul-float/2addr v2, v2

    div-float v2, v3, v2

    sub-float v2, v6, v2

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 520
    mul-float/2addr v2, p1

    .line 523
    mul-float/2addr v0, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    .line 525
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float v0, p1, v0

    .line 531
    :goto_1
    return v0

    .line 510
    :cond_0
    int-to-float v4, v3

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 511
    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 514
    goto :goto_0

    :cond_2
    move v0, v2

    .line 523
    goto :goto_1
.end method

.method protected removeHighlight()V
    .locals 1

    .prologue
    .line 877
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchX:I

    .line 878
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->invalidate()V

    .line 879
    return-void
.end method

.method public scrollEnd()V
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->updateScrollPosition(I)V

    .line 681
    return-void
.end method

.method public scrollHead()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 670
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v0, v0, v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 671
    if-gez v0, :cond_0

    move v0, v1

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 676
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->updateScrollPosition(I)V

    .line 677
    return-void
.end method

.method public scrollNext()V
    .locals 6

    .prologue
    .line 684
    const/4 v2, 0x0

    .line 685
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 687
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 688
    :goto_0
    if-ge v2, v3, :cond_0

    .line 689
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v4, v4, v2

    if-gt v4, v1, :cond_2

    .line 690
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aget v5, v5, v2

    add-int/2addr v4, v5

    if-lt v4, v1, :cond_2

    .line 691
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v0, v0, v2

    iget v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v2

    if-gt v0, v2, :cond_1

    move v0, v1

    .line 704
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->updateScrollPosition(I)V

    .line 705
    return-void

    .line 694
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public scrollPrev()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 650
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v0, v1

    .line 652
    :goto_0
    if-ge v0, v2, :cond_3

    .line 653
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v3, v3, v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 654
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_2

    .line 660
    :goto_1
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordWidth:[I

    aget v0, v3, v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 661
    if-gez v0, :cond_0

    move v0, v1

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 664
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 666
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->updateScrollPosition(I)V

    .line 667
    return-void

    .line 658
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public selectActiveWord()V
    .locals 4

    .prologue
    .line 740
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    if-ltz v0, :cond_0

    .line 746
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

    iget v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v0, p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->trySelect()V

    goto :goto_0
.end method

.method public setGetMoreWordsHandler(Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;)V
    .locals 0

    .prologue
    .line 885
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;

    .line 886
    return-void
.end method

.method public setMoreSuggestions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    if-eqz p1, :cond_0

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    .line 612
    :cond_0
    return-void
.end method

.method public setOnWordSelectActionListener(Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

    .line 263
    return-void
.end method

.method public setScrollX(I)V
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollTo(II)V

    .line 902
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZIZ)V

    .line 617
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZIZ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 621
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->clear()V

    .line 622
    iput-boolean p4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mIsEmojiShownInCandidateView:Z

    .line 624
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 626
    iput-boolean p2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mShowingNextCandidatesPrediction:Z

    .line 632
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setScrollX(I)V

    .line 633
    iput v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    .line 634
    iput p3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    .line 636
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->setMoreSuggestions(Ljava/util/List;)V

    .line 637
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 638
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p3, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected setVelocity(F)V
    .locals 2

    .prologue
    .line 455
    const/high16 v0, -0x3e100000    # -30.0f

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->bound(FFF)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mV:F

    .line 456
    return-void
.end method

.method protected showPreview(ILjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 841
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mCurrentWordIndex:I

    .line 842
    iput p1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mCurrentWordIndex:I

    .line 844
    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mCurrentWordIndex:I

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_1

    .line 845
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 846
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->hidePreview()V

    .line 874
    :cond_1
    :goto_0
    return-void

    .line 848
    :cond_2
    if-eqz p2, :cond_3

    .line 849
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 851
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 850
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 852
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, p2, v6, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mMinPadWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 854
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 853
    add-int/2addr v0, v1

    .line 854
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    .line 853
    add-int/2addr v0, v1

    .line 855
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 857
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mWordX:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPopupPreviewX:I

    .line 858
    neg-int v2, v1

    iput v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPopupPreviewY:I

    .line 859
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 860
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 861
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getLocationInWindow([I)V

    .line 862
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 863
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPopupPreviewX:I

    iget v5, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPopupPreviewY:I

    aget v2, v2, v7

    add-int/2addr v2, v5

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 871
    :goto_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 848
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object p2, v0

    goto :goto_1

    .line 866
    :cond_4
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 867
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 868
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPopupPreviewX:I

    .line 869
    iget v3, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPopupPreviewY:I

    aget v2, v2, v7

    add-int/2addr v2, v3

    .line 868
    invoke-virtual {v0, p0, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2
.end method

.method public takeSuggestionAt(F)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 823
    float-to-int v0, p1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchX:I

    .line 825
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 826
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->trySelect()V

    .line 827
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->invalidate()V

    .line 828
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 829
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 830
    return-void
.end method

.method protected touchWord(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

    instance-of v0, v0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

    check-cast v0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    .line 287
    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->setActiveCandidate(I)V

    .line 289
    :cond_0
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 290
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    if-eq v0, p1, :cond_1

    .line 291
    iput p1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    .line 292
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->refresh()V

    .line 295
    :cond_1
    return-void
.end method

.method protected trySelect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 762
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 765
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSelectedIndex:I

    invoke-virtual {p0, v0, v3}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 766
    return-void
.end method

.method protected updateScrollPosition(I)V
    .locals 1

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 709
    iput p1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTargetScrollX:I

    .line 710
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->needMoreWords()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->invalidate()V

    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mScrolled:Z

    .line 720
    :cond_1
    return-void
.end method

.method public wordCount()I
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 949
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
