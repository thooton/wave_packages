.class Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseAttachmentViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BaseAttachmentViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetDataAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private attachmentViewActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/ui/BaseAttachmentViewActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BaseAttachmentViewActivity;)V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;->attachmentViewActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 183
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-static {}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GetDataAsyncTask doInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;->attachmentViewActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    .line 189
    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 193
    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    invoke-static {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->-wrap0(Lcom/android/mms/ui/BaseAttachmentViewActivity;)V

    .line 201
    :goto_1
    return-object v4

    .line 194
    :catch_0
    move-exception v1

    .line 195
    invoke-static {}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Cannot present the slide show."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GetDataAsyncTask Activity is null "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 204
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;->attachmentViewActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    .line 208
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onDataLoadFinished()V

    .line 211
    :cond_0
    return-void
.end method
