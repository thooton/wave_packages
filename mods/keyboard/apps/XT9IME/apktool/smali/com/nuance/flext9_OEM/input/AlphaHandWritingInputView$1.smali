.class Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;
.super Landroid/os/Handler;
.source "AlphaHandWritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    .line 783
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 786
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 819
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 789
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->-get0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/WriteAlphaSettings;->getRecognitionMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 791
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Ljava/util/List;

    .line 792
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 793
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 794
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->-wrap0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;C)V

    goto :goto_0

    .line 798
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->-wrap6(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;Ljava/util/List;)V

    goto :goto_0

    .line 803
    :pswitch_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;

    iget-char v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->-wrap0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;C)V

    goto :goto_0

    .line 807
    :pswitch_2
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->-wrap2(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 811
    :pswitch_3
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;

    iget-char v2, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;->mGestureChar:C

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;->mCandidates:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->-wrap1(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;CLjava/util/List;)V

    goto :goto_0

    .line 815
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->showStartOfWordCandidateList()V

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
