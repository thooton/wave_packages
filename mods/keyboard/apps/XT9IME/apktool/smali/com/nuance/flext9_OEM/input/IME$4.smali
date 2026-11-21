.class Lcom/nuance/flext9_OEM/input/IME$4;
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
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME$4;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    .line 4378
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 4383
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4384
    const-string/jumbo v1, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4385
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME$4;->this$0:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->closeDialogs()V

    .line 4387
    :cond_0
    return-void
.end method
