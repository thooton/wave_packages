.class Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$3;
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
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$3;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    .line 960
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 962
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 972
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 975
    :goto_0
    return-void

    .line 964
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$3;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->-wrap5(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)V

    goto :goto_0

    .line 968
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$3;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->-wrap4(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)V

    goto :goto_0

    .line 962
    nop

    :pswitch_data_0
    .packed-switch 0x1f7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
