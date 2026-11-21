.class Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$2;
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
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$2;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    .line 829
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 833
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 839
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 842
    :goto_0
    return-void

    .line 835
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView$2;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->-wrap3(Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;)V

    goto :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
