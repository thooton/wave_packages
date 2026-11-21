.class Lcom/nuance/flext9_OEM/input/HandWritingPopupView$2;
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
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$2;->this$0:Lcom/nuance/flext9_OEM/input/HandWritingPopupView;

    .line 388
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 391
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 400
    :goto_0
    return-void

    .line 393
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HandWritingPopupView$2;->this$0:Lcom/nuance/flext9_OEM/input/HandWritingPopupView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HandWritingPopupView;->-wrap2(Lcom/nuance/flext9_OEM/input/HandWritingPopupView;)V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
