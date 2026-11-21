.class Lcom/nuance/flext9_OEM/input/KeyboardViewEx$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$2;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    .line 662
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .prologue
    const/high16 v6, 0x44480000    # 800.0f

    const/high16 v5, 0x43fa0000    # 500.0f

    const/high16 v4, -0x3c060000    # -500.0f

    const/4 v3, 0x1

    .line 666
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 667
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 669
    cmpl-float v2, p3, v5

    if-lez v2, :cond_0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 670
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$2;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->swipeRight()V

    .line 671
    return v3

    .line 672
    :cond_0
    cmpg-float v2, p3, v4

    if-gez v2, :cond_1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 673
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$2;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->swipeLeft()V

    .line 674
    return v3

    .line 675
    :cond_1
    cmpg-float v2, p4, v4

    if-gez v2, :cond_2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 676
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$2;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->swipeUp()V

    .line 677
    return v3

    .line 678
    :cond_2
    cmpl-float v2, p4, v5

    if-lez v2, :cond_3

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 679
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$2;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->swipeDown()V

    .line 680
    return v3

    .line 681
    :cond_3
    cmpl-float v0, v0, v6

    if-gtz v0, :cond_4

    cmpl-float v0, v1, v6

    if-lez v0, :cond_5

    .line 682
    :cond_4
    return v3

    .line 684
    :cond_5
    const/4 v0, 0x0

    return v0
.end method
