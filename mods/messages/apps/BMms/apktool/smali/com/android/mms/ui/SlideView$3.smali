.class Lcom/android/mms/ui/SlideView$3;
.super Landroid/widget/ScrollView;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->enableMMSConformanceMode(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBottomY:I

.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    .line 599
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 603
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 604
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView$3;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 605
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView$3;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 606
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView$3;->getHeight()I

    move-result v2

    .line 607
    if-ge v2, v1, :cond_0

    sub-int v0, v1, v2

    :cond_0
    iput v0, p0, Lcom/android/mms/ui/SlideView$3;->mBottomY:I

    .line 609
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 613
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/mms/ui/SlideView$3;->mBottomY:I

    if-lt p2, v0, :cond_1

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-get2(Lcom/android/mms/ui/SlideView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 614
    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->-get2(Lcom/android/mms/ui/SlideView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 619
    :cond_1
    return-void
.end method
