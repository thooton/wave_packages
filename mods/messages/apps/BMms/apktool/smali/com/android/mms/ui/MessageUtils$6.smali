.class final Lcom/android/mms/ui/MessageUtils$6;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;ILandroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$append:Z

.field final synthetic val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentMsgSize:I

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageUri:Landroid/net/Uri;

.field final synthetic val$showProgress:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Landroid/net/Uri;ILcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$6;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$6;->val$showProgress:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$6;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$6;->val$imageUri:Landroid/net/Uri;

    iput p5, p0, Lcom/android/mms/ui/MessageUtils$6;->val$currentMsgSize:I

    iput-object p6, p0, Lcom/android/mms/ui/MessageUtils$6;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iput-boolean p7, p0, Lcom/android/mms/ui/MessageUtils$6;->val$append:Z

    .line 1390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1395
    :try_start_0
    new-instance v2, Lcom/android/mms/ui/UriImage;

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$6;->val$imageUri:Landroid/net/Uri;

    invoke-direct {v2, v0, v1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1396
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v0

    .line 1397
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v1

    .line 1401
    invoke-virtual {v2}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 1407
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRestrictedMessageSize()I

    .line 1408
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    .line 1409
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getUsedCreationMode()I

    move-result v3

    .line 1410
    packed-switch v3, :pswitch_data_0

    .line 1417
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    .line 1423
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v3

    iget v4, p0, Lcom/android/mms/ui/MessageUtils$6;->val$currentMsgSize:I

    sub-int/2addr v3, v4

    add-int/lit16 v3, v3, -0x1388

    .line 1420
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1426
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$6;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$6;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1429
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$6;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/MessageUtils$6$1;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$6;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageUtils$6;->val$append:Z

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/android/mms/ui/MessageUtils$6$1;-><init>(Lcom/android/mms/ui/MessageUtils$6;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Lcom/google/android/mms/pdu/PduPart;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1435
    return-void

    .line 1413
    :pswitch_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRestrictedMessageSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1424
    :catchall_0
    move-exception v0

    .line 1426
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$6;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$6;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1424
    throw v0

    :cond_0
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    .line 1410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
