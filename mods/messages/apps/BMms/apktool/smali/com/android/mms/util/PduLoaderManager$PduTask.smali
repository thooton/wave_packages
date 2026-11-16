.class public Lcom/android/mms/util/PduLoaderManager$PduTask;
.super Ljava/lang/Object;
.source "PduLoaderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/PduLoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PduTask"
.end annotation


# instance fields
.field private final mRequestSlideshow:Z

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/util/PduLoaderManager;


# direct methods
.method static synthetic -get0(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/mms/util/PduLoaderManager;Landroid/net/Uri;Z)V
    .locals 1

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    if-nez p2, :cond_0

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 166
    :cond_0
    iput-object p2, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;

    .line 167
    iput-boolean p3, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mRequestSlideshow:Z

    .line 168
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    invoke-static {v1}, Lcom/android/mms/util/PduLoaderManager;->-get1(Lcom/android/mms/util/PduLoaderManager;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 186
    if-eqz v2, :cond_0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mRequestSlideshow:Z

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    invoke-static {v1}, Lcom/android/mms/util/PduLoaderManager;->-get0(Lcom/android/mms/util/PduLoaderManager;)Landroid/content/Context;

    move-result-object v4

    .line 188
    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 187
    invoke-static {v4, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 197
    :goto_0
    iget-object v4, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iget-object v4, v4, Lcom/android/mms/util/PduLoaderManager;->mCallbackHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/mms/util/PduLoaderManager$PduTask$1;

    invoke-direct {v5, p0, v2, v1, v3}, Lcom/android/mms/util/PduLoaderManager$PduTask$1;-><init>(Lcom/android/mms/util/PduLoaderManager$PduTask;Lcom/google/android/mms/pdu/GenericPdu;Lcom/android/mms/model/SlideshowModel;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void

    :cond_0
    move-object v1, v3

    .line 186
    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 191
    :goto_1
    const-string/jumbo v4, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MmsException loading uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/util/PduLoaderManager$PduTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v1

    move-object v1, v3

    move-object v3, v7

    .line 192
    goto :goto_0

    .line 190
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method
