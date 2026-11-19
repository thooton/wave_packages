.class Lcom/android/mms/ui/SlideView$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field private mScaleFactor:F

.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$MyScaleListener;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 132
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/mms/ui/SlideView$MyScaleListener;->mScaleFactor:F

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SlideView;Lcom/android/mms/ui/SlideView$MyScaleListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideView$MyScaleListener;-><init>(Lcom/android/mms/ui/SlideView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 137
    float-to-double v2, v0

    const-wide v4, 0x3feffffde7210be9L    # 0.999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    float-to-double v2, v0

    const-wide v4, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 138
    :cond_0
    iput v0, p0, Lcom/android/mms/ui/SlideView$MyScaleListener;->mScaleFactor:F

    .line 140
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 150
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 151
    iget v0, p0, Lcom/android/mms/ui/SlideView$MyScaleListener;->mScaleFactor:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$MyScaleListener;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-wrap2(Lcom/android/mms/ui/SlideView;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/SlideView$MyScaleListener;->mScaleFactor:F

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$MyScaleListener;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-wrap3(Lcom/android/mms/ui/SlideView;)V

    goto :goto_0
.end method
