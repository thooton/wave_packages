.class Lcom/nuance/flext9_OEM/input/ChineseInputView$1;
.super Landroid/os/Handler;
.source "ChineseInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/ChineseInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/ChineseInputView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseInputView;

    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->-wrap4(Lcom/nuance/flext9_OEM/input/ChineseInputView;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->-wrap1(Lcom/nuance/flext9_OEM/input/ChineseInputView;)V

    goto :goto_0

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->-wrap2(Lcom/nuance/flext9_OEM/input/ChineseInputView;)V

    goto :goto_0

    .line 90
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->-wrap0(Lcom/nuance/flext9_OEM/input/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/ChineseInputView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->-wrap3(Lcom/nuance/flext9_OEM/input/ChineseInputView;ZZ)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
