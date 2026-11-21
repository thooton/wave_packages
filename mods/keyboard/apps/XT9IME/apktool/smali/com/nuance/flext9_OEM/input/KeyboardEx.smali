.class public Lcom/nuance/flext9_OEM/input/KeyboardEx;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;,
        Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;
    }
.end annotation


# static fields
.field private static final BASE_HEX:I = 0x10

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_BACK:I = 0x8

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_EMOJI:I = -0xb

.field public static final KEYCODE_ENTER:I = 0xa

.field public static final KEYCODE_HANDWRITING:I = -0x8

.field public static final KEYCODE_KEYBOARD:I = -0x7

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_MULTITAP_DEADKEY:I = -0x15

.field public static final KEYCODE_MULTITAP_TOGGLE:I = -0x13

.field public static final KEYCODE_PERIOD:I = 0x2e

.field public static final KEYCODE_PHONE_PAUSE:I = -0x16

.field public static final KEYCODE_PHONE_WAIT:I = -0x17

.field public static final KEYCODE_RECORD:I = -0xa

.field public static final KEYCODE_SHIFT:I = -0x1

.field public static final KEYCODE_SPACE:I = 0x20

.field public static final KEYCODE_SPEECH:I = -0x9

.field public static final KEYCODE_SWITCH_PAGE:I = -0x18

.field public static final KEYCODE_XT9_LANGUAGE_CYCLING:I = -0x14

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "KeyboardEx"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "KeyboardEx"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"

.field private static final TAG_WRITING_PAD:Ljava/lang/String; = "WritingPad"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKdbId:I

.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyHeight:I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyWidth:I

.field private final mKeyboardMode:I

.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private final mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

.field private mShiftKeyIndex:I

.field private mShifted:Z

.field private final mSubstitutionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

.field private mSwitchPageKeyIndex:I

.field private mTotalHeight:I

