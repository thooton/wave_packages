.class public Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;
.super Ljava/lang/Object;
.source "HardKeyboardList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeyboardList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HardKeyboardLayout"
.end annotation


# instance fields
.field public mHardKeyboardLayoutID:Ljava/lang/String;

.field public mLayout:I

.field public mLayoutName:Ljava/lang/String;

.field public mParent:Lcom/nuance/flext9_OEM/input/HardKeyboardList;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/HardKeyboardList;Landroid/content/res/XmlResourceParser;)V
    .locals 3

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mParent:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    .line 137
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/nuance/flext9_OEM/input/R$styleable;->XT9HardKeyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mHardKeyboardLayoutID:Ljava/lang/String;

    .line 139
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mLayoutName:Ljava/lang/String;

    .line 140
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mLayout:I

    .line 141
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mParent:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->-get0(Lcom/nuance/flext9_OEM/input/HardKeyboardList;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultLayoutID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mParent:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mDefaultLayoutID:Ljava/lang/String;

    return-object v0
.end method

.method public saveAsCurrent()V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mHardKeyboardLayoutID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->saveHardKeyboardLayout(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 151
    return-void
.end method
