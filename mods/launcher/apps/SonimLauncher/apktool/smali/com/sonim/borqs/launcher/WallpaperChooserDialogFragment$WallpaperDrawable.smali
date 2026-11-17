.class Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WallpaperChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperDrawable"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mIntrinsicHeight:I

.field mIntrinsicWidth:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 349
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 351
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 352
    iget v2, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 353
    iget v2, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 354
    iget-object v2, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 355
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 359
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 340
    iput-object p1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 341
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 342
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicWidth:I

    .line 344
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicHeight:I

    .line 345
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method
