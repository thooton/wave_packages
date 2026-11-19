.class Lcom/android/mms/util/DownloadManager$5;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;

.field final synthetic val$errStr:I


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$5;->this$0:Lcom/android/mms/util/DownloadManager;

    iput p2, p0, Lcom/android/mms/util/DownloadManager$5;->val$errStr:I

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager$5;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v0}, Lcom/android/mms/util/DownloadManager;->-get0(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/util/DownloadManager$5;->val$errStr:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Caught an exception in showErrorCodeToast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
