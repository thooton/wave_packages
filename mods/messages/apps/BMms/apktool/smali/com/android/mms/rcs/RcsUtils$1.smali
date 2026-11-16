.class final Lcom/android/mms/rcs/RcsUtils$1;
.super Landroid/os/Handler;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/RcsUtils;->initExceptionHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const v1, 0x7f070044

    .line 941
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 942
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 958
    :goto_0
    return-void

    .line 944
    :pswitch_0
    const v0, 0x7f070043

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->-wrap2(I)V

    goto :goto_0

    .line 947
    :pswitch_1
    invoke-static {v1}, Lcom/android/mms/rcs/RcsUtils;->-wrap2(I)V

    goto :goto_0

    .line 950
    :pswitch_2
    const v0, 0x7f070046

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->-wrap2(I)V

    goto :goto_0

    .line 953
    :pswitch_3
    invoke-static {v1}, Lcom/android/mms/rcs/RcsUtils;->-wrap2(I)V

    goto :goto_0

    .line 942
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
