.class public Lcom/android/mms/ui/multipleviews/GifImageViewFragment;
.super Landroid/app/Fragment;
.source "GifImageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;,
        Lcom/android/mms/ui/multipleviews/GifImageViewFragment$2;,
        Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;
    }
.end annotation


# static fields
.field private static mUri:Landroid/net/Uri;


# instance fields
.field private mBitmapAnimate:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field mDecodeGifBitmap:Ljava/lang/Runnable;

.field mGifAnimation:Ljava/lang/Runnable;

.field private mGifView:Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;

.field private mHandler:Landroid/os/Handler;

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieStart:J


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mBitmapAnimate:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mGifView:Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)Landroid/graphics/Movie;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mMovieStart:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mMovieStart:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->retrieveGifContent()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mBitmapAnimate:Landroid/graphics/Bitmap;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mHandler:Landroid/os/Handler;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mMovieStart:J

    .line 94
    new-instance v0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$1;-><init>(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mGifAnimation:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$2;-><init>(Lcom/android/mms/ui/multipleviews/GifImageViewFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mDecodeGifBitmap:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method public static newInstance(Landroid/net/Uri;)Lcom/android/mms/ui/multipleviews/GifImageViewFragment;
    .locals 1

    .prologue
    .line 58
    sput-object p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mUri:Landroid/net/Uri;

    .line 59
    new-instance v0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;

    invoke-direct {v0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;-><init>()V

    return-object v0
.end method

.method private retrieveGifContent()V
    .locals 3

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 83
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 84
    array-length v0, v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mMovie:Landroid/graphics/Movie;

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    .line 86
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 85
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mBitmapAnimate:Landroid/graphics/Bitmap;

    .line 87
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mBitmapAnimate:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mCanvas:Landroid/graphics/Canvas;

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mGifAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mGifView:Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;

    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mGifView:Lcom/android/mms/ui/multipleviews/GifImageViewFragment$GifImageView;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mGifAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageViewFragment;->mDecodeGifBitmap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :cond_0
    return-void
.end method
