.class Lcom/nuance/flext9_OEM/input/HardKeyboard$1;
.super Landroid/os/Handler;
.source "HardKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/HardKeyboard;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/HardKeyboard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHardKeyboardEvent:Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHardKeyboardEvent:Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventClass()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Popup:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->-get2(Lcom/nuance/flext9_OEM/input/HardKeyboard;)Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    .line 95
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getInputFieldInfo()Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getInputFieldInfo()Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getInputFieldInfo()Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v1

    .line 96
    if-nez v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getInputFieldInfo()Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v1

    .line 95
    if-nez v1, :cond_0

    .line 102
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getParentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->setParent(Landroid/view/View;)V

    .line 105
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v2, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->-set0(Lcom/nuance/flext9_OEM/input/HardKeyboard;Lcom/nuance/flext9_OEM/input/IME;)Lcom/nuance/flext9_OEM/input/IME;

    .line 106
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->-get1(Lcom/nuance/flext9_OEM/input/HardKeyboard;)Lcom/nuance/flext9_OEM/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->showWindowOnLongPress()V

    .line 107
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHardKeyboardEvent:Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getData()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHardKeyboardEvent:Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getStringData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/InputView;->showPopupKeyboard(ILjava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$1;->this$0:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->-get0(Lcom/nuance/flext9_OEM/input/HardKeyboard;)Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_0
    .end packed-switch
.end method
