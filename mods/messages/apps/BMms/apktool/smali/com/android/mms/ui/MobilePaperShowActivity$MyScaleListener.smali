.class Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MobilePaperShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MobilePaperShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MobilePaperShowActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MobilePaperShowActivity;Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;-><init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get5(Lcom/android/mms/ui/MobilePaperShowActivity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get1(Lcom/android/mms/ui/MobilePaperShowActivity;)F

    move-result v3

    .line 134
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->onFontSizeScale(Ljava/util/ArrayList;FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MobilePaperShowActivity;->-set1(Lcom/android/mms/ui/MobilePaperShowActivity;F)F

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get2(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get6(Lcom/android/mms/ui/MobilePaperShowActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->-set2(Lcom/android/mms/ui/MobilePaperShowActivity;Z)Z

    .line 143
    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get2(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity$MyScaleListener;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get6(Lcom/android/mms/ui/MobilePaperShowActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method
