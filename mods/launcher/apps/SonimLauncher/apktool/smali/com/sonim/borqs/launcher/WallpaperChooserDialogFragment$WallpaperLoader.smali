.class Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;
.super Landroid/os/AsyncTask;
.source "WallpaperChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)V
    .locals 2

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 283
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 284
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 285
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 286
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 326
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 327
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    .line 292
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 293
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->-get1(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 292
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    if-nez p1, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-boolean v0, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->-get0(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->-get0(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_2

    .line 311
    iget-object v1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-static {v1, p1}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->-set0(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 312
    iget-object v1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->-get3(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 313
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->-set1(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;)Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 322
    :goto_1
    return-void

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->-set0(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 316
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->-get3(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 299
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
