.class Lcom/android/mms/util/DownloadManager$4;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$4;->this$0:Lcom/android/mms/util/DownloadManager;

    iput-object p2, p0, Lcom/android/mms/util/DownloadManager$4;->val$uri:Landroid/net/Uri;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager$4;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v0}, Lcom/android/mms/util/DownloadManager;->-get0(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager$4;->this$0:Lcom/android/mms/util/DownloadManager;

    iget-object v2, p0, Lcom/android/mms/util/DownloadManager$4;->val$uri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/mms/util/DownloadManager;->-wrap0(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 222
    const/4 v2, 0x1

    .line 221
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string/jumbo v1, "Mms"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
