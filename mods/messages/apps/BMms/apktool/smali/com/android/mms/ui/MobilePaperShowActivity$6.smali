.class Lcom/android/mms/ui/MobilePaperShowActivity$6;
.super Ljava/lang/Object;
.source "MobilePaperShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MobilePaperShowActivity;->forwardMms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MobilePaperShowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 484
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 485
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    const v2, 0x7f07017e

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v2, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get7(Lcom/android/mms/ui/MobilePaperShowActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get7(Lcom/android/mms/ui/MobilePaperShowActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    :goto_0
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 492
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get4(Lcom/android/mms/ui/MobilePaperShowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->makeCopy()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0, v3}, Lcom/android/mms/ui/MobilePaperShowActivity;->-set3(Lcom/android/mms/ui/MobilePaperShowActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 497
    iget-object v6, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    .line 499
    iget-object v3, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    .line 498
    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 497
    const/4 v3, 0x1

    .line 499
    const/4 v5, 0x0

    .line 497
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->-set3(Lcom/android/mms/ui/MobilePaperShowActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 500
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    .line 501
    iget-object v1, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get8(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/net/Uri;

    move-result-object v2

    .line 500
    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/mms/ui/MobilePaperShowActivity;->-set4(Lcom/android/mms/ui/MobilePaperShowActivity;J)J
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_1
    return-void

    .line 489
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    const-string/jumbo v0, "MobilePaperShowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to forward message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get8(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$6;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    .line 505
    const v1, 0x7f070193

    const/4 v2, 0x0

    .line 504
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
