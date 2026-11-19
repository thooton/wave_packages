.class Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;
.super Landroid/os/AsyncTask;
.source "PlayVideoOrPicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/PlayVideoOrPicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveAttachmentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;-><init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    .prologue
    .line 319
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 320
    new-instance v1, Ljava/io/File;

    .line 321
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 320
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 322
    iget-object v3, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070102

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    new-instance v2, Lcom/android/mms/ui/UriImage;

    iget-object v3, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-direct {v2, v3, v0}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v2}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 325
    iget-object v3, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v3, v0, v1, v2}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-wrap0(Lcom/android/mms/ui/PlayVideoOrPicActivity;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->doInBackground([Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 6

    .prologue
    const v5, 0x7f070102

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 330
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 332
    if-eqz p1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get3(Lcom/android/mms/ui/PlayVideoOrPicActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 335
    iget-object v2, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 334
    const v2, 0x7f07035d

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 344
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 338
    iget-object v2, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 337
    const v2, 0x7f07035c

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 328
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/PlayVideoOrPicActivity$SaveAttachmentTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
