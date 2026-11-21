.class Lcom/nuance/flext9_OEM/input/HandWritingPopupView$1;
.super Landroid/os/Handler;
.source "HandWritingPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HandWritingPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/HandWritingPopupView;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/HandWritingPopupView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$1;->this$0:Lcom/nuance/flext9_OEM/input/HandWritingPopupView;

    .line 327
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 329
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 332
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Ljava/util/List;

    .line 344
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$1;->this$0:Lcom/nuance/flext9_OEM/input/HandWritingPopupView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->-wrap1(Lcom/nuance/flext9_OEM/input/HandWritingPopupView;C)V

    goto :goto_0

    .line 348
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;

    iget-char v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$CharWriteEvent;->mChar:C

    .line 349
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$1;->this$0:Lcom/nuance/flext9_OEM/input/HandWritingPopupView;

    invoke-virtual {v1, v0, v3}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->onKey(I[I)V

    goto :goto_0

    .line 353
    :pswitch_2
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$1;->this$0:Lcom/nuance/flext9_OEM/input/HandWritingPopupView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 357
    :pswitch_3
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$1;->this$0:Lcom/nuance/flext9_OEM/input/HandWritingPopupView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;

    iget-char v2, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;->mGestureChar:C

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$InstantGestureWriteEvent;->mCandidates:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->-wrap0(Lcom/nuance/flext9_OEM/input/HandWritingPopupView;CLjava/util/List;)V

    goto :goto_0

    .line 361
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$KeyWriteEvent;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/WriteRecognizerListener$KeyWriteEvent;->mKey:I

    .line 362
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$1;->this$0:Lcom/nuance/flext9_OEM/input/HandWritingPopupView;

    invoke-virtual {v1, v0, v3}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->onKey(I[I)V

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
