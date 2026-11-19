.class Lcom/android/mms/ui/MobilePaperShowActivity$5;
.super Landroid/widget/ScrollView;
.source "MobilePaperShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MobilePaperShowActivity;->drawRootView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currentX:I

.field private currentY:I

.field private moveX:I

.field private moveY:I

.field final synthetic this$0:Lcom/android/mms/ui/MobilePaperShowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MobilePaperShowActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    .line 306
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 340
    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->moveX:I

    if-gt v0, v5, :cond_1

    iget v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->moveY:I

    if-le v0, v5, :cond_2

    .line 341
    :cond_1
    iput v4, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->moveX:I

    .line 342
    iput v4, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->moveY:I

    .line 343
    invoke-virtual {p0}, Lcom/android/mms/ui/MobilePaperShowActivity$5;->stopNestedScroll()V

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get3(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 315
    :pswitch_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->currentX:I

    .line 317
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->currentY:I

    goto :goto_0

    .line 322
    :pswitch_1
    iput v4, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->currentX:I

    .line 323
    iput v4, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->currentY:I

    .line 324
    invoke-virtual {p0}, Lcom/android/mms/ui/MobilePaperShowActivity$5;->stopNestedScroll()V

    goto :goto_0

    .line 329
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 330
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 332
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 334
    iget v2, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->moveX:I

    iget v3, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->currentX:I

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->moveX:I

    .line 335
    iget v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->moveY:I

    iget v2, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->currentY:I

    sub-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$5;->moveY:I

    goto :goto_1

    .line 346
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x105
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 327
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch
.end method
