.class Lcom/android/mms/transaction/TransactionService$1;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    .line 307
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 311
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 313
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v1, 0x7f07024c

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 333
    :cond_1
    return-void

    .line 315
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 316
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 318
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v1, 0x7f07025b

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    if-eqz v1, :cond_5

    .line 320
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v1, 0x7f070257

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    if-eqz v1, :cond_6

    .line 322
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v1, 0x7f070258

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    if-eqz v1, :cond_7

    .line 324
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v1, 0x7f070259

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$1;->this$0:Lcom/android/mms/transaction/TransactionService;

    const v1, 0x7f07025a

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
