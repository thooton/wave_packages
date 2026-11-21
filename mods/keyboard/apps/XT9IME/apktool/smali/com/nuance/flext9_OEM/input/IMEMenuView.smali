.class public Lcom/nuance/flext9_OEM/input/IMEMenuView;
.super Ljava/lang/Object;
.source "IMEMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;,
        Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;
    }
.end annotation


# static fields
.field static final ALPHA:Ljava/lang/String; = "alpha"

.field static final CHINESE_SIMPLIFIED:Ljava/lang/String; = "chinese_simplified"

.field static final CHINESE_TRADITIONAL:Ljava/lang/String; = "chinese_traditional"

.field static final IME_LANGUAGE:Ljava/lang/String; = "%languages%"

.field static final IME_OPTION:Ljava/lang/String; = "%options%"

.field static final KOREAN:Ljava/lang/String; = "korean"

.field static final SYMBOL_WINDOW:Ljava/lang/String; = "%symbols%"

.field static final TAG:Ljava/lang/String; = "ImeMenu"


# instance fields
.field private imeMenu:Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;

.field private mAttachedView:Landroid/view/View;

.field private mIme:Lcom/nuance/flext9_OEM/input/IME;

.field private mImeContext:Landroid/content/Context;

.field private mImeMenuDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/IMEMenuView;)Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->imeMenu:Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;

    return-object v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/IMEMenuView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mAttachedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/nuance/flext9_OEM/input/IMEMenuView;)Lcom/nuance/flext9_OEM/input/IME;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    return-object v0
.end method

.method static synthetic -get3(Lcom/nuance/flext9_OEM/input/IMEMenuView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mImeContext:Landroid/content/Context;

    return-object v0
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mImeContext:Landroid/content/Context;

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    .line 52
    new-instance v0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;-><init>(Lcom/nuance/flext9_OEM/input/IMEMenuView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->imeMenu:Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;

    .line 53
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mAttachedView:Landroid/view/View;

    .line 54
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->imeMenu:Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->readImeItems(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->imeMenu:Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->constructView(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;)V

    .line 68
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->SetMenuProperty(Landroid/view/View;)V

    .line 70
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string/jumbo v1, "ImeMenu"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    const-string/jumbo v1, "ImeMenu"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method

.method private SetMenuProperty(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mImeMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 110
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 111
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 113
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 114
    return-void
.end method

.method private constructView(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;)V
    .locals 3

    .prologue
    .line 87
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mImeContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 90
    const v0, 0x7f020026

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 91
    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->imeMenu:Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->getCharSequenceforAll()[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/nuance/flext9_OEM/input/IMEMenuView$1;

    invoke-direct {v2, p0}, Lcom/nuance/flext9_OEM/input/IMEMenuView$1;-><init>(Lcom/nuance/flext9_OEM/input/IMEMenuView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mAttachedView:Landroid/view/View;

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    .line 101
    const v0, 0x7f090172

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mImeMenuDialog:Landroid/app/AlertDialog;

    .line 104
    return-void
.end method

.method private getCurrentLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mAttachedView:Landroid/view/View;

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    .line 74
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string/jumbo v0, "alpha"

    return-object v0

    .line 76
    :cond_0
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const-string/jumbo v0, "chinese_simplified"

    return-object v0

    .line 78
    :cond_1
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    const-string/jumbo v0, "chinese_traditional"

    return-object v0

    .line 80
    :cond_2
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputView;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isKoreanLanguageId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    const-string/jumbo v0, "korean"

    return-object v0

    .line 83
    :cond_3
    const-string/jumbo v0, ""

    return-object v0
.end method


# virtual methods
.method public show()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmOptionsDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmOptionsDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mImeMenuDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mImeContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->imeMenu:Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->constructView(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;)V

    .line 120
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mAttachedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->SetMenuProperty(Landroid/view/View;)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mImeMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->setmOptionsDialog(Landroid/app/AlertDialog;)V

    .line 124
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView;->mImeMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 125
    return-void
.end method
