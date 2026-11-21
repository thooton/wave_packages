.class public Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;
.super Ljava/lang/Object;
.source "HardKeySymbolWindow.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;,
        Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;,
        Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;,
        Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;
    }
.end annotation


# static fields
.field private static final synthetic -com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I = null

.field static final BOTH_HALFFULLSHAPE_OPENED:I = 0x2

.field static final DIRECTION_KEY_PRESSED_MESSAGE:I = 0x2

.field static final FULLSHAPE:Ljava/lang/String; = "quanjiao"

.field static final HALFSHAPE:Ljava/lang/String; = "banjiao"

.field static final HALFSHAPE_FULLSHAPE_KEY_PRESSED_MESSAGE:I = 0x4

.field static final NO_HALFSHAPE_FULLSHAPE:I = 0x3

.field static final ONLY_FULLSHAPE_OPENED:I = 0x1

.field static final ONLY_HALFSHAPE_OPENED:I = 0x0

.field static final SHORTCUT_KEY_PRESSED_MESSAGE:I = 0x3

.field static final SYMBOL_KEY_PRESSED_MESSAGE:I = 0x1

.field static final UI_TITLE_ID:I = 0x4b0

.field static final UI_WITCHER_ID:I = 0x4b1

.field static final halfFullShapeKey:I = 0x39


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mClickingKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

.field private mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

.field private mCurContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

.field private mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

.field private mHighlightedRow:I

.field private mInputView:Lcom/nuance/flext9_OEM/input/InputView;

.field private mIsHalfShapeRunning:Ljava/lang/Boolean;

.field private mKeyRows:I

.field private mSV:Landroid/widget/ScrollView;

.field private mSelectedSymbol:Ljava/lang/CharSequence;

.field private mSymbolWindow:Landroid/app/AlertDialog;

.field private mWindowLayout:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mClickingKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    return-object v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    return-object v0
.end method

