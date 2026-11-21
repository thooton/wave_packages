.class Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;
.super Landroid/os/Handler;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/KeyboardViewEx;
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
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    .line 327
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v6, 0x3eb

    const-wide/16 v4, 0x19

    const/16 v3, 0x401

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 330
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 500
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 343
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-wrap5(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;I)V

    goto :goto_0

    .line 351
    :sswitch_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get4(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 359
    :sswitch_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-wrap1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-static {p0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 362
    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 372
    :sswitch_4
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get0(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get2(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get0(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get2(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get0(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get2(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get0(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-wrap3(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    .line 376
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget v2, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 380
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 381
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get2(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)[Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get0(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-wrap2(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V

    goto/16 :goto_0

    .line 392
    :sswitch_5
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-wrap0(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 438
    :sswitch_6
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iput-object v2, v1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMultitapHarKeyName:Ljava/lang/String;

    .line 439
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iput v0, v1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMultitapHarKeyIndex:I

    .line 440
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mMultitapCharacters:[I

    .line 442
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->multitapTimeOut()V

    goto/16 :goto_0

    .line 447
    :sswitch_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onTrace(Ljava/util/ArrayList;)V

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 456
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 460
    :sswitch_8
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_vctTrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_fRadius:F

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_fDecay:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->-wrap4(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V

    .line 465
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_0

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_iFading:I

    add-int/lit8 v1, v1, -0x23

    iput v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_iFading:I

    .line 470
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_fRadius:F

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_fDecay:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_fRadius:F

    .line 472
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 473
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_0

    .line 478
    :sswitch_9
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRippleRadii:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 483
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRippleRadii:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 485
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRippleRadii:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_fRippleExpansion:F

    add-float/2addr v0, v2

    const/high16 v2, 0x42400000    # 48.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 487
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRippleRadii:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 488
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRipplePoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 489
    add-int/lit8 v1, v1, -0x1

    .line 483
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRippleRadii:Ljava/util/List;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_lstRippleRadii:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget v3, v3, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->m_fRippleExpansion:F

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 496
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x402

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 497
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$1;->this$0:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->invalidate()V

    goto/16 :goto_0

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_4
        0x6a -> :sswitch_6
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ed -> :sswitch_5
        0x3f2 -> :sswitch_0
        0x400 -> :sswitch_7
        0x401 -> :sswitch_8
        0x402 -> :sswitch_9
    .end sparse-switch
.end method
