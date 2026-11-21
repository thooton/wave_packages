.class public Lcom/nuance/flext9_OEM/input/HardKeyboardList;
.super Ljava/lang/Object;
.source "HardKeyboardList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;
    }
.end annotation


# static fields
.field private static TAG_HARD_KEYBOARD_LAYOUT:Ljava/lang/String;

.field private static TAG_HARD_KEYBOARD_LIST:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field public mDefaultLayoutID:Ljava/lang/String;

.field private mHardKeyboardList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/HardKeyboardList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "HardKeyboardList"

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->TAG_HARD_KEYBOARD_LIST:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "HardKeyboardLayout"

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->TAG_HARD_KEYBOARD_LAYOUT:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mHardKeyboardList:Ljava/util/LinkedList;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 35
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 38
    const/4 v0, 0x0

    .line 40
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 41
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 42
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 44
    sget-object v4, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->TAG_HARD_KEYBOARD_LIST:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/nuance/flext9_OEM/input/R$styleable;->XT9HardKeyboard:[I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 46
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mDefaultLayoutID:Ljava/lang/String;

    .line 47
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string/jumbo v1, "ModeCyle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    :cond_1
    return-void

    .line 49
    :cond_2
    :try_start_1
    sget-object v4, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->TAG_HARD_KEYBOARD_LAYOUT:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;

    invoke-direct {v0, v1, p0, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/HardKeyboardList;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 53
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 54
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 56
    sget-object v4, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->TAG_HARD_KEYBOARD_LAYOUT:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->addHardKeyboardLayout(Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private addHardKeyboardLayout(Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mHardKeyboardList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mHardKeyboardList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public static getHardKeyboardLayoutID(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string/jumbo v0, "hard_keyboard_layout_id"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveHardKeyboardLayout(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 159
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "hard_keyboard_layout_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    return-void
.end method


# virtual methods
.method public findHardKeyboardLayout(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mHardKeyboardList:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;

    .line 119
    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mHardKeyboardLayoutID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    return-object v0

    .line 125
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentHardKeyboardLayout()Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;
    .locals 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mDefaultLayoutID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->getHardKeyboardLayoutID(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->findHardKeyboardLayout(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;

    move-result-object v1

    .line 110
    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not find the current layout ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-object v1
.end method

.method public getHardKeyboardLayoutCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mHardKeyboardList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mHardKeyboardList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHardKeyboardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mHardKeyboardList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public isSupportLanguage(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mHardKeyboardList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mHardKeyboardList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 83
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mHardKeyboardList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->mHardKeyboardList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;

    .line 85
    if-eqz v0, :cond_2

    .line 87
    :try_start_0
    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mHardKeyboardLayoutID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, p1, :cond_2

    .line 88
    const/4 v2, 0x1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 83
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
