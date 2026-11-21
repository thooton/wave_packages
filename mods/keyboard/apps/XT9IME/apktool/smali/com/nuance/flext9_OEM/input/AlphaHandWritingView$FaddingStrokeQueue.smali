.class Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;
.super Ljava/lang/Object;
.source "AlphaHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaddingStrokeQueue"
.end annotation


# static fields
.field private static final MAX_QUEUE_CAPACITY:I = 0x20


# instance fields
.field mFaddingStrokes:[Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

.field mFaddingStrokesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;",
            ">;"
        }
    .end annotation
.end field

.field private mFadingQueueSize:I

.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x20

    .line 219
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->this$0:Lcom/nuance/flext9_OEM/input/AlphaHandWritingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-array v0, v4, [Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    move v0, v1

    .line 220
    :goto_0
    if-ge v0, v4, :cond_0

    .line 221
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    new-instance v3, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    invoke-direct {v3, p2, p3}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iput v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 225
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 248
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-lez v1, :cond_0

    .line 249
    :goto_0
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method private removeEnd()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 278
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-lez v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    aget-object v1, v1, v0

    .line 280
    :goto_0
    iget v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 287
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/Path;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->removeEnd()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    .line 235
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;->resetAlpha()V

    .line 236
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 237
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 238
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    iget v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    aput-object v0, v1, v2

    .line 239
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_1
    const-string/jumbo v0, "FadingQueue"

    const-string/jumbo v1, "CAN NOT BE!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 269
    :goto_0
    iget v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    iput v1, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 274
    return-void
.end method

.method public reduceAlpha()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 256
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-lez v0, :cond_1

    move v0, v1

    .line 257
    :goto_0
    iget v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;->decreaseAlpha()V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingView$FaddingStrokeQueue;->removeEnd()V

    .line 265
    :cond_1
    return-void
.end method
