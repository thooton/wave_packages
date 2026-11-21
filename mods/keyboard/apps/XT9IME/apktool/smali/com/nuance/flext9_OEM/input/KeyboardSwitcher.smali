.class public Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;
    }
.end annotation


# static fields
.field private static final synthetic -com-nuance-flext9_OEM-input-KeyboardSwitcher$KeyboardModeSwitchesValues:[I = null

.field public static final KEYBOARDMODE_EMAIL_RESID:I = 0x7f0d0057

.field public static final KEYBOARDMODE_IM_RESID:I = 0x7f0d0058

.field public static final KEYBOARDMODE_NORMAL_RESID:I = 0x7f0d0055

.field public static final KEYBOARDMODE_URL_RESID:I = 0x7f0d0056

.field public static final KEYBOARD_PAGE_LOCK:I = 0x2

.field public static final KEYBOARD_PAGE_SHIFT:I = 0x1

.field public static final KEYBOARD_PAGE_UNSHIFT:I = 0x0

.field static final TAG:Ljava/lang/String; = "XT9IME.KeyboardSwitcher"


# instance fields
.field protected mContext:Lcom/nuance/flext9_OEM/input/IME;

.field protected mCurrehtShiftedSymbolsResourceID:I

.field protected mCurrentSymbolsResourceId:I

.field protected final mHandwritingLayoutId:I

.field protected mImeOptions:I

.field protected mInputMode:Ljava/lang/String;

.field protected mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

.field private mKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

.field protected mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

.field protected mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

.field protected mKeyboardLayoutId:I

.field private mKeyboardTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/flext9_OEM/input/XT9Keyboard;",
            ">;"
        }
    .end annotation
.end field

.field protected final mKeypadLayoutId:I

.field protected mLanguageId:I

.field protected mLastDisplayWidth:I

.field private mPage:I

.field protected mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

.field protected mPhoneSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

.field protected final mQwertyLayoutId:I

.field protected final mReducedKeyboardLayoutId:I

.field private mShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

.field protected mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

.field protected mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;


