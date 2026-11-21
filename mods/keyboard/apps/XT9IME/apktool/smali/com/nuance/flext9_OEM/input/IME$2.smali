.class Lcom/nuance/flext9_OEM/input/IME$2;
.super Landroid/os/Handler;
.source "IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    .line 2848
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2852
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2924
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2854
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-static {v0, v2, v4, v1}, Lcom/nuance/flext9_OEM/input/IME;->-wrap2(Lcom/nuance/flext9_OEM/input/IME;Lcom/nuance/flext9_OEM/input/InputFieldInfo;ZZ)V

    goto :goto_0

    .line 2858
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-wrap0(Lcom/nuance/flext9_OEM/input/IME;)V

    goto :goto_0

    .line 2862
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-wrap5(Lcom/nuance/flext9_OEM/input/IME;)V

    goto :goto_0

    .line 2866
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-wrap1(Lcom/nuance/flext9_OEM/input/IME;)V

    goto :goto_0

    .line 2870
    :pswitch_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-wrap6(Lcom/nuance/flext9_OEM/input/IME;)V

    goto :goto_0

    .line 2874
    :pswitch_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    const v1, 0x7f090154

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->-wrap3(Lcom/nuance/flext9_OEM/input/IME;I)V

    goto :goto_0

    .line 2878
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    const v1, 0x7f090155

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->-wrap3(Lcom/nuance/flext9_OEM/input/IME;I)V

    goto :goto_0

    .line 2881
    :pswitch_8
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME$2;->removeMessages(I)V

    .line 2882
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get6(Lcom/nuance/flext9_OEM/input/IME;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2883
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get6(Lcom/nuance/flext9_OEM/input/IME;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 2884
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get6(Lcom/nuance/flext9_OEM/input/IME;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 2885
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 2886
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/nuance/flext9_OEM/input/IME;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2883
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2887
    :cond_2
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 2888
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/nuance/flext9_OEM/input/IME;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_2

    .line 2891
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get6(Lcom/nuance/flext9_OEM/input/IME;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 2895
    :pswitch_9
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get10(Lcom/nuance/flext9_OEM/input/IME;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2896
    :goto_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get10(Lcom/nuance/flext9_OEM/input/IME;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2897
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get10(Lcom/nuance/flext9_OEM/input/IME;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 2898
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 2899
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/nuance/flext9_OEM/input/IME;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2896
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2900
    :cond_5
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 2901
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/nuance/flext9_OEM/input/IME;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_4

    .line 2908
    :pswitch_a
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    if-eqz v0, :cond_6

    .line 2909
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 2911
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/IME;->-get5(Lcom/nuance/flext9_OEM/input/IME;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/IME;->setCandidatesView(Landroid/view/View;)V

    .line 2913
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2914
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    iput-boolean v4, v0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    goto/16 :goto_0

    .line 2916
    :cond_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    iput-boolean v1, v0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    goto/16 :goto_0

    .line 2921
    :pswitch_b
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$2;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-wrap4(Lcom/nuance/flext9_OEM/input/IME;)V

    goto/16 :goto_0

    .line 2852
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method
