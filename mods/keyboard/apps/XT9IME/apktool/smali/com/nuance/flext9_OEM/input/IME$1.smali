.class Lcom/nuance/flext9_OEM/input/IME$1;
.super Landroid/content/BroadcastReceiver;
.source "IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$1;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    .line 2374
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2379
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2380
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    .line 2379
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2381
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$1;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-wrap7(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 2420
    :cond_0
    :goto_0
    return-void

    .line 2382
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2383
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 2382
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2384
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$1;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->onDestroy()V

    goto :goto_0

    .line 2385
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2386
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    .line 2385
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2390
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$1;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->updateStatusBarIcon(Z)V

    .line 2391
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$1;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$1;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->handleClose()V

    goto :goto_0

    .line 2398
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2399
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    .line 2398
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2407
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2408
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 2407
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2409
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$1;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get8(Lcom/nuance/flext9_OEM/input/IME;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$1;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get8(Lcom/nuance/flext9_OEM/input/IME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$1;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->-get8(Lcom/nuance/flext9_OEM/input/IME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2411
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$1;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-static {v0, v2}, Lcom/nuance/flext9_OEM/input/IME;->-set0(Lcom/nuance/flext9_OEM/input/IME;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 2415
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "action_ptt_call_started"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2416
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "action_ptt_alert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2415
    if-eqz v0, :cond_0

    .line 2417
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$1;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->hideWindow()V

    goto/16 :goto_0
.end method