.method static synthetic -get2(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    return-object v0
.end method

.method static synthetic -get4(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/InputView;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mInputView:Lcom/nuance/flext9_OEM/input/InputView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mKeyRows:I

    return v0
.end method

.method static synthetic -get6(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSelectedSymbol:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get7(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static synthetic -getcom-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->values()[Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Bookmark:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Character:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Index:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Language:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Popup:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_String:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Virtual:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;
    .locals 0

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mClickingKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    return-object p1
.end method

.method static synthetic -set1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;
    .locals 0

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    return-object p1
.end method

.method static synthetic -set2(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSelectedSymbol:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;ILandroid/view/KeyEvent;Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->onHardKeyEvent(ILandroid/view/KeyEvent;Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->findKeyAt(II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)I
    .locals 1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->getKeysInRowForOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->detectOrientation()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$1;-><init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHandler:Landroid/os/Handler;

    .line 1668
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    .line 79
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mInputView:Lcom/nuance/flext9_OEM/input/InputView;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedRow:I

    .line 84
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mIsHalfShapeRunning:Ljava/lang/Boolean;

    .line 86
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    invoke-direct {v0, p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;-><init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    .line 88
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->updatemSymbolWindow(Landroid/content/Context;)V

    .line 92
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mWindowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 95
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    .line 98
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 101
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 103
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 104
    return-void
.end method

.method private calculateKeyinRow(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 505
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 507
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 508
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    div-int/2addr v0, v1

    .line 509
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 510
    add-int/lit8 v0, v0, -0x1

    .line 511
    :cond_0
    return v0
.end method

.method private constructBanjiaoSwitcher(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, -0x2

    .line 464
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 466
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 469
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleBottomMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 470
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleLeftMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 471
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleRightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 472
    const/high16 v2, 0x40000000    # 2.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 474
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 476
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 478
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 479
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 481
    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->detectOrientation()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    .line 490
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRow:I

    .line 495
    :goto_0
    return-object v0

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    .line 493
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRowLandscape:I

    goto :goto_0
.end method

.method private constructTitle(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v10, -0x2

    .line 372
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 373
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 375
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 376
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleText:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleTextColor:I

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleBackColor:I

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 380
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 381
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget v3, v3, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 383
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v3, v3, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 384
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 383
    add-float/2addr v3, v2

    .line 385
    const/high16 v2, 0x3f800000    # 1.0f

    .line 386
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->getKeysInRowForOrientation()I

    move-result v4

    .line 387
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v5, v5, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v5, v5, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    mul-int/2addr v5, v4

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_0

    .line 388
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    div-float v7, v2, v3

    .line 391
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 392
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 393
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 394
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 393
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    move v0, v7

    .line 397
    :goto_0
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget v3, v3, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleTextSize:F

    mul-float/2addr v0, v3

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 399
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 401
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 404
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleBottomMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 405
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 406
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleRightMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 407
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 412
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleTopMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 413
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleLeftMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 414
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 415
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 418
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 423
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    return-object v0

    :cond_0
    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_0
.end method

.method private constructViewSymbols(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->getKeysInRowForOrientation()I

    move-result v0

    .line 341
    if-gtz v0, :cond_2

    .line 342
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->calculateKeyinRow(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    .line 346
    :goto_0
    new-instance v5, Landroid/widget/TableLayout;

    invoke-direct {v5, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 347
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 349
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mKeyRows:I

    .line 350
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 351
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mKeyRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mKeyRows:I

    :cond_0
    move v2, v3

    .line 353
    :goto_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mKeyRows:I

    if-ge v2, v0, :cond_4

    .line 354
    new-instance v7, Landroid/widget/TableRow;

    invoke-direct {v7, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    move v4, v3

    .line 355
    :goto_2
    if-ge v4, v1, :cond_1

    .line 356
    mul-int v0, v2, v1

    add-int/2addr v0, v4

    iget-object v8, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v8, v8, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v0, v8, :cond_3

    .line 364
    :cond_1
    invoke-virtual {v5, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 353
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v1, v0

    .line 344
    goto :goto_0

    .line 358
    :cond_3
    new-instance v8, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 359
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    mul-int v9, v2, v1

    add-int/2addr v9, v4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    invoke-direct {v8, p0, p1, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;-><init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v8, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->setShortCutNum(I)V

    .line 361
    invoke-virtual {v8, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->setRow(I)V

    .line 362
    invoke-virtual {v7, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 355
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 366
    :cond_4
    invoke-virtual {v6, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 367
    return-object v6
.end method

.method private detectOrientation()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 433
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 434
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 435
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 436
    :cond_0
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    .line 437
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 440
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findKeyAt(II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSV:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 293
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 294
    return-object v2

    .line 296
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 297
    if-nez v0, :cond_1

    .line 298
    return-object v2

    .line 300
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TableRow;->getChildCount()I

    move-result v1

    if-lt p2, v1, :cond_2

    .line 301
    return-object v2

    .line 302
    :cond_2
    invoke-virtual {v0, p2}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    return-object v0
.end method

.method private getKeysInRowForOrientation()I
    .locals 1

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->detectOrientation()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 518
    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRow:I

    .line 525
    :goto_0
    return v0

    .line 520
    :cond_0
    if-nez v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRowLandscape:I

    goto :goto_0

    .line 523
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private onHardKeyEvent(ILandroid/view/KeyEvent;Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)Z
    .locals 2

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    if-nez v0, :cond_2

    .line 1674
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    .line 1675
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    if-nez v0, :cond_0

    .line 1676
    const/4 v0, 0x0

    return v0

    .line 1679
    :cond_0
    const v0, 0x7f050005

    .line 1680
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mInputView:Lcom/nuance/flext9_OEM/input/InputView;

    if-eqz v1, :cond_1

    .line 1681
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mInputView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getHardKeyboardLayoutResourceID()I

    move-result v0

    .line 1684
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 1686
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->loadHardKeyboard(Landroid/content/res/XmlResourceParser;)Z

    .line 1689
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v0, p3}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->setHardKeyEventListener(Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)V

    .line 1691
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private updateBanjiaoQuanjiao(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workModeName:Ljava/lang/String;

    const-string/jumbo v1, "banjiao"

    if-ne v0, v1, :cond_1

    .line 308
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mIsHalfShapeRunning:Ljava/lang/Boolean;

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mIsHalfShapeRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->switchJiaoMode(Ljava/lang/Boolean;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->updatemSymbolWindow(Landroid/content/Context;)V

    .line 315
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mWindowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 317
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-static {v0, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 320
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->findKeyAt(II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 321
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->requestFocus()Z

    .line 322
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-static {v0, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 324
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedRow:I

    invoke-virtual {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->updateRowDisplay(II)V

    .line 325
    invoke-direct {p0, v2, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->findKeyAt(II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 328
    return-void

    .line 310
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mIsHalfShapeRunning:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private updatemSymbolWindow(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 107
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mWindowLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mWindowLayout:Landroid/widget/LinearLayout;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mWindowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 111
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->constructViewSymbols(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSV:Landroid/widget/ScrollView;

    .line 112
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSV:Landroid/widget/ScrollView;

    new-instance v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$2;

    invoke-direct {v1, p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$2;-><init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->constructBanjiaoSwitcher(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 133
    const/16 v1, 0x4b1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 136
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->getKeysInRowForOrientation()I

    move-result v2

    .line 138
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mConfig:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    iget-object v4, v4, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v4, v4, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    mul-int/2addr v2, v4

    .line 138
    invoke-direct {v3, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 141
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 153
    const/4 v3, -0x1

    .line 152
    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 157
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSV:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mWindowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmOptionsDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmOptionsDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 183
    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmOptionsDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 188
    :cond_0
    return-void
.end method

.method public getInputMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mInputView:Lcom/nuance/flext9_OEM/input/InputView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    return-object v0
.end method

.method public getKdbId()I
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mInputView:Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->getKdbId()I

    move-result v0

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mInputView:Lcom/nuance/flext9_OEM/input/InputView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    return v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mInputView:Lcom/nuance/flext9_OEM/input/InputView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    return v0
.end method

.method public getSelectedSymbol()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSelectedSymbol:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShiftedState()I
    .locals 1

    .prologue
    .line 1706
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mInputView:Lcom/nuance/flext9_OEM/input/InputView;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmOptionsDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmOptionsDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 173
    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onHardKeyEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z
    .locals 7

    .prologue
    const/16 v6, 0x16

    const/16 v5, 0x15

    const/16 v4, 0x14

    const/16 v2, 0x13

    const/4 v3, 0x0

    .line 1568
    invoke-static {}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-getcom-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventClass()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1641
    :goto_0
    :pswitch_0
    :sswitch_0
    return v3

    .line 1570
    :pswitch_1
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getData()I

    move-result v0

    .line 1571
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v3, v0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1572
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->dealWithKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1574
    const/4 v0, 0x1

    return v0

    .line 1576
    :pswitch_2
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getData()I

    move-result v0

    .line 1578
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1585
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 1590
    :sswitch_2
    new-instance v0, Landroid/view/KeyEvent;

    .line 1591
    const/16 v1, 0x17

    .line 1590
    invoke-direct {v0, v3, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1592
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->dealWithKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 1600
    :sswitch_3
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1602
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-virtual {v1, v5, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->dealWithKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 1606
    :sswitch_4
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1608
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-virtual {v1, v6, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->dealWithKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 1612
    :sswitch_5
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1614
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->dealWithKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 1619
    :sswitch_6
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1621
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-virtual {v1, v4, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->dealWithKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 1568
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1578
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_2
        0x1c -> :sswitch_1
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_1
        0x3e -> :sswitch_2
        0x3f -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onShortcutKeyPressed(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    packed-switch p1, :pswitch_data_0

    move v0, v2

    .line 252
    :goto_0
    iget v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedRow:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v3, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->findKeyAt(II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    .line 253
    if-nez v0, :cond_0

    .line 254
    return-void

    :pswitch_0
    move v0, v1

    .line 226
    goto :goto_0

    .line 228
    :pswitch_1
    const/4 v0, 0x2

    .line 229
    goto :goto_0

    .line 231
    :pswitch_2
    const/4 v0, 0x3

    .line 232
    goto :goto_0

    .line 234
    :pswitch_3
    const/4 v0, 0x4

    .line 235
    goto :goto_0

    .line 237
    :pswitch_4
    const/4 v0, 0x5

    .line 238
    goto :goto_0

    .line 240
    :pswitch_5
    const/4 v0, 0x6

    .line 241
    goto :goto_0

    .line 243
    :pswitch_6
    const/4 v0, 0x7

    .line 244
    goto :goto_0

    .line 246
    :pswitch_7
    const/16 v0, 0x8

    .line 247
    goto :goto_0

    .line 249
    :pswitch_8
    const/16 v0, 0x9

    .line 250
    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSelectedSymbol:Ljava/lang/CharSequence;

    .line 257
    new-array v0, v1, [I

    .line 258
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSelectedSymbol:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aput v1, v0, v2

    .line 260
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mInputView:Lcom/nuance/flext9_OEM/input/InputView;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSelectedSymbol:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/InputView;->handleCharKey(I[I)V

    .line 261
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 263
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public resetShiftStat()V
    .locals 0

    .prologue
    .line 1647
    return-void
.end method

.method public setBackLayout()V
    .locals 0

    .prologue
    .line 1666
    return-void
.end method

.method public setInputMode(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1651
    const/4 v0, 0x0

    return v0
.end method

.method public setLanguage(I)Z
    .locals 1

    .prologue
    .line 1656
    const/4 v0, 0x0

    return v0
.end method

.method public setLayout(I)Z
    .locals 1

    .prologue
    .line 1661
    const/4 v0, 0x0

    return v0
.end method

.method public showWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmOptionsDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmOptionsDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 194
    if-eqz v0, :cond_0

    .line 196
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->setmOptionsDialog(Landroid/app/AlertDialog;)V

    .line 201
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSymbolWindow:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 202
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mCurContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->updatemSymbolWindow(Landroid/content/Context;)V

    .line 203
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mSelectedSymbol:Ljava/lang/CharSequence;

    .line 205
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-static {v0, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 207
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 209
    :cond_2
    invoke-direct {p0, v2, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->findKeyAt(II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 210
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->requestFocus()Z

    .line 211
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z

    .line 212
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedKey:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 213
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedRow:I

    invoke-virtual {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->updateRowDisplay(II)V

    .line 214
    return-void
.end method

.method public switchFromSymbolMode()V
    .locals 0

    .prologue
    .line 1702
    return-void
.end method

.method public updateRowDisplay(II)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 266
    iput p2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHighlightedRow:I

    .line 268
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->getKeysInRowForOrientation()I

    move-result v2

    move v1, v0

    .line 271
    :goto_0
    if-ge v1, v2, :cond_1

    .line 272
    invoke-direct {p0, p1, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->findKeyAt(II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v3

    .line 273
    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {v3, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->setRowFocused(Z)V

    .line 275
    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 271
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    :goto_1
    if-ge v0, v2, :cond_3

    .line 281
    invoke-direct {p0, p2, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->findKeyAt(II)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_2

    .line 283
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->setRowFocused(Z)V

    .line 284
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    :cond_3
    return-void
.end method
