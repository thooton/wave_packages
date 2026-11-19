.class Lcom/android/mms/ui/ComposeMessageActivity$18;
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 7922
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 7927
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v2, v1

    .line 7935
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const v0, 0x7f0702b2

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7936
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7938
    return-void

    .line 7929
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 7930
    iget v0, p1, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 7927
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
