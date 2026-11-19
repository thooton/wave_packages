.class Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

.field final synthetic val$resultBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iput-object p2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 278
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iget-object v0, v0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v0, v0, Lcom/android/mms/util/ThumbnailManager;->mCallbacks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    invoke-static {v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->-get1(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 279
    if-eqz v0, :cond_3

    .line 280
    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    invoke-static {v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->-get0(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/util/ThumbnailManager;->-get2()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 285
    :goto_0
    invoke-static {v0}, Lcom/android/mms/util/ThumbnailManager;->asList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ItemLoadedCallback;

    .line 286
    const-string/jumbo v3, "Mms"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const-string/jumbo v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invoking item loaded callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    new-instance v3, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    iget-object v4, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    invoke-static {v4}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->-get0(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Z

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 291
    invoke-interface {v0, v3, v7}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 281
    :cond_1
    invoke-static {}, Lcom/android/mms/util/ThumbnailManager;->-get1()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 295
    :cond_3
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 296
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "No image callback!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 303
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iget-object v0, v0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-static {v0}, Lcom/android/mms/util/ThumbnailManager;->-get3(Lcom/android/mms/util/ThumbnailManager;)Lcom/android/mms/util/SimpleCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    invoke-static {v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->-get1(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in callback runnable: bitmap uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    invoke-static {v2}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->-get1(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    const-string/jumbo v2, " width: "

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    const-string/jumbo v2, " height: "

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    const-string/jumbo v2, " size: "

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iget-object v0, v0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v0, v0, Lcom/android/mms/util/ThumbnailManager;->mCallbacks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    invoke-static {v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->-get1(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iget-object v0, v0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v0, v0, Lcom/android/mms/util/ThumbnailManager;->mPendingTaskUris:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    invoke-static {v1}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->-get1(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 315
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 316
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Image task for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    invoke-static {v2}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->-get1(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "exiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iget-object v2, v2, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v2, v2, Lcom/android/mms/util/ThumbnailManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    const-string/jumbo v2, " remain"

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_6
    return-void
.end method
