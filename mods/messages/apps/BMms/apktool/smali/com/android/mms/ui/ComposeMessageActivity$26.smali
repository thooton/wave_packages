.class Lcom/android/mms/ui/ComposeMessageActivity$26;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 10961
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {p2}, Lorg/codeaurora/presenceserv/IPresenceService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/presenceserv/IPresenceService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set19(Lcom/android/mms/ui/ComposeMessageActivity;Lorg/codeaurora/presenceserv/IPresenceService;)Lorg/codeaurora/presenceserv/IPresenceService;

    .line 10963
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get46(Lcom/android/mms/ui/ComposeMessageActivity;)Lorg/codeaurora/presenceserv/IPresenceService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get8(Lcom/android/mms/ui/ComposeMessageActivity;)Lorg/codeaurora/presenceserv/IPresenceServiceCB;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codeaurora/presenceserv/IPresenceService;->registerCallback(Lorg/codeaurora/presenceserv/IPresenceServiceCB;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10967
    :goto_0
    return-void

    .line 10964
    :catch_0
    move-exception v0

    .line 10965
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PresenceService registerCallback error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 10970
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$26;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set19(Lcom/android/mms/ui/ComposeMessageActivity;Lorg/codeaurora/presenceserv/IPresenceService;)Lorg/codeaurora/presenceserv/IPresenceService;

    .line 10971
    return-void
.end method
