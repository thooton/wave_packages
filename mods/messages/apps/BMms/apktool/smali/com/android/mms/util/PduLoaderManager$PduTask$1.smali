.class Lcom/android/mms/util/PduLoaderManager$PduTask$1;
.super Ljava/lang/Object;
.source "PduLoaderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/PduLoaderManager$PduTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

.field final synthetic val$resultException:Ljava/lang/Throwable;

.field final synthetic val$resultPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field final synthetic val$resultSlideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/util/PduLoaderManager$PduTask;Lcom/google/android/mms/pdu/GenericPdu;Lcom/android/mms/model/SlideshowModel;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iput-object p2, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultPdu:Lcom/google/android/mms/pdu/GenericPdu;

    iput-object p3, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object p4, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultException:Ljava/lang/Throwable;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 199
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iget-object v0, v0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iget-object v0, v0, Lcom/android/mms/util/PduLoaderManager;->mCallbacks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    invoke-static {v1}, Lcom/android/mms/util/PduLoaderManager$PduTask;->-get0(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 200
    if-eqz v0, :cond_1

    .line 202
    invoke-static {v0}, Lcom/android/mms/util/PduLoaderManager;->asList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ItemLoadedCallback;

    .line 203
    const-string/jumbo v2, "Mms"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invoking pdu callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    new-instance v2, Lcom/android/mms/util/PduLoaderManager$PduLoaded;

    iget-object v3, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultPdu:Lcom/google/android/mms/pdu/GenericPdu;

    iget-object v4, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v2, v3, v4}, Lcom/android/mms/util/PduLoaderManager$PduLoaded;-><init>(Lcom/google/android/mms/pdu/GenericPdu;Lcom/android/mms/model/SlideshowModel;)V

    .line 207
    iget-object v3, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultException:Ljava/lang/Throwable;

    invoke-interface {v0, v2, v3}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iget-object v0, v0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    invoke-static {v0}, Lcom/android/mms/util/PduLoaderManager;->-get2(Lcom/android/mms/util/PduLoaderManager;)Lcom/android/mms/util/SimpleCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    invoke-static {v1}, Lcom/android/mms/util/PduLoaderManager$PduTask;->-get0(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->val$resultSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iget-object v0, v0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iget-object v0, v0, Lcom/android/mms/util/PduLoaderManager;->mCallbacks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    invoke-static {v1}, Lcom/android/mms/util/PduLoaderManager$PduTask;->-get0(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iget-object v0, v0, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iget-object v0, v0, Lcom/android/mms/util/PduLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    invoke-static {v1}, Lcom/android/mms/util/PduLoaderManager$PduTask;->-get0(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 218
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pdu task for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    invoke-static {v2}, Lcom/android/mms/util/PduLoaderManager$PduTask;->-get0(Lcom/android/mms/util/PduLoaderManager$PduTask;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "exiting; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/PduLoaderManager$PduTask$1;->this$1:Lcom/android/mms/util/PduLoaderManager$PduTask;

    iget-object v2, v2, Lcom/android/mms/util/PduLoaderManager$PduTask;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iget-object v2, v2, Lcom/android/mms/util/PduLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string/jumbo v2, " remain"

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_3
    return-void
.end method
