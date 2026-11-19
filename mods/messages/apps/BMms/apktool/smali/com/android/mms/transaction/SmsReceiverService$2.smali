.class Lcom/android/mms/transaction/SmsReceiverService$2;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Inside timer expired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiverService;->-get0(Lcom/android/mms/transaction/SmsReceiverService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$2;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiverService;->-wrap7(Lcom/android/mms/transaction/SmsReceiverService;)V

    .line 314
    :cond_0
    return-void
.end method
