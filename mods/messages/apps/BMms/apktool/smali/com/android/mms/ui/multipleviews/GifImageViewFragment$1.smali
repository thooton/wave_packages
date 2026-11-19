.class Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;
.super Ljava/lang/Object;
.source "GifImageViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/multipleviews/GifImageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-static {v1}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->-get5(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->-set0(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;J)J

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-static {v1}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->-get4(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Landroid/graphics/Movie;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v1

    if-lez v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->-get5(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)J

    move-result-wide v0

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-static {v2}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->-get4(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Landroid/graphics/Movie;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-static {v1}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->-get4(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Landroid/graphics/Movie;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Movie;->setTime(I)Z

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->-get4(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Landroid/graphics/Movie;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-static {v1}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->-get1(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Landroid/graphics/Canvas;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->-get2(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-static {v1}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->-get0(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->-get3(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    iget-object v1, v1, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mGifAnimation:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
