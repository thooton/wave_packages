.class Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;
.super Landroid/os/Handler;
.source "ChineseHandWritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    .line 657
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 660
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 718
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 721
    :goto_0
    return-void

    .line 662
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;

    iget-char v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->-wrap1(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;C)V

    goto :goto_0

    .line 666
    :pswitch_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->-wrap2(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 675
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->-get1(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)Lcom/nuance/flext9_OEM/input/ChineseHandWritingView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 680
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->-set0(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 683
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->-get2(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 684
    if-ne v0, v4, :cond_4

    .line 685
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->-get2(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 686
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 687
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 691
    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    .line 692
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    invoke-static {v1, v3}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->-set0(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 708
    :goto_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->-wrap0(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)V

    .line 709
    if-eqz v0, :cond_1

    .line 710
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->-wrap1(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;C)V

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->-get0(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->-wrap4(Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;)V

    goto :goto_0

    .line 691
    :cond_3
    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
