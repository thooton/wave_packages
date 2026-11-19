.class public Lcom/android/mms/layout/HVGALayoutParameters;
.super Ljava/lang/Object;
.source "HVGALayoutParameters.java"

# interfaces
.implements Lcom/android/mms/layout/LayoutParameters;


# static fields
.field private static mImageHeightLandscape:I

.field private static mImageHeightPortrait:I

.field private static mMaxHeight:I

.field private static mMaxWidth:I

.field private static mTextHeightLandscape:I

.field private static mTextHeightPortrait:I


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const v4, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f000000    # 0.5f

    const v2, 0x3dcccccd    # 0.1f

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    .line 40
    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    const/16 v0, 0xb

    if-eq p2, v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad layout type detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput p2, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    sput v1, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 52
    sput v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    .line 55
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    sput v0, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightLandscape:I

    .line 56
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightLandscape:I

    .line 57
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    sput v0, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightPortrait:I

    .line 58
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightPortrait:I

    .line 69
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    :goto_0
    return v0

    .line 78
    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightLandscape:I

    :goto_0
    return v0

    .line 83
    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightPortrait:I

    goto :goto_0
.end method

.method public getTextHeight()I
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightLandscape:I

    :goto_0
    return v0

    .line 88
    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightPortrait:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    :goto_0
    return v0

    .line 73
    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    goto :goto_0
.end method
