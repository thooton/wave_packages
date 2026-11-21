.class Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;
.super Landroid/os/Handler;
.source "HardKeySymbolWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    .line 528
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/16 v8, 0x17

    const/16 v6, 0x14

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 532
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 703
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get7(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 534
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set2(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 535
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get6(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get4(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->flushCurrentActiveWord()V

    .line 541
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get6(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 542
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get4(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get6(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->onText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get7(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 547
    :cond_1
    new-array v0, v2, [I

    .line 548
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get6(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aput v1, v0, v7

    .line 549
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get4(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get6(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/InputView;->handleCharKey(I[I)V

    .line 550
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get7(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 553
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;

    .line 555
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 556
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap2(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)I

    move-result v4

    .line 557
    div-int v1, v3, v4

    .line 558
    rem-int/2addr v3, v4

    if-lez v3, :cond_2

    .line 559
    add-int/lit8 v1, v1, 0x1

    .line 561
    :cond_2
    iget v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;->keyCode:I

    const/16 v5, 0x13

    if-ne v3, v5, :cond_9

    .line 562
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 563
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 565
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v0

    if-lez v0, :cond_3

    .line 566
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_7

    .line 567
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    add-int/lit8 v3, v1, -0x1

    .line 568
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 567
    invoke-static {v0, v3, v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 569
    :goto_1
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v0, v4, :cond_4

    .line 570
    if-eqz v3, :cond_6

    .line 578
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 579
    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->requestFocus()Z

    .line 580
    invoke-static {v3, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 581
    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 582
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 585
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->requestFocus()Z

    .line 586
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_8

    .line 587
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->updateRowDisplay(II)V

    goto/16 :goto_0

    .line 572
    :cond_6
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    add-int/lit8 v4, v1, -0x1

    .line 573
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v5}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    .line 572
    invoke-static {v3, v4, v5}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v3

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 576
    :cond_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 577
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 576
    invoke-static {v0, v3, v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v3

    goto :goto_2

    .line 589
    :cond_8
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 590
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v2

    .line 589
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->updateRowDisplay(II)V

    goto/16 :goto_0

    .line 591
    :cond_9
    iget v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;->keyCode:I

    if-ne v3, v6, :cond_f

    .line 593
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 594
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 598
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v0

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get5(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 599
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_b

    .line 600
    :cond_a
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v7, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    move v3, v2

    .line 605
    :goto_3
    if-nez v0, :cond_d

    .line 606
    add-int/lit8 v3, v3, 0x1

    .line 608
    if-le v3, v4, :cond_c

    .line 609
    return-void

    .line 602
    :cond_b
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 603
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v5}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 602
    invoke-static {v0, v3, v5}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    move v3, v2

    goto :goto_3

    .line 610
    :cond_c
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v5}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 611
    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v6}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v6

    sub-int/2addr v6, v3

    .line 610
    invoke-static {v0, v5, v6}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    goto :goto_3

    .line 614
    :cond_d
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->requestFocus()Z

    .line 615
    invoke-static {v0, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 616
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 617
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 618
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->requestFocus()Z

    .line 619
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v0

    if-gtz v0, :cond_e

    .line 620
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v7}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->updateRowDisplay(II)V

    goto/16 :goto_0

    .line 622
    :cond_e
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 623
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v2

    .line 622
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->updateRowDisplay(II)V

    goto/16 :goto_0

    .line 624
    :cond_f
    iget v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;->keyCode:I

    const/16 v3, 0x15

    if-ne v1, v3, :cond_12

    .line 625
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v0

    if-le v0, v2, :cond_10

    .line 626
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 627
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 628
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v3

    .line 629
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    .line 628
    invoke-static {v1, v3, v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 630
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->requestFocus()Z

    .line 631
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 632
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    goto/16 :goto_0

    .line 634
    :cond_10
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 635
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 636
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v0

    .line 637
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v5}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v5

    .line 638
    add-int/lit8 v6, v4, -0x1

    .line 637
    invoke-static {v3, v5, v6}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 639
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    if-nez v1, :cond_11

    .line 644
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    add-int/lit8 v0, v0, -0x1

    .line 645
    add-int/lit8 v4, v4, -0x1

    .line 644
    invoke-static {v3, v0, v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 646
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->requestFocus()Z

    .line 647
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 648
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 649
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 650
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v2

    .line 649
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->updateRowDisplay(II)V

    goto/16 :goto_0

    .line 653
    :cond_11
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v7, v8}, Landroid/view/KeyEvent;-><init>(II)V

    .line 655
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    .line 656
    const/16 v2, 0x13

    .line 655
    invoke-virtual {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->dealWithKeyDown(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 659
    :cond_12
    iget v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;->keyCode:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v0

    if-ge v0, v4, :cond_14

    .line 661
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v0

    .line 662
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v3

    .line 663
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v4

    .line 662
    invoke-static {v1, v3, v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    .line 664
    if-nez v1, :cond_13

    .line 667
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 668
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 669
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2, v0, v7}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 670
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v7, v8}, Landroid/view/KeyEvent;-><init>(II)V

    .line 672
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->dealWithKeyDown(ILandroid/view/KeyEvent;)Z

    .line 674
    return-void

    .line 677
    :cond_13
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 678
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 679
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 680
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->requestFocus()Z

    .line 681
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 682
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    goto/16 :goto_0

    .line 684
    :cond_14
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 685
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 686
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I

    move-result v2

    invoke-static {v1, v2, v7}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 687
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v7, v8}, Landroid/view/KeyEvent;-><init>(II)V

    .line 689
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->dealWithKeyDown(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 695
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 696
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->onShortcutKeyPressed(I)V

    goto/16 :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
