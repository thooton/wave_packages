.class Lcom/android/mms/ui/ComposeMessageActivity$6;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 2750
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2753
    const-string/jumbo v0, "com.android.mms.PROGRESS_STATUS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2754
    const-string/jumbo v0, "token"

    .line 2755
    const-wide/16 v2, -0x1

    .line 2754
    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2756
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2757
    return-void

    .line 2760
    :cond_0
    const-string/jumbo v0, "progress"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2761
    sparse-switch v0, :sswitch_data_0

    .line 2770
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgress(I)V

    .line 2773
    :cond_1
    :goto_0
    return-void

    .line 2763
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgressBarVisibility(Z)V

    goto :goto_0

    .line 2767
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$6;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgressBarVisibility(Z)V

    goto :goto_0

    .line 2761
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
