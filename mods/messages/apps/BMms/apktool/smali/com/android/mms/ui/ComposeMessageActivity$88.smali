.class Lcom/android/mms/ui/ComposeMessageActivity$88;
.super Lcom/suntek/mway/rcs/client/api/capability/CapabiltyListener;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->checkCapability(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 9952
    invoke-direct {p0}, Lcom/suntek/mway/rcs/client/api/capability/CapabiltyListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCallback(Lcom/suntek/mway/rcs/client/aidl/service/entity/RCSCapabilities;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " RCSCapabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9957
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    .line 9956
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    .line 9958
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 9959
    invoke-virtual {p1}, Lcom/suntek/mway/rcs/client/aidl/service/entity/RCSCapabilities;->isBurnAfterReading()Z

    move-result v0

    .line 9958
    if-eqz v0, :cond_1

    .line 9960
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set4(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 9964
    :goto_1
    return-void

    .line 9957
    :cond_0
    invoke-virtual {p1}, Lcom/suntek/mway/rcs/client/aidl/service/entity/RCSCapabilities;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9962
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$88;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set4(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto :goto_1
.end method