# direct methods
.method private static synthetic -getcom-nuance-flext9_OEM-input-KeyboardSwitcher$KeyboardModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->-com-nuance-flext9_OEM-input-KeyboardSwitcher$KeyboardModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->-com-nuance-flext9_OEM-input-KeyboardSwitcher$KeyboardModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->values()[Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_EMAIL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_EMOJI:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_IM:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_PHONE:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_SYMBOLS:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_URL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->-com-nuance-flext9_OEM-input-KeyboardSwitcher$KeyboardModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    .line 71
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    .line 72
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mQwertyLayoutId:I

    .line 75
    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mReducedKeyboardLayoutId:I

    .line 76
    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeypadLayoutId:I

    .line 77
    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mHandwritingLayoutId:I

    .line 85
    return-void
.end method

.method private composeUniqueKeyboardLayoutName(IIILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    const-string/jumbo v1, ".0x"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const-string/jumbo v1, ".0x"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string/jumbo v1, "."

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    return-object v0
.end method

.method private createKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;
    .locals 5

    .prologue
    .line 235
    invoke-static {}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->-getcom-nuance-flext9_OEM-input-KeyboardSwitcher$KeyboardModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 269
    :pswitch_0
    const v0, 0x7f0d0055

    move v1, v0

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    .line 274
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutResID:I

    .line 273
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->composeUniqueKeyboardLayoutName(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardTable:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    iget v4, v4, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutResID:I

    invoke-direct {v0, v3, v4, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 279
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardTable:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_0
    return-object v0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    const v2, 0x7f050030

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-nez v0, :cond_2

    .line 244
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    const v2, 0x7f050031

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setPreviewEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    return-object v0

    .line 250
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-nez v0, :cond_3

    .line 251
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    const v2, 0x7f050048

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-nez v0, :cond_4

    .line 254
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    const v2, 0x7f05004a

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    return-object v0

    .line 259
    :pswitch_3
    const v0, 0x7f0d0056

    move v1, v0

    .line 260
    goto :goto_0

    .line 262
    :pswitch_4
    const v0, 0x7f0d0058

    move v1, v0

    .line 263
    goto :goto_0

    .line 265
    :pswitch_5
    const v0, 0x7f0d0057

    move v1, v0

    .line 266
    goto/16 :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private createShiftKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;
    .locals 5

    .prologue
    .line 192
    invoke-static {}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->-getcom-nuance-flext9_OEM-input-KeyboardSwitcher$KeyboardModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 205
    :pswitch_0
    const v0, 0x7f0d0055

    move v1, v0

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    .line 210
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutResID:I

    .line 209
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->composeUniqueKeyboardLayoutName(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "Shift"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardTable:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-nez v0, :cond_2

    .line 217
    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mLanguageId:I

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/Settings;->isArabicLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    const v4, 0x7f050035

    invoke-direct {v0, v3, v4, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 220
    :cond_0
    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mLanguageId:I

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/Settings;->isThaiLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    const v4, 0x7f050043

    invoke-direct {v0, v3, v4, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 224
    :cond_1
    if-eqz v0, :cond_2

    .line 225
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardTable:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_2
    return-object v0

    .line 195
    :pswitch_1
    const v0, 0x7f0d0056

    move v1, v0

    .line 196
    goto :goto_0

    .line 198
    :pswitch_2
    const v0, 0x7f0d0058

    move v1, v0

    .line 199
    goto :goto_0

    .line 201
    :pswitch_3
    const v0, 0x7f0d0057

    move v1, v0

    .line 202
    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getShiftedSymbolsResourceId()I
    .locals 3

    .prologue
    .line 424
    const v0, 0x7f05004a

    .line 426
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayoutId:I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeypadLayoutId:I

    if-ne v1, v2, :cond_0

    .line 427
    const v0, 0x7f05002e

    .line 430
    :cond_0
    return v0
.end method

.method private getSymbolsResourceId()I
    .locals 3

    .prologue
    .line 414
    const v0, 0x7f050048

    .line 416
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayoutId:I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeypadLayoutId:I

    if-ne v1, v2, :cond_0

    .line 417
    const v0, 0x7f05002d

    .line 420
    :cond_0
    return v0
.end method

.method private makeCacheTableKeyboards()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardTable:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getMaxWidth()I

    move-result v0

    .line 97
    iget v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mLastDisplayWidth:I

    if-ne v0, v1, :cond_0

    return-void

    .line 98
    :cond_0
    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mLastDisplayWidth:I

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardTable:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardTable:Ljava/util/Map;

    .line 106
    :cond_2
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 107
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 108
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 109
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 110
    iput v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mCurrentSymbolsResourceId:I

    .line 111
    iput v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mCurrehtShiftedSymbolsResourceID:I

    .line 112
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 113
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 114
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 119
    return-void
.end method


# virtual methods
.method public createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    .line 186
    :goto_0
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    move-result-object v0

    return-object v0

    .line 167
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_PHONE:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_EMAIL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_URL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isShortMessageField()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_IM:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    goto :goto_0

    .line 183
    :cond_5
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    goto :goto_0
.end method

.method public createKeyboardForTextInput(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;ILcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->makeCacheTableKeyboards()V

    .line 126
    iget-object v0, p3, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputMode:Ljava/lang/String;

    .line 127
    iput p2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mImeOptions:I

    .line 128
    invoke-virtual {p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    .line 129
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    .line 130
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayoutId:I

    .line 131
    invoke-virtual {p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mLanguageId:I

    .line 137
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 139
    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v1

    .line 143
    :goto_0
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    sget-object v5, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_PHONE:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    if-ne v4, v5, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setPreviewEnabled(Z)V

    .line 145
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 147
    iget v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mLanguageId:I

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/Settings;->isLanguageHaveShiftPage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createShiftKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v2, v3}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    .line 152
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->enableShiftLock()V

    .line 153
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v2, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 154
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    iget v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;I)V

    .line 156
    return-object v0

    .line 143
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public currentKeyboardMode()Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    return-object v0
.end method

.method public getCurrentInputMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    return v0
.end method

.method public getCurrentShiftState()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    return v0
.end method

.method public isAlphabetMode()Z
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    .line 512
    const/4 v0, 0x1

    return v0

    .line 514
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAmbigousInput()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_1

    .line 495
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "bpmf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 497
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 499
    :cond_1
    return v2
.end method

.method public isKeypadInput()Z
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockPage()Z
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 349
    const/4 v0, 0x1

    return v0

    .line 351
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSymbolMode()Z
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-ne v0, v1, :cond_1

    .line 439
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public isUnShiftPage()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x1

    return v0

    .line 344
    :cond_0
    return v1
.end method

.method public resetPage()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    .line 315
    return-void
.end method

.method public setInputView(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    .line 89
    return-void
.end method

.method public setPage()V
    .locals 4

    .prologue
    .line 301
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-nez v0, :cond_1

    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    .line 304
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;I)V

    .line 311
    :cond_2
    :goto_0
    return-void

    .line 306
    :cond_3
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    if-nez v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-nez v0, :cond_4

    return-void

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    goto :goto_0
.end method

.method public setShiftState(I)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 298
    return-void
.end method

.method public setSwitchPageKeyLock()V
    .locals 2

    .prologue
    .line 382
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    .line 383
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setPage()V

    .line 384
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setSwitchPageKey(Z)V

    .line 385
    return-void
.end method

.method public setToCustomPage(I)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_0

    .line 328
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->isLanguageHaveShiftPage(I)Z

    move-result v0

    .line 327
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 327
    if-eqz v0, :cond_0

    .line 330
    iput p1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    .line 331
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setPage()V

    .line 332
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isLockPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setSwitchPageKey(Z)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isUnShiftPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setSwitchPageKey(Z)V

    goto :goto_0
.end method

.method public setToUnShiftPage()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/flext9_OEM/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_0

    .line 319
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->isLanguageHaveShiftPage(I)Z

    move-result v0

    .line 318
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 318
    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    .line 322
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setPage()V

    .line 324
    :cond_0
    return-void
.end method

.method public supportsAlphaMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 518
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    sget-object v2, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_PHONE:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    sget-object v2, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_SYMBOLS:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toggleAltSymbolPage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-ne v0, v1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShifted(Z)Z

    .line 402
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    .line 403
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShifted(Z)Z

    .line 404
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;I)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-ne v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShifted(Z)Z

    .line 407
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    .line 408
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShifted(Z)Z

    .line 409
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    iget v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;I)V

    goto :goto_0
.end method

.method public toggleShiftState()V
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->toggleShiftState()V

    .line 392
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->isShifted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setShifted(Z)Z

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->toggleAltSymbolPage()V

    goto :goto_0
.end method

.method public toggleSwitchPage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isLockPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iput v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    .line 372
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->setPage()V

    .line 374
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isLockPage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setSwitchPageKey(Z)V

    .line 379
    :cond_0
    :goto_1
    return-void

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isUnShiftPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    iput v2, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    goto :goto_0

    .line 369
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPage:I

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isUnShiftPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setSwitchPageKey(Z)V

    goto :goto_1
.end method

.method public toggleSymbolKeyboard()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 445
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_9

    move-object v0, v1

    .line 450
    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    move v2, v0

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 454
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 456
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getSymbolsResourceId()I

    move-result v4

    .line 457
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-eqz v5, :cond_0

    if-eqz v4, :cond_1

    iget v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mCurrentSymbolsResourceId:I

    if-eq v4, v5, :cond_1

    .line 458
    :cond_0
    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mCurrentSymbolsResourceId:I

    .line 459
    new-instance v4, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    iget v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mCurrentSymbolsResourceId:I

    invoke-direct {v4, v5, v6}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 462
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->getShiftedSymbolsResourceId()I

    move-result v4

    .line 463
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_3

    iget v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mCurrehtShiftedSymbolsResourceID:I

    if-eq v4, v5, :cond_3

    .line 464
    :cond_2
    iput v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mCurrehtShiftedSymbolsResourceID:I

    .line 465
    new-instance v4, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    iget v6, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mCurrehtShiftedSymbolsResourceID:I

    invoke-direct {v4, v5, v6}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    .line 468
    :cond_3
    if-eq v1, v0, :cond_4

    if-ne v1, v3, :cond_6

    .line 470
    :cond_4
    iget v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->isLanguageHaveShiftPage(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->isLockPage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 471
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createShiftKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    move-result-object v1

    .line 472
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setSwitchPageKey(Z)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    :goto_2
    move-object v0, v1

    .line 487
    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mContext:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    iget v5, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;I)V

    move-object v0, v1

    .line 488
    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 489
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardEx;)V

    .line 490
    return-void

    .line 474
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mKeyboardEntryMode:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->createKeyboard(Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    move-result-object v0

    goto :goto_1

    .line 477
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-ne v1, v0, :cond_7

    .line 478
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    goto :goto_2

    .line 480
    :cond_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-ne v1, v0, :cond_8

    .line 481
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    goto :goto_2

    .line 484
    :cond_8
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    goto :goto_2

    :cond_9
    move v2, v0

    goto/16 :goto_0
.end method
