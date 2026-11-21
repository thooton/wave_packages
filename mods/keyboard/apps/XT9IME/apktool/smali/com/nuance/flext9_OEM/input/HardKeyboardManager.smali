.class public Lcom/nuance/flext9_OEM/input/HardKeyboardManager;
.super Ljava/lang/Object;
.source "HardKeyboardManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HardKeyboardManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

.field private mCurrentLayout:I

.field private mHardKeyboards:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/flext9_OEM/input/HardKeyboard;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInitialized:Z

.field mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mContext:Landroid/content/Context;

    .line 226
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mIsInitialized:Z

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mHardKeyboards:Ljava/util/HashMap;

    .line 228
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 229
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    .line 230
    iput v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentLayout:I

    .line 20
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public changeToCapsLockPage()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->changeToCapsLockPage()V

    .line 218
    :cond_0
    return-void
.end method

.method public changeToNormalPage()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->changeToNormalPage()V

    .line 224
    :cond_0
    return-void
.end method

.method public getCurrentPageName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    if-nez v0, :cond_1

    .line 160
    :cond_0
    return-object v1

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getCurrentPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardKeyboardLayoutID()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    if-nez v0, :cond_1

    .line 208
    :cond_0
    return-object v1

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getHardKeyboardLayoutID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKdbId()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getCurrentPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    const v0, 0xffff

    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getCurrentPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getKdbId()I

    move-result v0

    return v0
.end method

.method public hasKey(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    if-nez v0, :cond_0

    return v1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getCurrentPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getCurrentPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->hasKey(I)Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mIsInitialized:Z

    return v0
.end method

.method public loadHardKeyboard(Landroid/content/res/XmlResourceParser;)Z
    .locals 6

    .prologue
    .line 30
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mIsInitialized:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 32
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mHardKeyboards:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 34
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->parse(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 38
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mHardKeyboards:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getLayoutId()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getLanguageId()I

    move-result v5

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string/jumbo v0, "HardKeyboardManager"

    const-string/jumbo v1, "loadHardKeyboard()...XmlPullParserException"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_1
    const-string/jumbo v0, "HardKeyboardManager"

    const-string/jumbo v1, "loadHardKeyboard()...done"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mIsInitialized:Z

    return v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 42
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getLayoutId()I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentLayout:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mIsInitialized:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 49
    :catch_1
    move-exception v0

    .line 50
    const-string/jumbo v0, "HardKeyboardManager"

    const-string/jumbo v1, "loadHardKeyboard()...IOException"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    return v3

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->getLayout()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->getLanguage()I

    move-result v1

    .line 94
    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    .line 98
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mHardKeyboards:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 99
    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mHardKeyboards:Ljava/util/HashMap;

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 102
    :cond_2
    if-nez v0, :cond_3

    .line 105
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentLayout:I

    shl-int/lit8 v0, v0, 0x10

    or-int/lit16 v0, v0, 0x1ff

    .line 106
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mHardKeyboards:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 108
    if-nez v0, :cond_3

    .line 109
    const-string/jumbo v0, "HardKeyboardManager"

    const-string/jumbo v1, "onKeyEvent ... return false because Keyboard is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v3

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->getInputMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Function"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 124
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    if-eq v0, v1, :cond_4

    .line 125
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 126
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->resetKeyState()V

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->setListener(Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)V

    .line 130
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 133
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 134
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 136
    :cond_6
    return v3
.end method

.method public removeKeyDownEvent(I)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getCurrentPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getCurrentPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->removeKeyDownEvent(I)V

    .line 188
    return-void
.end method

.method public resetHardKeyboard()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->getLayout()I

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->getLanguage()I

    move-result v1

    .line 143
    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    .line 144
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mHardKeyboards:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 145
    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mHardKeyboards:Ljava/util/HashMap;

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 148
    :cond_1
    if-nez v0, :cond_2

    .line 149
    return-void

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    if-eq v0, v1, :cond_3

    .line 152
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 153
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->resetKeyState()V

    .line 154
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->setListener(Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)V

    .line 156
    :cond_3
    return-void
.end method

.method public resetKeyboardState()V
    .locals 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mHardKeyboards:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;

    .line 179
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->resetKeyState()V

    goto :goto_0

    .line 181
    :cond_1
    return-void
.end method

.method public setHardKeyEventListener(Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    .line 24
    return-void
.end method

.method public setHardKeyboardLayoutID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    if-nez v0, :cond_1

    .line 200
    :cond_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->setHardKeyboardLayoutID(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setKeyboardPage()V
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentKeyboard:Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->setKeyboardPage()V

    .line 172
    return-void
.end method

.method public setLayout(I)Z
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mHardKeyboards:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    shr-int/lit8 v0, v0, 0x10

    if-ne p1, v0, :cond_0

    .line 73
    iput p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->mCurrentLayout:I

    .line 74
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
