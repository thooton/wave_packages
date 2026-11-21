.class public Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_FOCUSED:[I

.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public altLabel:Ljava/lang/CharSequence;

.field public codes:[I

.field public edgeFlags:I

.field public emoji:Ljava/lang/String;

.field public emojilable:Ljava/lang/String;

.field public focused:Z

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field private final keyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

.field public label:Ljava/lang/CharSequence;

.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field public mKeyTextColor:I

.field public mKeyTextSize:I

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupLabel:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public shadow:Z

.field public showPopup:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public visible:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x10100a0

    const v4, 0x10100a7

    const/4 v3, 0x1

    const v1, 0x101009f

    const/4 v2, 0x0

    .line 366
    filled-new-array {v1, v5}, [I

    move-result-object v0

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_NORMAL_ON:[I

    .line 371
    filled-new-array {v4, v1, v5}, [I

    move-result-object v0

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_PRESSED_ON:[I

    .line 377
    new-array v0, v3, [I

    .line 378
    aput v1, v0, v2

    .line 377
    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 381
    filled-new-array {v4, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 386
    new-array v0, v2, [I

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_NORMAL:[I

    .line 389
    new-array v0, v3, [I

    .line 390
    aput v4, v0, v2

    .line 389
    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_PRESSED:[I

    .line 392
    new-array v0, v3, [I

    .line 393
    const v1, 0x101009c

    aput v1, v0, v2

    .line 392
    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_FOCUSED:[I

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 411
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;-><init>(Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;)V

    .line 413
    iput p3, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    .line 414
    iput p4, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    .line 416
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->KeyboardEx:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->keyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get5(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v1

    iget v2, p2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->defaultWidth:I

    invoke-static {v0, v6, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    .line 419
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->keyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get4(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v1

    iget v2, p2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->defaultHeight:I

    invoke-static {v0, v7, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    .line 420
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->keyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get5(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v1

    iget v2, p2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->defaultHorizontalGap:I

    const/4 v3, 0x5

    invoke-static {v0, v3, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->gap:I

    .line 422
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 424
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->KeyboardEx_Key:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 426
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->gap:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    .line 428
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 429
    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 431
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_7

    .line 432
    :cond_0
    new-array v2, v5, [I

    iget v1, v1, Landroid/util/TypedValue;->data:I

    aput v1, v2, v4

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    .line 438
    :cond_1
    :goto_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 440
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 444
    :cond_2
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 445
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    .line 446
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->repeatable:Z

    .line 447
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->modifier:Z

    .line 448
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->sticky:Z

    .line 449
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->edgeFlags:I

    .line 451
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->edgeFlags:I

    iget v2, p2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->rowEdgeFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->edgeFlags:I

    .line 453
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 455
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 456
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 459
    :cond_3
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 460
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 461
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 462
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupLabel:Ljava/lang/CharSequence;

    .line 464
    iput-boolean v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->showPopup:Z

    .line 465
    iput-boolean v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->visible:Z

    .line 466
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->shadow:Z

    .line 468
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 469
    new-array v1, v5, [I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput v2, v1, v4

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    .line 472
    :cond_4
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 475
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v2, 0x7f020006

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 477
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 480
    :cond_5
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_6

    .line 481
    iget-object v1, p2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 484
    :cond_6
    iget v1, p2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mKeyTextSize:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextSize:I

    .line 485
    iget v1, p2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mKeyTextColor:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->mKeyTextColor:I

    .line 487
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 488
    return-void

    .line 434
    :cond_7
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v6, :cond_1

    .line 435
    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;)V
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->-get0(Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;)Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->keyboard:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    .line 399
    return-void
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 515
    :cond_0
    if-lez v0, :cond_1

    .line 516
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    return v2

    .line 520
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 2

    .prologue
    .line 582
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_NORMAL:[I

    .line 584
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->on:Z

    if-eqz v1, :cond_2

    .line 585
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->pressed:Z

    if-eqz v0, :cond_1

    .line 586
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_PRESSED_ON:[I

    .line 606
    :cond_0
    :goto_0
    return-object v0

    .line 588
    :cond_1
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_0

    .line 591
    :cond_2
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->sticky:Z

    if-eqz v1, :cond_4

    .line 592
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->pressed:Z

    if-eqz v0, :cond_3

    .line 593
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_0

    .line 595
    :cond_3
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_0

    .line 598
    :cond_4
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->pressed:Z

    if-eqz v1, :cond_5

    .line 599
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_PRESSED:[I

    goto :goto_0

    .line 601
    :cond_5
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->focused:Z

    if-eqz v1, :cond_0

    .line 602
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->KEY_STATE_FOCUSED:[I

    goto :goto_0
.end method

.method public isInside(II)Z
    .locals 2

    .prologue
    .line 556
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 557
    const/4 v0, 0x1

    return v0

    .line 560
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPressed()V
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->pressed:Z

    .line 497
    return-void
.end method

.method public onReleased(Z)V
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->pressed:Z

    .line 507
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->sticky:Z

    if-eqz v0, :cond_0

    .line 508
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->on:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->on:Z

    .line 510
    :cond_0
    return-void
.end method

.method parseCSV(Ljava/lang/String;)[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 526
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 527
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    .line 528
    :goto_0
    const-string/jumbo v3, ","

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 529
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 532
    :cond_1
    new-array v2, v2, [I

    .line 534
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ","

    invoke-direct {v3, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 539
    add-int/lit8 v0, v1, 0x1

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    goto :goto_1

    .line 540
    :catch_0
    move-exception v0

    .line 541
    :goto_2
    const-string/jumbo v0, "KeyboardEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error parsing keycodes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 544
    :cond_2
    return-object v2

    .line 540
    :catch_1
    move-exception v1

    move v1, v0

    goto :goto_2
.end method

.method public squaredDistanceFrom(II)I
    .locals 3

    .prologue
    .line 571
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->x:I

    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 572
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->y:I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v1, p2

    .line 573
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0
.end method
