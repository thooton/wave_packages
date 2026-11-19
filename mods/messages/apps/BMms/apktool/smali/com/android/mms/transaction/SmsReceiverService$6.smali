.class Lcom/android/mms/transaction/SmsReceiverService$6;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V
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
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$6;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$6;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService$6;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const v2, 0x7f070333

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 581
    const/4 v2, 0x0

    .line 580
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 582
    return-void
.end method
