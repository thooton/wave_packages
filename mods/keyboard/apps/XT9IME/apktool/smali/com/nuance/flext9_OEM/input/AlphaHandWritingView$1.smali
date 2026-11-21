.class Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$1;
.super Landroid/os/Handler;
.source "AlphaHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;->-wrap0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
