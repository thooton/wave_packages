.class Lcom/nuance/flext9_OEM/input/HandWritingInputView$1;
.super Landroid/os/Handler;
.source "HandWritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/HandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/HandWritingInputView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 37
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/HandWritingInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HandWritingInputView;->-wrap0(Lcom/nuance/flext9_OEM/input/HandWritingInputView;)V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
