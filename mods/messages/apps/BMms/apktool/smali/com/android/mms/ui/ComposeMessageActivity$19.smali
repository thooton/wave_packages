.class Lcom/android/mms/ui/ComposeMessageActivity$19;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$19;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 9774
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 9777
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 9787
    :goto_0
    return-void

    .line 9779
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$19;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v1, 0x7f0702dd

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap81(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    goto :goto_0

    .line 9782
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$19;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v1, 0x7f0702de

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap81(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    goto :goto_0

    .line 9777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
