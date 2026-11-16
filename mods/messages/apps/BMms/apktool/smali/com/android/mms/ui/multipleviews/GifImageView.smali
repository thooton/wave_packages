.class public Lcom/android/mms/ui/multipleviews/GifImageView;
.super Landroid/view/View;
.source "GifImageView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mInputStream:Ljava/io/InputStream;

.field private mMovie:Landroid/graphics/Movie;

.field private mStart:J

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/multipleviews/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mContext:Landroid/content/Context;

    .line 54
    invoke-interface {p2, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p2, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/GifImageView;->setGifImageResource(I)V

    .line 58
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/multipleviews/GifImageView;->setFocusable(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mMovie:Landroid/graphics/Movie;

    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mWidth:I

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mHeight:I

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/GifImageView;->requestLayout()V

    .line 68
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 80
    iget-wide v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mStart:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 81
    iput-wide v2, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mStart:J

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    const/16 v0, 0x3e8

    .line 91
    :cond_1
    iget-wide v4, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mStart:J

    sub-long/2addr v2, v4

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v0, v0

    .line 93
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1, v0}, Landroid/graphics/Movie;->setTime(I)Z

    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, p1, v6, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 96
    invoke-virtual {p0}, Lcom/android/mms/ui/multipleviews/GifImageView;->invalidate()V

    .line 98
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mWidth:I

    iget v1, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/multipleviews/GifImageView;->setMeasuredDimension(II)V

    .line 73
    return-void
.end method

.method public setGifImageResource(I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/GifImageView;->mInputStream:Ljava/io/InputStream;

    .line 102
    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/GifImageView;->init()V

    .line 103
    return-void
.end method
