.class Lcom/nuance/flext9_OEM/input/IME$IncomingCallListener;
.super Landroid/telephony/PhoneStateListener;
.source "IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IME;


# direct methods
.method private constructor <init>(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    .prologue
    .line 4362
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$IncomingCallListener;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/flext9_OEM/input/IME;Lcom/nuance/flext9_OEM/input/IME$IncomingCallListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/IME$IncomingCallListener;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 4365
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 4366
    packed-switch p1, :pswitch_data_0

    .line 4375
    :goto_0
    return-void

    .line 4370
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$IncomingCallListener;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->closeDialogs()V

    goto :goto_0

    .line 4366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
