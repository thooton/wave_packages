.class public Lcom/android/mms/ui/MaxHeightScrollView;
.super Landroid/widget/ScrollView;
.source "MaxHeightScrollView.java"


# instance fields
.field private final mScrollViewMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object v0, Lcom/android/mms/R$styleable;->maxHeightScrollView:[I

    .line 45
    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    const/4 v1, -0x1

    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MaxHeightScrollView;->mScrollViewMaxHeight:I

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 55
    iget v0, p0, Lcom/android/mms/ui/MaxHeightScrollView;->mScrollViewMaxHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/mms/ui/MaxHeightScrollView;->getMeasuredWidth()I

    move-result v0

    .line 57
    invoke-virtual {p0}, Lcom/android/mms/ui/MaxHeightScrollView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/android/mms/ui/MaxHeightScrollView;->mScrollViewMaxHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MaxHeightScrollView;->setMeasuredDimension(II)V

    .line 59
    :cond_0
    return-void
.end method
