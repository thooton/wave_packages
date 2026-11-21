.class public Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field public mKeyTextColor:I

.field public mKeyTextSize:I

.field public mode:I

.field private final parent:Lcom/nuance/flext9_OEM/input/KeyboardEx;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;)Lcom/nuance/flext9_OEM/input/KeyboardEx;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->parent:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardEx;Landroid/content/res/XmlResourceParser;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->parent:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    .line 230
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 231
    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->KeyboardEx:[I

    .line 230
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 235
    invoke-static {p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get5(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v1

    invoke-static {p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get3(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v2

    .line 233
    invoke-static {v0, v6, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->defaultWidth:I

    .line 238
    invoke-static {p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get4(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v1

    invoke-static {p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get0(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v2

    .line 236
    invoke-static {v0, v7, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->defaultHeight:I

    .line 241
    invoke-static {p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get5(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v1

    invoke-static {p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get1(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v2

    .line 240
    const/4 v3, 0x5

    .line 239
    invoke-static {v0, v3, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->defaultHorizontalGap:I

    .line 244
    invoke-static {p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get4(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v1

    invoke-static {p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get2(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v2

    .line 243
    const/4 v3, 0x6

    .line 242
    invoke-static {v0, v3, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->verticalGap:I

    .line 245
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 248
    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->KeyboardEx_Row:[I

    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 250
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mode:I

    .line 253
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 256
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v2, 0x7f020006

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 262
    iget-object v1, p2, Lcom/nuance/flext9_OEM/input/KeyboardEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 264
    :cond_1
    invoke-static {p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get7(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mKeyTextSize:I

    .line 265
    invoke-static {p2}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->-get6(Lcom/nuance/flext9_OEM/input/KeyboardEx;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mKeyTextColor:I

    .line 267
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    return-void
.end method

.method public constructor <init>(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->parent:Lcom/nuance/flext9_OEM/input/KeyboardEx;

    .line 226
    return-void
.end method
