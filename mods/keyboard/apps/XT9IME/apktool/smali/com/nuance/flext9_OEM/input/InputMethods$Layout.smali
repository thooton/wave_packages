.class public Lcom/nuance/flext9_OEM/input/InputMethods$Layout;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# instance fields
.field public mDisplayLayoutName:Ljava/lang/String;

.field public mLayoutId:I

.field public mLayoutResID:I

.field public mParent:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1592
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;Landroid/content/res/XmlResourceParser;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 1598
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1599
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    .line 1600
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mDisplayLayoutName:Ljava/lang/String;

    .line 1601
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutResID:I

    .line 1603
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1605
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1610
    instance-of v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    if-eqz v1, :cond_1

    .line 1611
    check-cast p1, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    .line 1612
    iget v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1615
    :cond_1
    return v0
.end method