.field private mTotalWidth:I


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic -get2(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultVerticalGap:I

    return v0
.end method

.method static synthetic -get3(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultWidth:I

    return v0
.end method

.method static synthetic -get4(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDisplayHeight:I

    return v0
.end method

.method static synthetic -get5(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDisplayWidth:I

    return v0
.end method

.method static synthetic -get6(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeyTextColor:I

    return v0
.end method

.method static synthetic -get7(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeyTextSize:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const v0, 0x3fb33333    # 1.4f

    sput v0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->SEARCH_DISTANCE:F

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;-><init>(Landroid/content/Context;II)V

    .line 618
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mShiftKeyIndex:I

    .line 129
    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mSwitchPageKeyIndex:I

    .line 629
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 630
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDisplayWidth:I

    .line 631
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDisplayHeight:I

    .line 632
    iput v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHorizontalGap:I

    .line 633
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultWidth:I

    .line 634
    iput v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultVerticalGap:I

    .line 635
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultWidth:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHeight:I

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeys:Ljava/util/List;

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mModifierKeys:Ljava/util/List;

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mSubstitutionKeys:Ljava/util/List;

    .line 639
    iput p3, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeyboardMode:I

    .line 640
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 641
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 659
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;-><init>(Landroid/content/Context;I)V

    .line 663
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mTotalWidth:I

    .line 665
    new-instance v5, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;

    invoke-direct {v5, p0}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;-><init>(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    .line 666
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHeight:I

    iput v0, v5, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->defaultHeight:I

    .line 667
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultWidth:I

    iput v0, v5, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->defaultWidth:I

    .line 668
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHorizontalGap:I

    iput v0, v5, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->defaultHorizontalGap:I

    .line 669
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultVerticalGap:I

    iput v0, v5, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->verticalGap:I

    .line 670
    const/16 v0, 0xc

    iput v0, v5, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 671
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const p4, 0x7fffffff

    :cond_0
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 672
    :goto_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 673
    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 674
    if-ge v2, p4, :cond_1

    .line 675
    iget v7, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultWidth:I

    add-int/2addr v7, v4

    add-int/2addr v7, p5

    iget v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDisplayWidth:I

    if-le v7, v8, :cond_2

    .line 677
    :cond_1
    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultVerticalGap:I

    iget v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHeight:I

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    move v2, v1

    move v4, v1

    .line 680
    :cond_2
    new-instance v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    invoke-direct {v7, v5}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;-><init>(Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;)V

    .line 681
    iput v4, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    .line 682
    iput v3, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    .line 683
    iget v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultWidth:I

    iput v8, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    .line 684
    iget v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHeight:I

    iput v8, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    .line 685
    iget v8, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHorizontalGap:I

    iput v8, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->gap:I

    .line 686
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 687
    new-array v8, v9, [I

    aput v6, v8, v1

    iput-object v8, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    .line 688
    iput-boolean v9, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->shadow:Z

    .line 689
    iput-boolean v9, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->visible:Z

    .line 690
    add-int/lit8 v2, v2, 0x1

    .line 691
    iget v6, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    iget v8, v7, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->gap:I

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    .line 692
    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    iget v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mTotalWidth:I

    if-le v4, v6, :cond_3

    .line 694
    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mTotalWidth:I

    .line 672
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    :cond_4
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHeight:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mTotalHeight:I

    .line 703
    return-void
.end method

.method private computeNearestNeighbors()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 798
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getMinWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellWidth:I

    .line 799
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellHeight:I

    .line 800
    const/16 v0, 0x32

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mGridNeighbors:[[I

    .line 801
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [I

    .line 802
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellWidth:I

    mul-int/lit8 v7, v0, 0xa

    .line 803
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellHeight:I

    mul-int/lit8 v8, v0, 0x5

    move v5, v2

    .line 804
    :goto_0
    if-ge v5, v7, :cond_5

    move v4, v2

    .line 805
    :goto_1
    if-ge v4, v8, :cond_4

    move v1, v2

    move v3, v2

    .line 807
    :goto_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 808
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 810
    iget v9, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    iget v10, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mProximityThreshold:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 811
    invoke-virtual {v0, v5, v4}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v10

    if-lt v10, v9, :cond_0

    .line 812
    iget v10, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10, v4}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v10

    if-ge v10, v9, :cond_2

    .line 816
    :cond_0
    :goto_3
    add-int/lit8 v0, v3, 0x1

    aput v1, v6, v3

    move v3, v0

    .line 807
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 813
    :cond_2
    iget v10, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v10, v11}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v10

    if-lt v10, v9, :cond_0

    .line 815
    iget v10, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v5, v10}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->squaredDistanceFrom(II)I

    move-result v0

    if-ge v0, v9, :cond_1

    goto :goto_3

    .line 819
    :cond_3
    new-array v0, v3, [I

    .line 820
    invoke-static {v6, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 821
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mGridNeighbors:[[I

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellHeight:I

    div-int v3, v4, v3

    mul-int/lit8 v3, v3, 0xa

    iget v9, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellWidth:I

    div-int v9, v5, v9

    add-int/2addr v3, v9

    aput-object v0, v1, v3

    .line 805
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellHeight:I

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    .line 804
    :cond_4
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellWidth:I

    add-int/2addr v0, v5

    move v5, v0

    goto :goto_0

    .line 824
    :cond_5
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3

    .prologue
    .line 997
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 998
    if-nez v0, :cond_0

    return p3

    .line 999
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1000
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0

    .line 1001
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1003
    int-to-float v0, p3

    invoke-virtual {p0, p1, p2, p2, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 1005
    :cond_2
    return p3
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const v11, 0x7f0d0059

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 861
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v5, v2

    move v4, v7

    move v3, v7

    move v8, v7

    move v9, v7

    .line 866
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v6, :cond_a

    .line 867
    const/4 v10, 0x2

    if-ne v0, v10, :cond_8

    .line 868
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 869
    const-string/jumbo v10, "Row"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 872
    invoke-virtual {p0, v1, p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;

    move-result-object v2

    .line 873
    iget v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mode:I

    if-eqz v0, :cond_1

    iget v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mode:I

    if-eq v0, v11, :cond_1

    .line 874
    iget v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mode:I

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeyboardMode:I

    if-eq v0, v3, :cond_0

    move v0, v6

    .line 875
    :goto_1
    if-eqz v0, :cond_2

    .line 876
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    move-object v0, v5

    move v3, v7

    move v8, v9

    move v5, v7

    :goto_2
    move v9, v8

    move v8, v5

    move-object v5, v0

    goto :goto_0

    :cond_0
    move v0, v7

    .line 874
    goto :goto_1

    :cond_1
    move v0, v7

    .line 873
    goto :goto_1

    .line 879
    :cond_2
    iget v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mode:I

    if-ne v0, v11, :cond_e

    move-object v0, v5

    move v3, v7

    move v8, v9

    move v5, v7

    .line 881
    goto :goto_2

    .line 883
    :cond_3
    const-string/jumbo v10, "Key"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 884
    iget v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mode:I

    if-ne v0, v11, :cond_4

    move-object v0, p0

    move-object v5, p2

    .line 886
    invoke-virtual/range {v0 .. v5}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v0

    .line 887
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mSubstitutionKeys:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    move v8, v7

    goto :goto_2

    :cond_4
    move-object v0, p0

    move-object v5, p2

    .line 891
    invoke-virtual/range {v0 .. v5}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v0

    .line 892
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aget v5, v5, v9

    const/4 v9, -0x1

    if-ne v5, v9, :cond_5

    .line 894
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 895
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mShiftKeyIndex:I

    .line 896
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mModifierKeys:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    move v8, v6

    goto :goto_2

    .line 897
    :cond_5
    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aget v5, v5, v9

    const/16 v9, -0x18

    if-ne v5, v9, :cond_6

    .line 898
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 899
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mSwitchPageKeyIndex:I

    .line 900
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mModifierKeys:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    move v8, v6

    goto :goto_2

    .line 901
    :cond_6
    iget-object v5, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/4 v9, 0x0

    aget v5, v5, v9

    const/4 v9, -0x6

    if-ne v5, v9, :cond_d

    .line 902
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mModifierKeys:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    move v8, v6

    goto :goto_2

    .line 906
    :cond_7
    const-string/jumbo v10, "KeyboardEx"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 907
    invoke-direct {p0, p1, v1, p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->parseKeyboardAttributes(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    move-object v0, v5

    move v5, v8

    move v8, v9

    goto/16 :goto_2

    .line 910
    :cond_8
    const/4 v10, 0x3

    if-ne v0, v10, :cond_b

    .line 911
    if-eqz v9, :cond_9

    .line 913
    iget v0, v5, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->gap:I

    iget v9, v5, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    add-int/2addr v0, v9

    add-int/2addr v3, v0

    .line 914
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mTotalWidth:I

    if-le v3, v0, :cond_c

    .line 915
    iput v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mTotalWidth:I

    move-object v0, v5

    move v5, v8

    move v8, v7

    goto/16 :goto_2

    .line 918
    :cond_9
    if-eqz v8, :cond_b

    .line 920
    iget v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->verticalGap:I

    add-int/2addr v4, v0

    .line 921
    iget v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->defaultHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v0

    move-object v0, v5

    move v8, v9

    move v5, v7

    .line 922
    goto/16 :goto_2

    .line 929
    :catch_0
    move-exception v0

    .line 930
    const-string/jumbo v1, "KeyboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 933
    :cond_a
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultVerticalGap:I

    sub-int v0, v4, v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mTotalHeight:I

    .line 942
    return-void

    :cond_b
    move-object v0, v5

    move v5, v8

    move v8, v9

    goto/16 :goto_2

    :cond_c
    move-object v0, v5

    move v5, v8

    move v8, v7

    goto/16 :goto_2

    :cond_d
    move v5, v8

    move v8, v6

    goto/16 :goto_2

    :cond_e
    move-object v0, v5

    move v3, v7

    move v8, v9

    move v5, v6

    goto/16 :goto_2
.end method

.method private parseKeyboardAttributes(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 956
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 957
    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->KeyboardEx:[I

    .line 956
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 961
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDisplayWidth:I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    .line 960
    const/4 v3, 0x3

    .line 959
    invoke-static {v0, v3, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultWidth:I

    .line 964
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDisplayHeight:I

    const/16 v2, 0x32

    .line 962
    invoke-static {v0, v6, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHeight:I

    .line 967
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDisplayWidth:I

    .line 965
    invoke-static {v0, v7, v1, v4}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHorizontalGap:I

    .line 970
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDisplayHeight:I

    .line 969
    const/4 v2, 0x6

    .line 968
    invoke-static {v0, v2, v1, v4}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultVerticalGap:I

    .line 971
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Lcom/nuance/flext9_OEM/input/KeyboardEx;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mProximityThreshold:I

    .line 972
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mProximityThreshold:I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mProximityThreshold:I

    .line 974
    const/4 v1, 0x7

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKdbId:I

    .line 978
    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->KeyboardViewEx:[I

    const/high16 v2, 0x7f0e0000

    .line 977
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 980
    const/16 v2, 0x12

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 981
    const/high16 v3, -0x1000000

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 982
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 984
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeyTextSize:I

    .line 985
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeyTextColor:I

    .line 986
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 989
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v2, 0x7f020006

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 990
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 993
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 994
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 947
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 948
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 949
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 948
    if-eqz v0, :cond_0

    .line 953
    :cond_1
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;
    .locals 6

    .prologue
    .line 850
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;
    .locals 1

    .prologue
    .line 845
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;

    invoke-direct {v0, p1, p0, p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardEx;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHorizontalGap:I

    return v0
.end method

.method public getKdbId()I
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKdbId:I

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 771
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 834
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mGridNeighbors:[[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->computeNearestNeighbors()V

    .line 835
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 836
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellHeight:I

    div-int v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mCellWidth:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    .line 837
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 838
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mGridNeighbors:[[I

    aget-object v0, v1, v0

    return-object v0

    .line 841
    :cond_1
    new-array v0, v2, [I

    return-object v0
.end method

.method public getShiftKeyIndex()I
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mShiftKeyIndex:I

    return v0
.end method

.method public getSubstitutionKey(I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 718
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mSubstitutionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 719
    const/4 v0, 0x0

    move v1, v2

    .line 721
    :goto_0
    if-ge v1, v3, :cond_0

    .line 722
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mSubstitutionKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 723
    iget-object v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_1

    .line 727
    :cond_0
    return-object v0

    .line 721
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSwitchPagetKeyIndex()I
    .locals 1

    .prologue
    .line 793
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mSwitchPageKeyIndex:I

    return v0
.end method

.method protected getVerticalGap()I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mShifted:Z

    return v0
.end method

.method public parceemoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1012
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1013
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parceemojilable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1022
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setHorizontalGap(I)V
    .locals 0

    .prologue
    .line 735
    iput p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHorizontalGap:I

    .line 736
    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0

    .prologue
    .line 751
    iput p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultHeight:I

    .line 752
    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0

    .prologue
    .line 759
    iput p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultWidth:I

    .line 760
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-boolean p1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->on:Z

    .line 778
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mShifted:Z

    if-eq v0, p1, :cond_1

    .line 779
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mShifted:Z

    .line 780
    const/4 v0, 0x1

    return v0

    .line 782
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected setVerticalGap(I)V
    .locals 0

    .prologue
    .line 743
    iput p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mDefaultVerticalGap:I

    .line 744
    return-void
.end method
