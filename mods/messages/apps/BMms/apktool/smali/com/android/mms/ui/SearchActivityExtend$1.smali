.class Lcom/android/mms/ui/SearchActivityExtend$1;
.super Landroid/os/Handler;
.source "SearchActivityExtend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivityExtend;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivityExtend;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivityExtend;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivityExtend$1;->this$0:Lcom/android/mms/ui/SearchActivityExtend;

    .line 129
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend$1;->this$0:Lcom/android/mms/ui/SearchActivityExtend;

    invoke-static {v0}, Lcom/android/mms/ui/SearchActivityExtend;->-wrap0(Lcom/android/mms/ui/SearchActivityExtend;)Landroid/content/Intent;

    move-result-object v0

    .line 135
    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend$1;->this$0:Lcom/android/mms/ui/SearchActivityExtend;

    .line 137
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivityExtend$1;->this$0:Lcom/android/mms/ui/SearchActivityExtend;

    const v2, 0x7f0702fe

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SearchActivityExtend;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    const/4 v2, 0x1

    .line 136
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivityExtend$1;->this$0:Lcom/android/mms/ui/SearchActivityExtend;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SearchActivityExtend;->startActivity(Landroid/content/Intent;)V

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend$1;->this$0:Lcom/android/mms/ui/SearchActivityExtend;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchActivityExtend;->finish()V

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivityExtend$1;->this$0:Lcom/android/mms/ui/SearchActivityExtend;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/SearchActivityExtend;->stopSearchAndKillThread(Landroid/os/Handler;)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
