.class final Lcom/android/mms/ui/MessageUtils$10;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$slideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/model/SlideshowModel;Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$10;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$10;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$10;->val$msgUri:Landroid/net/Uri;

    .line 1817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1824
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$10;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1825
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$10;->val$msgUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 1826
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1832
    :cond_0
    return-void

    .line 1827
    :catch_0
    move-exception v0

    .line 1828
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Unable to save message for preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    return-void
.end method
