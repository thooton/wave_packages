.class Lcom/android/mms/ui/SlideshowPresenter$1;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    .line 89
    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v3

    .line 88
    invoke-static {v2, p1, v3}, Lcom/android/mms/ui/SlideshowPresenter;->-wrap1(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v2

    iput v2, v1, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 90
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    .line 91
    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v0

    .line 90
    invoke-static {v2, p2, v0}, Lcom/android/mms/ui/SlideshowPresenter;->-wrap0(Lcom/android/mms/ui/SlideshowPresenter;II)F

    move-result v0

    iput v0, v1, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, v1, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput v0, v1, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    .line 97
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iput v0, v1, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    .line 102
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$1;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v0, v0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    goto :goto_0
.end method
