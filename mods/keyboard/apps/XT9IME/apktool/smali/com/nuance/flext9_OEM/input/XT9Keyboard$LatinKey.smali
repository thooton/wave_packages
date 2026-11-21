.class Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;
.super Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;
.source "XT9Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/XT9Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatinKey"
.end annotation


# instance fields
.field private mScreenDensity:F

.field private mShiftLockEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 391
    invoke-direct/range {p0 .. p5}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 392
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iput v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;->popupResId:I

    .line 397
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;->mScreenDensity:F

    .line 399
    return-void
.end method


# virtual methods
.method public enableShiftLock()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;->mShiftLockEnabled:Z

    .line 403
    return-void
.end method

.method public isInside(II)Z
    .locals 1

    .prologue
    .line 430
    invoke-super {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->isInside(II)Z

    move-result v0

    return v0
.end method

.method public isShiftLockEnabled()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;->mShiftLockEnabled:Z

    return v0
.end method

.method public onReleased(Z)V
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_0

    .line 412
    invoke-super {p0, p1}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->onReleased(Z)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;->pressed:Z

    goto :goto_0
.end method
