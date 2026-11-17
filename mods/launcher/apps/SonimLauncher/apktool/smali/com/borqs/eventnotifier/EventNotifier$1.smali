.class Lcom/borqs/eventnotifier/EventNotifier$1;
.super Ljava/lang/Object;
.source "EventNotifier.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/borqs/eventnotifier/EventNotifier;->connectToEAService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/borqs/eventnotifier/EventNotifier;


# direct methods
.method constructor <init>(Lcom/borqs/eventnotifier/EventNotifier;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/borqs/eventnotifier/EventNotifier$1;->this$0:Lcom/borqs/eventnotifier/EventNotifier;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier$1;->this$0:Lcom/borqs/eventnotifier/EventNotifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected, isBound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/borqs/eventnotifier/EventNotifier$1;->this$0:Lcom/borqs/eventnotifier/EventNotifier;

    invoke-static {v2}, Lcom/borqs/eventnotifier/EventNotifier;->-get0(Lcom/borqs/eventnotifier/EventNotifier;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/borqs/eventnotifier/EventNotifier;->log(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier$1;->this$0:Lcom/borqs/eventnotifier/EventNotifier;

    invoke-static {p2}, Lcom/borqs/easervice/IEAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/borqs/easervice/IEAService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/borqs/eventnotifier/EventNotifier;->-set1(Lcom/borqs/eventnotifier/EventNotifier;Lcom/borqs/easervice/IEAService;)Lcom/borqs/easervice/IEAService;

    .line 115
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier$1;->this$0:Lcom/borqs/eventnotifier/EventNotifier;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/borqs/eventnotifier/EventNotifier;->-set0(Lcom/borqs/eventnotifier/EventNotifier;Z)Z

    .line 116
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier$1;->this$0:Lcom/borqs/eventnotifier/EventNotifier;

    invoke-static {v0}, Lcom/borqs/eventnotifier/EventNotifier;->-wrap0(Lcom/borqs/eventnotifier/EventNotifier;)V

    .line 117
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier$1;->this$0:Lcom/borqs/eventnotifier/EventNotifier;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/borqs/eventnotifier/EventNotifier;->-set1(Lcom/borqs/eventnotifier/EventNotifier;Lcom/borqs/easervice/IEAService;)Lcom/borqs/easervice/IEAService;

    .line 108
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier$1;->this$0:Lcom/borqs/eventnotifier/EventNotifier;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/borqs/eventnotifier/EventNotifier;->-set0(Lcom/borqs/eventnotifier/EventNotifier;Z)Z

    .line 109
    return-void
.end method
