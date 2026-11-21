.class public Lcom/nuance/flext9_OEM/input/KeyboardViewEx;
.super Landroid/view/View;
.source "KeyboardViewEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;,
        Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;,
        Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;
    }
.end annotation


# static fields
.field private static final DELAY_AFTER_PREVIEW:I = 0x3c

.field private static final DELAY_BEFORE_PREVIEW:I = 0x1e

.field private static final FADING_DELAY:I = 0x19

.field private static final KEY_DELETE:[I

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MAX_RIPPLE_RADIUS:I = 0x30

.field private static final MAX_TRAIL_RADIUS:F = 17.0f

.field public static final MIN_LONGPRESS_TIMEOUT:I = 0x1f4

.field private static final MSG_FADING:I = 0x401

.field public static final MSG_LONGPRESS:I = 0x3ed

.field public static final MSG_MULTITAP_TIMEOUT:I = 0x6a

.field private static final MSG_REMOVE_PREVIEW:I = 0x3ea

.field private static final MSG_REPEAT:I = 0x3eb

.field public static final MSG_SHORT_LONGPRESS:I = 0x68

.field private static final MSG_SHOW_PREVIEW:I = 0x3e9

.field private static final MSG_TAP_RIPPLE:I = 0x402

.field private static final MSG_TRACE_COMPLETE:I = 0x400

.field public static final MULTITAP_INTERVAL:I = 0x2ee

.field protected static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190

.field static final TAG:Ljava/lang/String; = "XT9IME"

.field private static final TAP_RIPPLE_DELAY:I = 0x19

.field private static final TRACE_DELAY:I = 0xa

.field private static final UPDATE_POPUP_CLOSE_BUTTON:I = 0x3f2

.field public static mLongPressTimeout:I

.field public static mShortLongPressTimeout:I


# instance fields
.field private final MIN_TRACE_WIDTH:I

.field private mAbortKey:Z

.field private mAltLabelTextColor:I

.field private final mAlternateCharPoupup:Landroid/widget/PopupWindow;

.field private mAlternateTextView:Landroid/widget/TextView;

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mClipRegion:Landroid/graphics/Rect;

.field private mCloseButtonImage:Landroid/widget/ImageButton;

.field protected mCurrentIndex:I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mDistances:[I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mHandler:Landroid/os/Handler;

.field private mInMultiTap:Z

.field protected mInvalidIndex:I

.field protected mInvalidKey:I

.field protected mInvalidTapCount:I

.field private mInvalidatedKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

.field private mIsFocusChanged:Z

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private final mKeyIndices:[I

.field private mKeyPopupLabelTextColor:I

.field private mKeyPopupLabelTextSize:I

.field private mKeyRepeated:Z

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

.field private mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

.field private mKeyboardHasChanged:Z

.field private mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

.field private mLabelTextColor:I

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

.field private final mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field public mMultitapCharacters:[I

.field public mMultitapHarKeyIndex:I

.field public mMultitapHarKeyName:Ljava/lang/String;

.field private mOffsetInWindow:[I

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private mParentView:Landroid/view/View;

.field private mPopupCharacters:Ljava/lang/CharSequence;

.field private final mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupShiftState:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPreTraceAlreadDispatched:Z

.field private mPreviewHeight:I

.field private final mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private final mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextPadding:Landroid/graphics/Rect;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mScrennHeight:I

.field private mScrennWidth:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mStartX:I

.field private mStartY:I

.field protected mTapCount:I

.field private final mUnicaseLetters:Ljava/lang/String;

.field protected mVerticalCorrection:I

.field private mWindowOffset:[I

.field protected m_bRepaintTrace:Z

.field protected m_bmpTrace:Landroid/graphics/Bitmap;

.field protected m_cnvTrace:Landroid/graphics/Canvas;

.field protected m_fDecay:F

.field protected m_fRadius:F

.field protected m_fRippleExpansion:F

.field protected m_hshPointers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;",
            ">;"
        }
    .end annotation
.end field

.field protected m_hshTraceXfermode:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Xfermode;",
            ">;"
        }
    .end annotation
.end field

.field protected m_iFading:I

.field protected m_iTraceColor:I

.field protected m_lstRipplePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field protected m_lstRippleRadii:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected m_pntTrace:Landroid/graphics/Paint;

.field protected m_pthTrace:Landroid/graphics/Path;

.field private m_traceWidth:I

.field protected m_vctTrace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    return v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic -get3(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupCharacters:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get4(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->repeatKey()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->popupAlternateChar(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetMultiTap()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetTrace()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->showKey(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x1f4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    new-array v0, v3, [I

    const/4 v1, -0x5

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->KEY_DELETE:[I

    .line 158
    new-array v0, v3, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->LONG_PRESSABLE_STATE_SET:[I

    .line 254
    const/16 v0, 0xc

    sput v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->MAX_NEARBY_KEYS:I

    .line 259
    sput v4, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShortLongPressTimeout:I

    .line 260
    sput v4, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLongPressTimeout:I

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 505
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v1, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 509
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 211
    iput-boolean v9, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShowPreview:Z

    .line 232
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    .line 235
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyIndices:[I

    .line 239
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 240
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 244
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mClipRegion:Landroid/graphics/Rect;

    .line 255
    sget v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->MAX_NEARBY_KEYS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDistances:[I

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 268
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInvalidKey:I

    .line 269
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentIndex:I

    .line 270
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInvalidIndex:I

    .line 271
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInvalidTapCount:I

    .line 276
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshTraceXfermode:Ljava/util/Hashtable;

    .line 298
    iput-object v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    .line 299
    iput-object v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_cnvTrace:Landroid/graphics/Canvas;

    .line 300
    iput-object v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    .line 301
    iput-object v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pthTrace:Landroid/graphics/Path;

    .line 302
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_fRadius:F

    .line 303
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_fDecay:F

    .line 304
    const/16 v0, 0xff

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_iFading:I

    .line 305
    iput-boolean v9, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bRepaintTrace:Z

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRippleRadii:Ljava/util/List;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRipplePoints:Ljava/util/List;

    .line 310
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_fRippleExpansion:F

    .line 312
    const v0, -0xffff01

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_iTraceColor:I

    .line 313
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    .line 317
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->MIN_TRACE_WIDTH:I

    .line 321
    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupShiftState:I

    .line 323
    iput-object v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMultitapHarKeyName:Ljava/lang/String;

    .line 324
    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMultitapHarKeyIndex:I

    .line 325
    iput-object v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMultitapCharacters:[I

    .line 327
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;-><init>(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    .line 1815
    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mScrennHeight:I

    .line 1816
    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mScrennWidth:I

    .line 2980
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mIsFocusChanged:Z

    .line 512
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setPadding(IIII)V

    .line 516
    sget-object v0, Lcom/nuance/flext9_OEM/input/R$styleable;->KeyboardViewEx:[I

    const/high16 v1, 0x7f0e0000

    .line 515
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 520
    const-string/jumbo v0, "layout_inflater"

    .line 519
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 525
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    move v3, v4

    move v2, v4

    .line 527
    :goto_0
    if-ge v3, v6, :cond_1

    .line 528
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 530
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 527
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 532
    :pswitch_1
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 535
    const/4 v1, 0x2

    invoke-virtual {v5, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v7, 0x7f020006

    if-eq v1, v7, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    move v1, v2

    .line 539
    goto :goto_1

    .line 541
    :pswitch_2
    invoke-virtual {v5, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mVerticalCorrection:I

    move v1, v2

    .line 542
    goto :goto_1

    .line 544
    :pswitch_3
    invoke-virtual {v5, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_1

    .line 547
    :pswitch_4
    invoke-virtual {v5, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewOffset:I

    move v1, v2

    .line 548
    goto :goto_1

    .line 550
    :pswitch_5
    const/16 v7, 0x50

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewHeight:I

    move v1, v2

    .line 551
    goto :goto_1

    .line 553
    :pswitch_6
    const/16 v7, 0x12

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyTextSize:I

    move v1, v2

    .line 554
    goto :goto_1

    .line 556
    :pswitch_7
    const/high16 v7, -0x1000000

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyTextColor:I

    move v1, v2

    .line 557
    goto :goto_1

    .line 559
    :pswitch_8
    const v7, -0x666667

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAltLabelTextColor:I

    move v1, v2

    .line 560
    goto :goto_1

    .line 562
    :pswitch_9
    const/high16 v7, -0x1000000

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLabelTextColor:I

    move v1, v2

    .line 563
    goto :goto_1

    .line 565
    :pswitch_a
    const/16 v7, 0xc

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLabelTextSize:I

    move v1, v2

    .line 566
    goto :goto_1

    .line 568
    :pswitch_b
    invoke-virtual {v5, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupLayout:I

    move v1, v2

    .line 569
    goto :goto_1

    .line 571
    :pswitch_c
    invoke-virtual {v5, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShadowColor:I

    move v1, v2

    .line 572
    goto/16 :goto_1

    .line 574
    :pswitch_d
    invoke-virtual {v5, v1, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShadowRadius:F

    move v1, v2

    .line 575
    goto/16 :goto_1

    .line 577
    :pswitch_e
    const/16 v7, 0x8

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyPopupLabelTextSize:I

    move v1, v2

    .line 578
    goto/16 :goto_1

    .line 581
    :pswitch_f
    const v7, -0xffc000

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyPopupLabelTextColor:I

    move v1, v2

    .line 582
    goto/16 :goto_1

    .line 585
    :pswitch_10
    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBackgroundDimAmount:F

    move v1, v2

    .line 586
    goto/16 :goto_1

    .line 589
    :pswitch_11
    const v7, -0xffff01

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_iTraceColor:I

    move v1, v2

    .line 590
    goto/16 :goto_1

    .line 593
    :pswitch_12
    const/16 v7, 0x10

    invoke-virtual {v5, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_traceWidth:I

    move v1, v2

    .line 594
    goto/16 :goto_1

    .line 599
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 600
    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_traceWidth:I

    if-ge v3, v1, :cond_2

    .line 601
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_traceWidth:I

    .line 604
    :cond_2
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateCharPoupup:Landroid/widget/PopupWindow;

    .line 605
    const v1, 0x7f030008

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    .line 606
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateCharPoupup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 607
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateCharPoupup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->hideAlternateChar()V

    .line 610
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 611
    if-eqz v2, :cond_5

    .line 612
    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    .line 613
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 614
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextPadding:Landroid/graphics/Rect;

    .line 616
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextPadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 617
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextPadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 618
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextPadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 619
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextPadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 621
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextSizeLarge:I

    .line 622
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 623
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    :goto_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 631
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 632
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    iput-object p0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    .line 636
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPaint:Landroid/graphics/Paint;

    .line 637
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 638
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 639
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 641
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    .line 642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    .line 643
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 645
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mUnicaseLetters:Ljava/lang/String;

    .line 646
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShortLongPressTimeout:I

    .line 647
    sget v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShortLongPressTimeout:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_4

    .line 648
    const/16 v0, 0x1f4

    sput v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShortLongPressTimeout:I

    .line 654
    :cond_4
    sget v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShortLongPressTimeout:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLongPressTimeout:I

    .line 656
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetMultiTap()V

    .line 657
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->initGestureDetector()V

    .line 658
    return-void

    .line 626
    :cond_5
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShowPreview:Z

    goto :goto_2

    .line 530
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private DrawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 8

    .prologue
    .line 1363
    const-string/jumbo v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1364
    invoke-virtual {p6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p6}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sub-float v2, v0, v2

    .line 1365
    array-length v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float v3, p4, v0

    .line 1367
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 1369
    aget-object v4, v1, v0

    iget v5, p5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, p3

    add-int/lit8 v6, v0, 0x1

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v3

    iget v7, p5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {p1, v4, v5, v6, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1371
    :cond_0
    return-void
.end method

.method private adjustCase(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isKeyHasNoCaseVariantLabel(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 856
    :cond_0
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 861
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 863
    :cond_0
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const-wide/16 v6, 0x2ee

    const/16 v5, 0x6a

    const/4 v4, -0x1

    .line 2664
    if-ne p3, v4, :cond_0

    return-void

    .line 2666
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, p3

    .line 2668
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    .line 2670
    if-eqz v1, :cond_1

    .line 2671
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2674
    :cond_1
    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    array-length v2, v2

    if-le v2, v3, :cond_8

    .line 2675
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInMultiTap:Z

    .line 2681
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->allowsMoreKey()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2682
    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    .line 2683
    return-void

    .line 2686
    :cond_2
    iput p3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentIndex:I

    .line 2688
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->multitapIsInvalid()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2689
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInvalidIndex:I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentIndex:I

    if-ne v1, v2, :cond_5

    .line 2690
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInvalidTapCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    array-length v0, v0

    rem-int v0, v1, v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    .line 2707
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2708
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2711
    :cond_4
    return-void

    .line 2693
    :cond_5
    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    goto :goto_0

    .line 2696
    :cond_6
    iget-wide v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastTapTime:J

    add-long/2addr v2, v6

    cmp-long v2, p1, v2

    if-gez v2, :cond_7

    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastSentIndex:I

    if-ne p3, v2, :cond_7

    .line 2697
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    array-length v0, v0

    rem-int v0, v1, v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    goto :goto_0

    .line 2701
    :cond_7
    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    .line 2702
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_3

    .line 2703
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    goto :goto_0

    .line 2714
    :cond_8
    iget-wide v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastTapTime:J

    add-long/2addr v2, v6

    cmp-long v0, p1, v2

    if-gtz v0, :cond_9

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastSentIndex:I

    if-eq p3, v0, :cond_b

    .line 2715
    :cond_9
    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_a

    .line 2716
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    .line 2719
    :cond_a
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetMultiTap()V

    .line 2721
    :cond_b
    return-void
.end method

.method private computeProximityThreshold(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 888
    if-nez p1, :cond_0

    return-void

    .line 890
    :cond_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 892
    if-nez v2, :cond_1

    return-void

    .line 894
    :cond_1
    array-length v3, v2

    move v1, v0

    .line 897
    :goto_0
    if-ge v0, v3, :cond_2

    .line 898
    aget-object v4, v2, v0

    .line 899
    iget v5, v4, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    iget v6, v4, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v4, v4, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->gap:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_2
    if-ltz v1, :cond_3

    if-nez v3, :cond_4

    :cond_3
    return-void

    .line 904
    :cond_4
    int-to-float v0, v1

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mProximityThreshold:I

    .line 905
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mProximityThreshold:I

    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mProximityThreshold:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mProximityThreshold:I

    .line 906
    return-void
.end method

.method private detectAndSendKey(IIJ)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 1436
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-nez v0, :cond_0

    .line 1437
    return-void

    .line 1440
    :cond_0
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    .line 1442
    if-eq v1, v7, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 1444
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v2, v0, v1

    .line 1446
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateCharPoupup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1447
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->hideAlternateChar()V

    .line 1448
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v1, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1449
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, v7}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 1450
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetMultiTap()V

    .line 1451
    return-void

    .line 1453
    :cond_1
    iget-object v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1454
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1455
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, v7}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 1479
    :goto_0
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastSentIndex:I

    .line 1480
    iput-wide p3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastTapTime:J

    .line 1482
    :cond_2
    return-void

    .line 1458
    :cond_3
    iget-object v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v5

    .line 1460
    sget v3, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->MAX_NEARBY_KEYS:I

    new-array v3, v3, [I

    .line 1461
    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([II)V

    .line 1462
    invoke-direct {p0, p1, p2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyIndices(II[I)I

    .line 1464
    iget-boolean v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v4, :cond_5

    .line 1465
    iget v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    if-eq v4, v7, :cond_6

    .line 1466
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    sget-object v5, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->KEY_DELETE:[I

    const/4 v6, -0x5

    invoke-interface {v4, v6, v5}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 1471
    :goto_1
    iget v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    if-ltz v4, :cond_4

    iget v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    iget-object v5, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 1472
    iget-object v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    aget v0, v0, v2

    .line 1474
    :cond_4
    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([II)V

    .line 1476
    :cond_5
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v2, v0, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 1477
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v2, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_0

    .line 1468
    :cond_6
    iput v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    goto :goto_1
.end method

.method private getKeyIndices(II[I)I
    .locals 18

    .prologue
    .line 1375
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 1377
    const/4 v6, -0x1

    .line 1378
    const/4 v3, -0x1

    .line 1379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mProximityThreshold:I

    add-int/lit8 v4, v2, 0x1

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDistances:[I

    const v5, 0x7fffffff

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getNearestKeys(II)[I

    move-result-object v10

    .line 1384
    array-length v11, v10

    .line 1386
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v11, :cond_6

    .line 1388
    aget v2, v10, v8

    aget-object v12, v9, v2

    .line 1389
    const/4 v2, 0x0

    .line 1391
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->isInside(II)Z

    move-result v13

    .line 1392
    iget v5, v12, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    iget v7, v12, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    mul-int/2addr v5, v7

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mProximityThreshold:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1393
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mProximityCorrectOn:Z

    if-eqz v7, :cond_1

    .line 1394
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v2

    if-ge v2, v5, :cond_1

    .line 1396
    :cond_0
    iget-object v5, v12, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    const/16 v7, 0x20

    if-le v5, v7, :cond_2

    .line 1398
    iget-object v5, v12, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    array-length v14, v5

    .line 1399
    if-ge v2, v4, :cond_a

    .line 1401
    aget v5, v10, v8

    move v4, v2

    .line 1404
    :goto_1
    if-nez p3, :cond_3

    move v2, v4

    move v3, v5

    move v4, v6

    .line 1386
    :goto_2
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v6, v4

    move v4, v2

    goto :goto_0

    .line 1393
    :cond_1
    if-nez v13, :cond_0

    :cond_2
    move v2, v4

    .line 1423
    :goto_3
    if-eqz v13, :cond_8

    .line 1424
    aget v4, v10, v8

    goto :goto_2

    .line 1406
    :cond_3
    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDistances:[I

    array-length v7, v7

    sub-int/2addr v7, v14

    if-ge v3, v7, :cond_9

    .line 1407
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDistances:[I

    aget v7, v7, v3

    if-le v7, v2, :cond_5

    .line 1410
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDistances:[I

    add-int v16, v3, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDistances:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    sub-int v17, v17, v3

    sub-int v17, v17, v14

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v7, v3, v15, v0, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1411
    add-int v7, v3, v14

    move-object/from16 v0, p3

    array-length v15, v0

    sub-int/2addr v15, v3

    sub-int/2addr v15, v14

    move-object/from16 v0, p3

    move-object/from16 v1, p3

    invoke-static {v0, v3, v1, v7, v15}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1413
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v14, :cond_4

    .line 1414
    add-int v15, v3, v7

    iget-object v0, v12, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v16, v0

    aget v16, v16, v7

    aput v16, p3, v15

    .line 1415
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDistances:[I

    add-int v16, v3, v7

    aput v2, v15, v16

    .line 1413
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    move v2, v4

    move v3, v5

    .line 1418
    goto :goto_3

    .line 1406
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1428
    :cond_6
    const/4 v2, -0x1

    if-ne v6, v2, :cond_7

    move v6, v3

    .line 1432
    :cond_7
    return v6

    :cond_8
    move v4, v6

    goto :goto_2

    :cond_9
    move v2, v4

    move v3, v5

    goto :goto_3

    :cond_a
    move v5, v3

    goto :goto_1
.end method

.method private final getPreviewText(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1489
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v1, :cond_1

    .line 1491
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1492
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    if-gez v3, :cond_0

    :goto_0
    aget v0, v2, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1493
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1492
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    goto :goto_0

    .line 1497
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->adjustCase(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1499
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_2

    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1503
    :goto_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1505
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 1503
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 1516
    :goto_3
    return-object v0

    .line 1510
    :cond_3
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 1513
    goto :goto_3
.end method

.method private getScreenHeight()I
    .locals 1

    .prologue
    .line 1838
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mScrennWidth:I

    if-nez v0, :cond_0

    .line 1839
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getScreenMeasurement()V

    .line 1841
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mScrennHeight:I

    return v0
.end method

.method private getScreenMeasurement()V
    .locals 2

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1820
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1822
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mScrennHeight:I

    .line 1823
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mScrennWidth:I

    .line 1828
    return-void
.end method

.method private getScreenWidth()I
    .locals 1

    .prologue
    .line 1831
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mScrennWidth:I

    if-nez v0, :cond_0

    .line 1832
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getScreenMeasurement()V

    .line 1834
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mScrennWidth:I

    return v0
.end method

.method private handleTouchAction(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;I)Z
    .locals 12

    .prologue
    .line 2261
    const/4 v0, 0x0

    .line 2263
    packed-switch p2, :pswitch_data_0

    move v1, v0

    .line 2275
    :goto_0
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 2276
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 2277
    iget-wide v4, p1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 2278
    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyIndices(II[I)I

    move-result v6

    .line 2281
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2283
    const/4 v0, 0x1

    return v0

    .line 2266
    :pswitch_0
    const/4 v0, 0x0

    move v1, v0

    .line 2267
    goto :goto_0

    .line 2271
    :pswitch_1
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 2272
    goto :goto_0

    .line 2285
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eq v0, p0, :cond_1

    const/4 v0, -0x1

    if-eq v6, v0, :cond_1

    .line 2286
    const/4 v3, -0x1

    .line 2287
    const/4 v0, 0x0

    :goto_1
    iget-object v7, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v7, v7

    if-ge v0, v7, :cond_20

    .line 2288
    iget-object v7, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v7, v7, v0

    iget-boolean v7, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    if-eqz v7, :cond_3

    .line 2293
    :goto_2
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 2294
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v3, v0

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    .line 2295
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, v6

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    .line 2296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mIsFocusChanged:Z

    .line 2300
    :cond_1
    packed-switch p2, :pswitch_data_1

    .line 2550
    :cond_2
    :goto_3
    iput v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastX:I

    .line 2551
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastY:I

    .line 2553
    const/4 v0, 0x1

    return v0

    .line 2287
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2304
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreTraceAlreadDispatched:Z

    .line 2310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAbortKey:Z

    .line 2311
    iput v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mStartX:I

    .line 2312
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mStartY:I

    .line 2313
    iput v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastCodeX:I

    .line 2314
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastCodeY:I

    .line 2315
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastKeyTime:J

    .line 2316
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 2317
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastKey:I

    .line 2318
    iput v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    .line 2319
    iput-wide v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDownTime:J

    .line 2320
    iget-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDownTime:J

    iput-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastMoveTime:J

    .line 2321
    invoke-direct {p0, v4, v5, v6}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->checkMultiTap(JI)V

    .line 2322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 2324
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_4

    .line 2325
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    const/4 v0, -0x1

    if-eq v6, v0, :cond_9

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    :goto_4
    invoke-interface {v3, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onPress(I)V

    .line 2328
    :cond_4
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->repeatable:Z

    if-eqz v0, :cond_5

    .line 2329
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 2331
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2332
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2335
    :cond_5
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 2336
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2337
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    sget v4, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShortLongPressTimeout:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2340
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2341
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    sget v4, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLongPressTimeout:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2345
    :cond_7
    invoke-direct {p0, v6}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->showPreview(I)V

    .line 2347
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2348
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2350
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_8

    .line 2351
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onTrace(Ljava/util/ArrayList;)V

    .line 2358
    :cond_8
    :goto_5
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetTrace()V

    .line 2359
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_3

    .line 2325
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 2354
    :cond_a
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x401

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2355
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x401

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_5

    .line 2365
    :pswitch_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isTraceInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2367
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAbortKey:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyRepeated:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_b

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mStartX:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41c80000    # 25.0f

    mul-float/2addr v3, v7

    cmpl-float v0, v0, v3

    if-lez v0, :cond_13

    .line 2369
    :cond_b
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v3, v3

    if-ge v0, v3, :cond_c

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    array-length v0, v0

    if-lez v0, :cond_c

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    if-ne v6, v0, :cond_c

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    array-length v0, v0

    if-lez v0, :cond_c

    .line 2370
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    sparse-switch v0, :sswitch_data_0

    .line 2392
    :cond_c
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInMultiTap:Z

    if-eqz v0, :cond_d

    .line 2393
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetMultiTap()V

    .line 2396
    :cond_d
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    .line 2397
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 2399
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->hideAlternateChar()V

    .line 2401
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2402
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->showPreview(I)V

    .line 2405
    :cond_e
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2406
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2409
    :cond_f
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2410
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2413
    :cond_10
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2414
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2417
    :cond_11
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    .line 2419
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreTraceAlreadDispatched:Z

    if-nez v0, :cond_12

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mStartX:I

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mStartY:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isTracePointsSpanMoreThanOneKey(IIII)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreTraceAlreadDispatched:Z

    .line 2421
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handlePreTrace(Ljava/util/ArrayList;)V

    .line 2424
    :cond_12
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_3

    .line 2367
    :cond_13
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mStartY:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41c80000    # 25.0f

    mul-float/2addr v3, v7

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_b

    .line 2428
    :cond_14
    const/4 v0, -0x1

    if-eq v6, v0, :cond_2

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    if-ne v6, v0, :cond_2

    .line 2429
    iget-wide v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    iget-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastMoveTime:J

    sub-long/2addr v4, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    goto/16 :goto_3

    .line 2386
    :sswitch_0
    iput v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastX:I

    .line 2387
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastY:I

    .line 2388
    const/4 v0, 0x1

    return v0

    .line 2434
    :cond_15
    const/4 v0, 0x0

    .line 2436
    iget-boolean v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAbortKey:Z

    if-nez v3, :cond_2

    .line 2440
    const/4 v3, -0x1

    if-eq v6, v3, :cond_16

    .line 2441
    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_18

    .line 2442
    iput v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    .line 2443
    iget-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDownTime:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 2461
    :goto_6
    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mRepeatKeyIndex:I

    if-eq v6, v3, :cond_16

    .line 2462
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2463
    const/4 v3, -0x1

    iput v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 2467
    :cond_16
    if-nez v0, :cond_17

    .line 2469
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2470
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2473
    const/4 v0, -0x1

    if-eq v6, v0, :cond_17

    .line 2474
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    sget v4, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShortLongPressTimeout:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2475
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    sget v4, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLongPressTimeout:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2479
    :cond_17
    invoke-direct {p0, v6}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->showPreview(I)V

    goto/16 :goto_3

    .line 2446
    :cond_18
    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    if-ne v6, v3, :cond_19

    .line 2447
    iget-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    iget-wide v10, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastMoveTime:J

    sub-long/2addr v4, v10

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 2448
    const/4 v0, 0x1

    goto :goto_6

    .line 2451
    :cond_19
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetMultiTap()V

    .line 2452
    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    iput v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastKey:I

    .line 2453
    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastX:I

    iput v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastCodeX:I

    .line 2454
    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastY:I

    iput v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastCodeY:I

    .line 2455
    iget-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    add-long/2addr v4, v8

    iget-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastMoveTime:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastKeyTime:J

    .line 2456
    iput v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    .line 2457
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    goto :goto_6

    .line 2485
    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreTraceAlreadDispatched:Z

    .line 2491
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2492
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2493
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2494
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2496
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 2497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    .line 2498
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2500
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2501
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    const/16 v3, 0x400

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 2504
    :cond_1a
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    if-ne v6, v0, :cond_1e

    .line 2505
    iget-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    iget-wide v10, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastMoveTime:J

    sub-long v10, v4, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    .line 2515
    :goto_7
    iget-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    iget-wide v10, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastKeyTime:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_1f

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastKey:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1f

    .line 2516
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastKey:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    .line 2517
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastCodeX:I

    .line 2518
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastCodeY:I

    .line 2521
    :goto_8
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->showPreview(I)V

    .line 2522
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyIndices:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 2525
    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyRepeated:Z

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAbortKey:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1b

    .line 2526
    invoke-direct {p0, v1, v0, v4, v5}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->detectAndSendKey(IIJ)V

    .line 2527
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidate()V

    .line 2530
    :cond_1b
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRipplePoints:Ljava/util/List;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2531
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRippleRadii:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2533
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRipplePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1c

    .line 2535
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRipplePoints:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2536
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRippleRadii:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2539
    :cond_1c
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x402

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2540
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x402

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2543
    :cond_1d
    invoke-direct {p0, v6}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateKeyByIndex(I)V

    .line 2544
    const/4 v2, -0x1

    iput v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mRepeatKeyIndex:I

    .line 2545
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyRepeated:Z

    move v2, v1

    move v1, v0

    .line 2547
    goto/16 :goto_3

    .line 2508
    :cond_1e
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetMultiTap()V

    .line 2509
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastKey:I

    .line 2510
    iget-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    add-long/2addr v8, v4

    iget-wide v10, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastKeyTime:J

    .line 2511
    iput v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    .line 2512
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyTime:J

    goto/16 :goto_7

    :cond_1f
    move v0, v1

    move v1, v2

    .line 2515
    goto :goto_8

    :cond_20
    move v0, v3

    goto/16 :goto_2

    .line 2263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2300
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 2370
    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_0
        -0x14 -> :sswitch_0
        -0x13 -> :sswitch_0
        -0x9 -> :sswitch_0
        -0x8 -> :sswitch_0
        -0x7 -> :sswitch_0
        -0x6 -> :sswitch_0
        -0x5 -> :sswitch_0
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private hideAlternateChar()V
    .locals 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1740
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateCharPoupup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateCharPoupup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1743
    :cond_0
    return-void
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    .line 662
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$2;

    invoke-direct {v2, p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$2;-><init>(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mGestureDetector:Landroid/view/GestureDetector;

    .line 688
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 689
    return-void
.end method

.method private invalidateKeyByIndex(I)V
    .locals 1

    .prologue
    .line 1731
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1732
    :cond_0
    return-void

    .line 1735
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V

    .line 1736
    return-void
.end method

.method private isActionKey(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 823
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 824
    const/4 v1, -0x2

    if-ne p1, v1, :cond_1

    .line 823
    :cond_0
    :goto_0
    return v0

    .line 825
    :cond_1
    const/4 v1, -0x3

    if-eq p1, v1, :cond_0

    .line 826
    const/4 v1, -0x4

    if-eq p1, v1, :cond_0

    .line 827
    const/4 v1, -0x5

    if-eq p1, v1, :cond_0

    .line 828
    const/4 v1, -0x6

    if-eq p1, v1, :cond_0

    .line 829
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    .line 830
    const/16 v1, -0x13

    if-eq p1, v1, :cond_0

    .line 831
    const/16 v1, -0x14

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKeyHasNoCaseVariantLabel(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 848
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isActionKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTracePointsSpanMoreThanOneKey(IIII)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 2758
    invoke-direct {p0, p1, p3, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyIndices(II[I)I

    move-result v2

    .line 2759
    invoke-direct {p0, p2, p4, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyIndices(II[I)I

    move-result v3

    .line 2761
    if-eq v2, v5, :cond_1

    if-eq v3, v5, :cond_1

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v4, v4

    if-le v4, v0, :cond_1

    .line 2767
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v2, v4, v2

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v1

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 2769
    :cond_1
    if-ne v2, v5, :cond_3

    if-eq v3, v5, :cond_3

    if-ne p1, p2, :cond_2

    if-eq p3, p4, :cond_3

    .line 2771
    :cond_2
    return v0

    .line 2774
    :cond_3
    return v1
.end method

.method private onBufferDraw()V
    .locals 24

    .prologue
    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    if-eqz v2, :cond_4

    .line 1101
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1103
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getWidth()I

    move-result v2

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getHeight()I

    move-result v3

    .line 1106
    if-lez v2, :cond_6

    if-lez v3, :cond_6

    .line 1108
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 1110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1111
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 1123
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 1124
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    .line 1132
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateAll()V

    .line 1134
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    .line 1136
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mIsFocusChanged:Z

    if-eqz v2, :cond_5

    .line 1137
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mIsFocusChanged:Z

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateAll()V

    .line 1141
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    if-nez v2, :cond_7

    return-void

    .line 1128
    :cond_6
    return-void

    .line 1147
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 1149
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPaint:Landroid/graphics/Paint;

    .line 1150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mClipRegion:Landroid/graphics/Rect;

    .line 1151
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPadding:Landroid/graphics/Rect;

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v18

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v19

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-object/from16 v20, v0

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInvalidatedKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-object/from16 v21, v0

    .line 1157
    const/16 v2, 0xff

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1158
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyTextColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1159
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1161
    const/4 v2, 0x0

    .line 1163
    if-eqz v21, :cond_9

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1165
    move-object/from16 v0, v21

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    add-int v5, v5, v18

    add-int/lit8 v5, v5, -0x1

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-gt v5, v6, :cond_a

    .line 1166
    move-object/from16 v0, v21

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    add-int v5, v5, v19

    add-int/lit8 v5, v5, -0x1

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-gt v5, v6, :cond_a

    .line 1167
    move-object/from16 v0, v21

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    move-object/from16 v0, v21

    iget v6, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    add-int/2addr v5, v6

    add-int v5, v5, v18

    add-int/lit8 v5, v5, 0x1

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-lt v5, v6, :cond_a

    .line 1168
    move-object/from16 v0, v21

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    move-object/from16 v0, v21

    iget v6, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    add-int/2addr v5, v6

    add-int v5, v5, v19

    add-int/lit8 v5, v5, 0x1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v4, :cond_a

    .line 1170
    const/4 v2, 0x1

    move/from16 v16, v2

    .line 1173
    :goto_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1175
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    .line 1177
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_25

    .line 1179
    aget-object v23, v20, v17

    .line 1181
    move-object/from16 v0, v23

    iget-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->visible:Z

    if-nez v2, :cond_b

    .line 1177
    :cond_8
    :goto_2
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_1

    :cond_9
    move/from16 v16, v2

    .line 1163
    goto :goto_0

    :cond_a
    move/from16 v16, v2

    .line 1168
    goto :goto_0

    .line 1186
    :cond_b
    if-eqz v16, :cond_c

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 1191
    :cond_c
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_19

    .line 1193
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 1200
    :goto_3
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1202
    invoke-virtual/range {v23 .. v23}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->getCurrentDrawableState()[I

    move-result-object v4

    .line 1203
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1206
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->adjustCase(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1208
    :goto_4
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 1210
    move-object/from16 v0, v23

    iget v6, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    if-ne v6, v9, :cond_d

    move-object/from16 v0, v23

    iget v6, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-eq v6, v5, :cond_e

    .line 1211
    :cond_d
    move-object/from16 v0, v23

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    move-object/from16 v0, v23

    iget v6, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1213
    :cond_e
    move-object/from16 v0, v23

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    add-int v5, v5, v18

    int-to-float v5, v5

    move-object/from16 v0, v23

    iget v6, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    add-int v6, v6, v19

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1214
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1216
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    iget v5, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v5

    iget v5, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    div-int/lit8 v11, v2, 0x2

    .line 1217
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    .line 1218
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_27

    .line 1219
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    const v5, 0x3fb33333    # 1.4f

    div-float/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    float-to-int v2, v2

    move v10, v2

    .line 1222
    :goto_5
    if-eqz v4, :cond_12

    .line 1225
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isActionKey(I)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1e

    .line 1227
    :cond_f
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextColor:I

    if-eqz v2, :cond_1b

    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextColor:I

    move v9, v2

    .line 1228
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLabelTextSize:I

    move-object/from16 v0, v23

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextSize:I

    if-ge v2, v5, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLabelTextSize:I

    .line 1230
    :goto_7
    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1231
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1233
    move-object/from16 v0, v23

    iget-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->shadow:Z

    if-eqz v2, :cond_11

    .line 1235
    and-int/lit16 v2, v9, 0xff

    const/16 v5, 0xcc

    if-ge v2, v5, :cond_10

    const v2, 0xff00

    and-int/2addr v2, v9

    const v5, 0xcc00

    if-lt v2, v5, :cond_1d

    .line 1237
    :cond_10
    const v2, 0x4c010101    # 3.3817604E7f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1239
    int-to-float v5, v11

    int-to-float v2, v10

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v12

    sub-float v6, v2, v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->DrawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1249
    :cond_11
    :goto_8
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1281
    :goto_9
    int-to-float v5, v11

    int-to-float v6, v10

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->DrawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1286
    :cond_12
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    .line 1288
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    iget v4, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    iget v4, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    iget v4, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    .line 1289
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    iget v5, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v5

    .line 1290
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0x20

    if-ne v5, v6, :cond_13

    .line 1291
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    .line 1293
    :cond_13
    int-to-float v5, v4

    int-to-float v6, v2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1294
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1295
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1296
    neg-int v4, v4

    int-to-float v4, v4

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1299
    :cond_14
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_18

    .line 1301
    new-instance v14, Landroid/graphics/Rect;

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v14, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1305
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    iget v4, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    iget v4, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    int-to-double v4, v2

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v10

    double-to-int v4, v4

    .line 1307
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    iget v5, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0xa

    .line 1311
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0x20

    if-ne v5, v6, :cond_15

    .line 1312
    move-object/from16 v0, v23

    iget v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    iget v5, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget v5, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v10

    double-to-int v4, v4

    .line 1313
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {v5}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v5

    invoke-static {v5}, Lcom/nuance/flext9_OEM/input/Settings;->isThaiLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1314
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    iget v5, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x8

    .line 1318
    :cond_15
    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    sub-float/2addr v2, v5

    float-to-int v2, v2

    .line 1321
    move-object/from16 v0, v23

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextSize:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1323
    move-object/from16 v0, v23

    iget-boolean v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->shadow:Z

    if-eqz v5, :cond_17

    .line 1325
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAltLabelTextColor:I

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xcc

    if-ge v5, v6, :cond_16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAltLabelTextColor:I

    const v6, 0xff00

    and-int/2addr v5, v6

    const v6, 0xcc00

    if-lt v5, v6, :cond_24

    .line 1327
    :cond_16
    const v5, 0x4c010101    # 3.3817604E7f

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1329
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    int-to-float v12, v4

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v9

    sub-float v13, v5, v6

    move-object/from16 v9, p0

    move-object v10, v3

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->DrawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1339
    :cond_17
    :goto_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAltLabelTextColor:I

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1342
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    int-to-float v12, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    sub-float v13, v2, v4

    move-object/from16 v9, p0

    move-object v10, v3

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->DrawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1345
    :cond_18
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    neg-int v2, v2

    sub-int v2, v2, v18

    int-to-float v2, v2

    move-object/from16 v0, v23

    iget v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    neg-int v4, v4

    sub-int v4, v4, v19

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    .line 1197
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 1206
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1227
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLabelTextColor:I

    move v9, v2

    goto/16 :goto_6

    .line 1228
    :cond_1c
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextSize:I

    goto/16 :goto_7

    .line 1235
    :cond_1d
    const/high16 v2, 0xff0000

    and-int/2addr v2, v9

    const/high16 v5, 0xcc0000

    if-ge v2, v5, :cond_10

    .line 1243
    const v2, -0x33000001    # -1.3421772E8f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1245
    int-to-float v5, v11

    int-to-float v2, v10

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v12

    add-float/2addr v6, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->DrawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 1253
    :cond_1e
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextColor:I

    if-eqz v2, :cond_21

    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextColor:I

    move v9, v2

    .line 1254
    :goto_b
    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextSize:I

    if-eqz v2, :cond_22

    move-object/from16 v0, v23

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 1256
    :goto_c
    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1257
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1259
    move-object/from16 v0, v23

    iget-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->shadow:Z

    if-eqz v2, :cond_20

    .line 1261
    and-int/lit16 v2, v9, 0xff

    const/16 v5, 0xcc

    if-ge v2, v5, :cond_1f

    const v2, 0xff00

    and-int/2addr v2, v9

    const v5, 0xcc00

    if-lt v2, v5, :cond_23

    .line 1263
    :cond_1f
    const v2, 0x4c010101    # 3.3817604E7f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1265
    int-to-float v5, v11

    int-to-float v2, v10

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v12

    sub-float v6, v2, v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->DrawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1275
    :cond_20
    :goto_d
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_9

    .line 1253
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyTextColor:I

    move v9, v2

    goto :goto_b

    .line 1254
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyTextSize:I

    goto :goto_c

    .line 1261
    :cond_23
    const/high16 v2, 0xff0000

    and-int/2addr v2, v9

    const/high16 v5, 0xcc0000

    if-ge v2, v5, :cond_1f

    .line 1269
    const v2, -0x33000001    # -1.3421772E8f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1271
    int-to-float v5, v11

    int-to-float v2, v10

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v12

    add-float/2addr v6, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->DrawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_d

    .line 1325
    :cond_24
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAltLabelTextColor:I

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    const/high16 v6, 0xcc0000

    if-ge v5, v6, :cond_16

    .line 1333
    const v5, -0x33000001    # -1.3421772E8f

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1335
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    int-to-float v12, v4

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v9

    sub-float v13, v5, v6

    move-object/from16 v9, p0

    move-object v10, v3

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->DrawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 1348
    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInvalidatedKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 1351
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_26

    .line 1353
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBackgroundDimAmount:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1354
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getHeight()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1357
    :cond_26
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDrawPending:Z

    .line 1358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1359
    return-void

    :cond_27
    move v10, v2

    goto/16 :goto_5

    :cond_28
    move/from16 v16, v2

    goto/16 :goto_0
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1779
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->popupMiniKeyboard()Z

    move-result v0

    return v0
.end method

.method private popupAlternateChar(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1746
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1747
    const-string/jumbo v0, "XT9IME"

    const-string/jumbo v1, "showKey - trying to popup when parent has null window token"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    return-void

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1752
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1753
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    iget v1, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1754
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextSizeLarge:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1755
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1756
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 1758
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewHeight:I

    .line 1760
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget v2, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1761
    iget v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    .line 1762
    iget v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    sub-int/2addr v0, v1

    iget v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewOffset:I

    add-int/2addr v4, v0

    .line 1764
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    if-nez v0, :cond_1

    .line 1765
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->recalculateOffsets()V

    .line 1768
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->LONG_PRESSABLE_STATE_SET:[I

    :goto_0
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1770
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateCharPoupup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1771
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateCharPoupup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1772
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateCharPoupup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v2, v2, v6

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1773
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAlternateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1775
    return-void

    .line 1768
    :cond_2
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private removeCharWithoutUpperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 3104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3105
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 3107
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 3108
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mUnicaseLetters:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 3109
    if-eq v2, v3, :cond_0

    .line 3110
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 3105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3118
    :cond_1
    return-object v1
.end method

.method private repeatKey()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2558
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mRepeatKeyIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mRepeatKeyIndex:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 2559
    :cond_0
    return v2

    .line 2562
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mRepeatKeyIndex:I

    aget-object v0, v0, v1

    .line 2563
    iget v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    iget v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    iget-wide v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastTapTime:J

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->detectAndSendKey(IIJ)V

    .line 2565
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyRepeated:Z

    .line 2567
    return v4
.end method

.method private resetMultiTap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2648
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastSentIndex:I

    .line 2649
    iput v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    .line 2650
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLastTapTime:J

    .line 2651
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInMultiTap:Z

    .line 2656
    return-void
.end method

.method private resetTrace()V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1082
    :cond_1
    const/16 v0, 0xff

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_iFading:I

    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bRepaintTrace:Z

    .line 1084
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_fRadius:F

    .line 1085
    return-void
.end method

.method private showKey(I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1588
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 1589
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 1592
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 1593
    :cond_0
    return-void

    .line 1592
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1596
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1597
    const-string/jumbo v0, "XT9IME"

    const-string/jumbo v1, "showKey - trying to popup when parent has null window token"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    return-void

    .line 1601
    :cond_2
    aget-object v2, v0, p1

    .line 1604
    iget-boolean v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->showPopup:Z

    if-nez v0, :cond_3

    .line 1606
    return-void

    .line 1609
    :cond_3
    iget-object v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 1611
    iget-object v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1612
    :goto_0
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v4, v4, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1613
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1630
    :goto_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewHeight:I

    invoke-virtual {p0, v2, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setPaddingForKeyPreview(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;I)V

    .line 1632
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 1635
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget v3, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1637
    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewHeight:I

    .line 1639
    iget v4, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupPreviewX:I

    .line 1640
    iget v4, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewOffset:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupPreviewY:I

    .line 1642
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1644
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    if-nez v4, :cond_4

    .line 1645
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->recalculateOffsets()V

    .line 1649
    :cond_4
    iget-object v4, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 1651
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1664
    :goto_2
    iget v4, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    if-eqz v4, :cond_9

    .line 1665
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    const v5, 0x7f020079

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1670
    :goto_3
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    iget v5, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1671
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 1678
    invoke-virtual {p0, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setPaddingForKeyPreview(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;I)V

    .line 1680
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1681
    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupPreviewX:I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v3, v3, v6

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupPreviewY:I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v4, v4, v7

    add-int/2addr v3, v4

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1689
    :goto_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1690
    return-void

    .line 1611
    :cond_5
    iget-object v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 1623
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1624
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPreviewText(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1625
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextSizeLarge:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1626
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1627
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_1

    .line 1653
    :cond_7
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    .line 1655
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_2

    .line 1659
    :cond_8
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_2

    .line 1667
    :cond_9
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    const v5, 0x7f020078

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 1684
    :cond_a
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1685
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1686
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupPreviewX:I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v3, v3, v6

    add-int/2addr v2, v3

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupPreviewY:I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    aget v4, v4, v7

    add-int/2addr v3, v4

    invoke-virtual {v1, v0, v6, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_4
.end method

.method private showPreview(I)V
    .locals 9

    .prologue
    const/16 v8, 0x3ea

    const/16 v7, 0x3e9

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 1522
    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 1523
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 1525
    iput p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyIndex:I

    .line 1527
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 1528
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyIndex:I

    if-eq v2, v0, :cond_1

    .line 1529
    if-eq v2, v6, :cond_0

    array-length v0, v4

    if-le v0, v2, :cond_0

    .line 1530
    aget-object v5, v4, v2

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyIndex:I

    if-ne v0, v6, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v5, v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->onReleased(Z)V

    .line 1531
    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateKeyByIndex(I)V

    .line 1533
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyIndex:I

    if-eq v0, v6, :cond_1

    array-length v0, v4

    iget v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyIndex:I

    if-le v0, v5, :cond_1

    .line 1534
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyIndex:I

    aget-object v0, v4, v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->onPressed()V

    .line 1535
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyIndex:I

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateKeyByIndex(I)V

    .line 1539
    :cond_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKeyIndex:I

    if-eq v2, v0, :cond_3

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShowPreview:Z

    if-eqz v0, :cond_3

    .line 1540
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1541
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1542
    if-ne p1, v6, :cond_2

    .line 1543
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1544
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    .line 1545
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1546
    const-wide/16 v4, 0x3c

    .line 1544
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1550
    :cond_2
    if-eq p1, v6, :cond_3

    .line 1551
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1557
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->showKey(I)V

    .line 1571
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v1

    .line 1530
    goto :goto_0

    .line 1563
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1564
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    .line 1565
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1566
    const-wide/16 v2, 0x1e

    .line 1564
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private upperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 837
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 838
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 839
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mUnicaseLetters:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 840
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 837
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    :cond_1
    return-object v1
.end method


# virtual methods
.method public abortKey()V
    .locals 1

    .prologue
    .line 1092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mAbortKey:Z

    .line 1093
    return-void
.end method

.method public allowsMoreKey()Z
    .locals 1

    .prologue
    .line 2660
    const/4 v0, 0x1

    return v0
.end method

.method public clearKeyOffsets()V
    .locals 1

    .prologue
    .line 2744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    .line 2745
    return-void
.end method

.method public closing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2595
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->hideAlternateChar()V

    .line 2596
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2597
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2600
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2601
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2602
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2603
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2604
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2605
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2607
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetMultiTap()V

    .line 2609
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    .line 2610
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_cnvTrace:Landroid/graphics/Canvas;

    .line 2611
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    .line 2613
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 2615
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    .line 2616
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCanvas:Landroid/graphics/Canvas;

    .line 2618
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2619
    return-void
.end method

.method protected dismissPopupKeyboard()V
    .locals 1

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2629
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 2631
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateAll()V

    .line 2633
    :cond_0
    return-void
.end method

.method public getCurrentPopUpShiftState()I
    .locals 1

    .prologue
    .line 2797
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupShiftState:I

    return v0
.end method

.method public getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    return-object v0
.end method

.method public getShiftStateForPopup()I
    .locals 1

    .prologue
    .line 2793
    const/4 v0, 0x0

    return v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2637
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 2638
    const/4 v0, 0x1

    return v0

    .line 2640
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected handlePreTrace(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2779
    return-void
.end method

.method public handleShiftPress()V
    .locals 0

    .prologue
    .line 2787
    return-void
.end method

.method public handleShiftRelease()V
    .locals 0

    .prologue
    .line 2784
    return-void
.end method

.method protected invalidateAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1711
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDrawPending:Z

    .line 1714
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidate()V

    .line 1715
    return-void
.end method

.method public invalidateKey(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V
    .locals 6

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInvalidatedKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 1720
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 1721
    iget v3, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    iget v4, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    iget v5, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1720
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1723
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->onBufferDraw()V

    .line 1725
    iget v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 1726
    iget v2, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    iget v3, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    iget v4, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 1725
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidate(IIII)V

    .line 1727
    return-void
.end method

.method public isMiniKeyboardShown()Z
    .locals 1

    .prologue
    .line 2956
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    return v0
.end method

.method public isMultitapping()Z
    .locals 1

    .prologue
    .line 2644
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInMultiTap:Z

    return v0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->isShifted()Z

    move-result v0

    return v0

    .line 760
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .locals 1

    .prologue
    .line 2754
    const/4 v0, 0x0

    return v0
.end method

.method public miniKeyboardOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2959
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_0

    .line 2960
    const/4 v0, 0x0

    return v0

    .line 2962
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public miniKeyboardOnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2965
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_0

    .line 2966
    return v1

    .line 2968
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2969
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 2970
    const/4 v0, 0x1

    return v0

    .line 2973
    :cond_1
    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    .line 2976
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2974
    :cond_3
    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    .line 2975
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_2

    .line 2978
    return v1
.end method

.method protected movePointer(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    const/4 v0, 0x1

    return v0
.end method

.method protected multitapClearInvalid()V
    .locals 1

    .prologue
    .line 2724
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInvalidKey:I

    .line 2725
    return-void
.end method

.method protected multitapIsInvalid()Z
    .locals 2

    .prologue
    .line 2728
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInvalidKey:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected multitapTimeOut()V
    .locals 1

    .prologue
    .line 2736
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetMultiTap()V

    .line 2738
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2739
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    .line 2741
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->dismissPopupKeyboard()V

    .line 820
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2623
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2624
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->closing()V

    .line 2625
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 919
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 921
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 922
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->onBufferDraw()V

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 928
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isTraceInputEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 930
    return-void

    .line 921
    :cond_2
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 934
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 936
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    .line 937
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_cnvTrace:Landroid/graphics/Canvas;

    .line 939
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    .line 940
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 941
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 942
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 943
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 953
    return-void

    .line 945
    :catch_0
    move-exception v0

    .line 946
    const-string/jumbo v1, "XT9IME"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 957
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 958
    return-void

    .line 961
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_iTraceColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 962
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 964
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 969
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 972
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 974
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 980
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_7

    .line 981
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mVerticalCorrection:I

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 982
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    :goto_2
    if-lez v2, :cond_8

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    if-le v2, v0, :cond_8

    .line 984
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mVerticalCorrection:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 982
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 988
    :cond_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mVerticalCorrection:I

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 989
    const/4 v0, 0x1

    move v2, v0

    :goto_3
    if-lez v2, :cond_8

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 991
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mVerticalCorrection:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 989
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 995
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 996
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_traceWidth:I

    int-to-float v0, v0

    div-float v4, v0, v2

    .line 999
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_iFading:I

    int-to-float v0, v0

    div-float/2addr v0, v10

    mul-float/2addr v0, v9

    float-to-int v0, v0

    :goto_4
    int-to-float v5, v0

    iget v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_iFading:I

    int-to-float v6, v6

    div-float/2addr v6, v10

    mul-float/2addr v6, v4

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_9

    .line 1001
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    int-to-float v6, v0

    mul-float/2addr v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1002
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_cnvTrace:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1003
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    int-to-float v1, v1

    const/high16 v6, 0x40800000    # 4.0f

    sub-float v6, v1, v6

    float-to-int v1, v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 999
    int-to-float v0, v0

    add-float/2addr v0, v9

    float-to-int v0, v0

    goto :goto_4

    .line 1008
    :cond_9
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1009
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_iFading:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1011
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_bmpTrace:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_pntTrace:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1068
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/16 v3, 0x15

    const/16 v8, 0x14

    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 2983
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    if-ne v0, p0, :cond_1

    .line 2984
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 2987
    :goto_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 2988
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    if-eqz v2, :cond_7

    move v2, v0

    .line 2993
    :goto_1
    if-eq p1, v3, :cond_2

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    .line 2994
    :cond_2
    if-ne v2, v4, :cond_9

    .line 2995
    if-ne p1, v3, :cond_8

    .line 2996
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 3001
    :goto_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, v2

    iput-boolean v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    .line 3002
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 3003
    const v3, 0x7f0d003c

    .line 3002
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3004
    new-array v3, v1, [I

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 3033
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateAll()V

    .line 3037
    :cond_3
    if-eq p1, v8, :cond_4

    .line 3038
    const/16 v0, 0x13

    if-ne p1, v0, :cond_13

    .line 3039
    :cond_4
    if-ne v2, v4, :cond_e

    .line 3040
    if-ne p1, v8, :cond_5

    .line 3045
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v0, v0

    .line 3091
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateAll()V

    .line 3101
    :cond_6
    :goto_5
    return v7

    .line 2987
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    move v2, v1

    .line 2999
    goto :goto_2

    .line 3008
    :cond_9
    if-ne p1, v3, :cond_b

    .line 3009
    add-int/lit8 v0, v2, -0x1

    move v3, v0

    .line 3014
    :goto_6
    if-ltz v3, :cond_a

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v0, v0

    if-lt v3, v0, :cond_d

    .line 3015
    :cond_a
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, v2

    iput-boolean v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    .line 3016
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 3017
    const v5, 0x7f0d003c

    .line 3016
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3018
    new-array v5, v7, [I

    const v6, 0x10100a7

    aput v6, v5, v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 3022
    if-gez v3, :cond_c

    .line 3023
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    iput-boolean v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    goto :goto_3

    .line 3012
    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v3, v0

    goto :goto_6

    .line 3025
    :cond_c
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, v1

    iput-boolean v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    goto :goto_3

    .line 3029
    :cond_d
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, v2

    iput-boolean v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    .line 3030
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, v3

    iput-boolean v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    goto :goto_3

    .line 3055
    :cond_e
    if-ne p1, v8, :cond_10

    .line 3061
    add-int/lit8 v0, v2, 0x6

    .line 3069
    :goto_7
    if-ltz v0, :cond_f

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v3, v3

    if-lt v0, v3, :cond_12

    .line 3070
    :cond_f
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v2, v3, v2

    iput-boolean v1, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    .line 3071
    if-gez v0, :cond_11

    .line 3076
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, v1

    iput-boolean v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    goto :goto_4

    .line 3067
    :cond_10
    add-int/lit8 v0, v2, -0x6

    goto :goto_7

    .line 3082
    :cond_11
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-boolean v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    goto/16 :goto_4

    .line 3086
    :cond_12
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v2, v3, v2

    iput-boolean v1, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    .line 3087
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v1, v0

    iput-boolean v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    goto/16 :goto_4

    .line 3094
    :cond_13
    const/16 v0, 0x42

    if-eq p1, v0, :cond_14

    .line 3095
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_6

    .line 3096
    :cond_14
    if-eq v2, v4, :cond_15

    .line 3097
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    :goto_8
    invoke-interface {v3, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 3099
    :cond_15
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->dismissPopupKeyboard()V

    goto/16 :goto_5

    .line 3097
    :cond_16
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v1

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_17
    move v2, v4

    goto/16 :goto_1
.end method

.method protected onLongPress(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Z
    .locals 9

    .prologue
    const/high16 v4, 0x7f0d0000

    const/high16 v8, -0x80000000

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1853
    iget v2, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    .line 1855
    if-eqz v2, :cond_9

    .line 1856
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1857
    iput v7, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupShiftState:I

    .line 1861
    :goto_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->hideAlternateChar()V

    .line 1862
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1863
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1865
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v0, :cond_3

    .line 1866
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1867
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1868
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    .line 1869
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1871
    if-eqz v0, :cond_0

    .line 1872
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    new-instance v1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;

    invoke-direct {v1, p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$3;-><init>(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 1918
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1919
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    const/4 v4, 0x6

    invoke-direct/range {v0 .. v5}, Lcom/nuance/flext9_OEM/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 1925
    :goto_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    .line 1926
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setPopupParent(Landroid/view/View;)V

    .line 1927
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getScreenWidth()I

    move-result v1

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getScreenHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1928
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    :goto_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 1934
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1935
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 1936
    iput-boolean v6, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    goto :goto_3

    .line 1859
    :cond_1
    iput v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupShiftState:I

    goto/16 :goto_0

    .line 1922
    :cond_2
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 1931
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    goto :goto_2

    .line 1938
    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-boolean v7, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    .line 1940
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->requestFocus()Z

    .line 1941
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1942
    const v1, 0x7f0d003c

    .line 1941
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1943
    new-array v1, v6, [I

    invoke-virtual {v0, v1, v6}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 1945
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mWindowOffset:[I

    if-nez v0, :cond_6

    .line 1946
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mWindowOffset:[I

    .line 1947
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mWindowOffset:[I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 1950
    :cond_6
    iget v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupX:I

    .line 1951
    iget v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupY:I

    .line 1952
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupX:I

    iget v1, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupX:I

    .line 1953
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupY:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupY:I

    .line 1955
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupX:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mWindowOffset:[I

    aget v1, v1, v6

    add-int/2addr v1, v0

    .line 1956
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupY:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mWindowOffset:[I

    aget v2, v2, v7

    add-int/2addr v2, v0

    .line 1958
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    if-gez v1, :cond_8

    move v0, v6

    :goto_4
    invoke-virtual {v3, v0, v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setPopupOffset(II)V

    .line 1959
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isShifted()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setShifted(Z)Z

    .line 1960
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1961
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1962
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1965
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1966
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    invoke-virtual {v0, v3, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1969
    :cond_7
    iput-boolean v7, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 1970
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateAll()V

    .line 1972
    return v7

    :cond_8
    move v0, v1

    .line 1958
    goto :goto_4

    .line 1974
    :cond_9
    return v6
.end method

.method public onMeasure(II)V
    .locals 3

    .prologue
    .line 869
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    if-nez v0, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setMeasuredDimension(II)V

    .line 878
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getMinWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 873
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 874
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 876
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 911
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    .line 914
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    const v2, 0xff00

    const/4 v13, 0x2

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 1989
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v0

    neg-int v7, v0

    .line 1990
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mVerticalCorrection:I

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v1

    sub-int v8, v0, v1

    .line 1993
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget v0, Lcom/nuance/flext9_OEM/input/AndroidVersionWrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_f

    .line 1995
    invoke-static {p1, v3}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1997
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2254
    :cond_0
    :goto_0
    :pswitch_0
    return v12

    .line 2000
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    move v1, v0

    .line 2002
    :goto_1
    invoke-static {p1, v1}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 2003
    if-ltz v4, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2007
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-direct {v5, p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;-><init>(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    .line 2014
    iget-boolean v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Pressed:Z

    if-eqz v5, :cond_2

    .line 2021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 2022
    iput-boolean v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 2023
    iput-boolean v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->RePress:Z

    .line 2024
    invoke-direct {p0, v0, v12}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;I)Z

    .line 2025
    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 2029
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2032
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_4

    move v2, v3

    .line 2035
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 2037
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    invoke-static {p1, v4, v2}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v7

    invoke-static {p1, v4, v2}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v8

    invoke-direct {v5, v6, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2035
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 2042
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Point;

    invoke-static {p1, v4}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v7

    invoke-static {p1, v4}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v8

    invoke-direct {v2, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2045
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iput-boolean v12, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 2046
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iput-boolean v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->RePress:Z

    .line 2047
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->DownTime:J

    .line 2048
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 2050
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-direct {p0, v0, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;I)Z

    goto/16 :goto_0

    :pswitch_2
    move v1, v3

    .line 2056
    :goto_4
    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2061
    invoke-static {p1, v1}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 2063
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2064
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 2067
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2072
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 2074
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    move-object v2, v0

    .line 2078
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_6

    move-object v5, v2

    move v2, v3

    .line 2081
    :goto_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2084
    new-instance v6, Landroid/graphics/Point;

    invoke-static {p1, v1, v2}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v7

    invoke-static {p1, v1, v2}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v11, v8

    invoke-direct {v6, v0, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 2086
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p0, v0, v5, v6}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->movePointer(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    .line 2081
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v5, v6

    goto :goto_6

    .line 2092
    :cond_6
    new-instance v5, Landroid/graphics/Point;

    invoke-static {p1, v1}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v7

    invoke-static {p1, v1}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v8

    invoke-direct {v5, v0, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 2094
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p0, v0, v2, v5}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->movePointer(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    .line 2098
    :cond_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_8

    .line 2101
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Pressed:Z

    if-nez v0, :cond_c

    .line 2104
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->RePress:Z

    if-nez v0, :cond_9

    .line 2056
    :cond_8
    :goto_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    .line 2111
    :cond_9
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    .line 2114
    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Pressed:Z

    if-eqz v0, :cond_a

    .line 2117
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iput-boolean v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->RePress:Z

    goto :goto_8

    .line 2122
    :cond_b
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iput-boolean v12, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 2123
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iput-boolean v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->RePress:Z

    .line 2124
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->DownTime:J

    .line 2125
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 2126
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-direct {p0, v0, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;I)Z

    goto :goto_7

    .line 2130
    :cond_c
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-direct {p0, v0, v13}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;I)Z

    goto/16 :goto_7

    .line 2138
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    move v1, v0

    .line 2140
    :goto_9
    invoke-static {p1, v1}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 2143
    if-ltz v4, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Pressed:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_d

    move v2, v3

    .line 2158
    :goto_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v2, v0, :cond_e

    .line 2160
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    invoke-static {p1, v4, v2}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v7

    invoke-static {p1, v4, v2}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v8

    invoke-direct {v5, v6, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2158
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 2165
    :cond_d
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Point;

    invoke-static {p1, v4}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v7

    invoke-static {p1, v4}, Lcom/nuance/flext9_OEM/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v8

    invoke-direct {v2, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    :cond_e
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 2169
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iput-boolean v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 2170
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iput-boolean v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->RePress:Z

    .line 2171
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-direct {p0, v0, v12}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;I)Z

    .line 2172
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 2178
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 2182
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2184
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-direct {v2, p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;-><init>(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    :cond_10
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_11

    move v1, v3

    .line 2194
    :goto_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v1, v0, :cond_12

    .line 2196
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v8

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 2201
    :cond_11
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v8

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2204
    :cond_12
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iput-boolean v12, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 2205
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->DownTime:J

    .line 2206
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 2208
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-direct {p0, v0, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;I)Z

    goto/16 :goto_0

    .line 2213
    :pswitch_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2215
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->EventTime:J

    move v1, v3

    .line 2218
    :goto_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v1, v0, :cond_13

    .line 2220
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v8

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2218
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 2222
    :cond_13
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v8

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 2227
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-direct {p0, v0, v13}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;I)Z

    goto/16 :goto_0

    .line 2233
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_14

    move v1, v3

    .line 2236
    :goto_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 2238
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v8

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2236
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 2243
    :cond_14
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v8

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    :cond_15
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->EventTime:J

    .line 2247
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iput-boolean v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Pressed:Z

    .line 2248
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    invoke-direct {p0, v0, v12}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->handleTouchAction(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;I)Z

    .line 2249
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_hshPointers:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$Pointer;->Path:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_16
    move-object v2, v4

    goto/16 :goto_5

    :pswitch_7
    move v1, v0

    goto/16 :goto_1

    :pswitch_8
    move v1, v0

    goto/16 :goto_9

    .line 1997
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 2178
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected popupMiniKeyboard()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1784
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mTapCount:I

    if-ltz v0, :cond_1

    .line 1786
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->multitapTimeOut()V

    .line 1795
    :cond_0
    :goto_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupLayout:I

    if-nez v0, :cond_2

    .line 1796
    return v2

    .line 1789
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1790
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->resetMultiTap()V

    goto :goto_0

    .line 1799
    :cond_2
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 1800
    :cond_3
    return v2

    .line 1803
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCurrentKey:I

    aget-object v0, v0, v1

    .line 1805
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->onLongPress(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)Z

    move-result v0

    .line 1807
    if-eqz v0, :cond_5

    .line 1808
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->abortKey()V

    .line 1809
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->showPreview(I)V

    .line 1812
    :cond_5
    return v0
.end method

.method protected recalculateOffsets()V
    .locals 4

    .prologue
    .line 1575
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    .line 1576
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 1582
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOffsetX:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1583
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mOffsetInWindow:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOffsetY:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1584
    return-void
.end method

.method public setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    if-eqz v0, :cond_0

    .line 712
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->showPreview(I)V

    .line 714
    :cond_0
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    .line 715
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 716
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeys:[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 717
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->requestLayout()V

    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardHasChanged:Z

    .line 719
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateAll()V

    .line 720
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->computeProximityThreshold(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    .line 721
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 722
    return-void
.end method

.method public setMultitapMode(Z)V
    .locals 0

    .prologue
    .line 2781
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mInMultiTap:Z

    .line 2782
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    .line 693
    return-void
.end method

.method public setPaddingForKeyPreview(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;I)V
    .locals 5

    .prologue
    .line 1693
    if-nez p1, :cond_0

    .line 1694
    return-void

    .line 1696
    :cond_0
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1697
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1698
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 1699
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, p2, v0

    .line 1700
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1707
    :cond_1
    :goto_1
    return-void

    .line 1697
    :cond_2
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1703
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 1704
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewTextPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public setParent(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2790
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mParentView:Landroid/view/View;

    .line 2791
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1

    .prologue
    .line 790
    iput p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOffsetX:I

    .line 791
    iput p2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOffsetY:I

    .line 792
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 795
    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupParent:Landroid/view/View;

    .line 787
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0

    .prologue
    .line 770
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShowPreview:Z

    .line 771
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0

    .prologue
    .line 804
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mProximityCorrectOn:Z

    .line 805
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateAll()V

    .line 744
    const/4 v0, 0x1

    return v0

    .line 747
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVerticalCorrection(I)V
    .locals 0

    .prologue
    .line 784
    return-void
.end method

.method private showPopupKeyboard$wave(ILjava/lang/CharSequence;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, -0x80000000

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 2801
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    if-eqz v0, :cond_0

    .line 2802
    return-void

    .line 2804
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getShiftStateForPopup()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupShiftState:I

    .line 2805
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupShiftState:I

    if-eqz v0, :cond_a

    .line 2806
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2807
    return-void

    .line 2809
    :cond_1
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->removeCharWithoutUpperCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2811
    :goto_0
    iput-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupCharacters:Ljava/lang/CharSequence;

    .line 2812
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2813
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2814
    const-string/jumbo v1, "layout_inflater"

    .line 2813
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2815
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 2816
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 2817
    const/high16 v1, 0x7f0d0000

    .line 2816
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    .line 2818
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 2819
    const v1, 0x7f0d003c

    .line 2818
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2820
    if-eqz v0, :cond_2

    .line 2821
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2822
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2824
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->requestFocus()Z

    .line 2825
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    new-instance v1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;

    invoke-direct {v1, p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$4;-><init>(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 2896
    if-eqz v3, :cond_7

    .line 2897
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2898
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingRight()I

    move-result v4

    add-int v5, v2, v4

    const/4 v4, 0x6

    move v2, p1

    .line 2897
    invoke-direct/range {v0 .. v5}, Lcom/nuance/flext9_OEM/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 2902
    :goto_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    .line 2903
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setPopupParent(Landroid/view/View;)V

    .line 2904
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 2905
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getScreenWidth()I

    move-result v1

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2906
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getScreenHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2904
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 2908
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    .line 2909
    const v1, 0x7f0d003c

    .line 2908
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCloseButtonImage:Landroid/widget/ImageButton;

    .line 2910
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCloseButtonImage:Landroid/widget/ImageButton;

    new-array v1, v7, [I

    invoke-virtual {v0, v1, v7}, Landroid/widget/ImageButton;->setImageState([IZ)V

    .line 2912
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mCloseButtonImage:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 2913
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2916
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mWindowOffset:[I

    if-nez v0, :cond_4

    .line 2917
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mWindowOffset:[I

    .line 2919
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mWindowOffset:[I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 2920
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupX:I

    .line 2921
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getScreenHeight()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupY:I

    .line 2922
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0, v7, v7}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setPopupOffset(II)V

    .line 2923
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupShiftState:I

    if-eqz v0, :cond_8

    move v0, v6

    :goto_2
    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setShifted(Z)Z

    .line 2924
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2925
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2926
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2927
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboard:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 2928
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 2929
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-boolean v6, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    .line 2931
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2934
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2935
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2936
    new-array v1, v9, [I

    .line 2937
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 2938
    aget v2, v1, v7

    aget v1, v1, v6

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2939
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit16 v0, v0, 0xa5

    .line 2940
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2941
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    neg-int v0, v0

    invoke-virtual {v2, p0, v1, v0, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 2951
    :cond_6
    :goto_3
    iput-boolean v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMiniKeyboardOnScreen:Z

    .line 2952
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->requestLayout()V

    .line 2953
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidateAll()V

    .line 2954
    return-void

    .line 2900
    :cond_7
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_8
    move v0, v7

    .line 2923
    goto :goto_2

    .line 2943
    :cond_9
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 2945
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2947
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2948
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1, v7, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    :cond_a
    move-object v3, p2

    goto/16 :goto_0
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2590
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->swipeDown()V

    .line 2592
    :cond_0
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2578
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->swipeLeft()V

    .line 2580
    :cond_0
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->swipeRight()V

    .line 2574
    :cond_0
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 2584
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->swipeUp()V

    .line 2586
    :cond_0
    return-void
.end method

# Wave: hook around the stock showPopupKeyboard (now showPopupKeyboard$wave).
.method public showPopupKeyboard(ILjava/lang/CharSequence;)V
    .registers 5
    invoke-static/range {p0 .. p2}, Lcom/nuance/flext9_OEM/input/WaveEarly;->beforePopup(Ljava/lang/Object;ILjava/lang/CharSequence;)V
    invoke-direct/range {p0 .. p2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->showPopupKeyboard$wave(ILjava/lang/CharSequence;)V
    return-void
.end method
