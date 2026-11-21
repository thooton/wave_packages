.class public Lcom/nuance/flext9_OEM/input/XT9Keyboard;
.super Lcom/nuance/flext9_OEM/input/KeyboardEx;
.source "XT9Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;
    }
.end annotation


# static fields
.field public static final SHIFT_LOCKED:I = 0x2

.field public static final SHIFT_OFF:I = 0x0

.field public static final SHIFT_ON:I = 0x1

.field public static final XT9KEY_STATE_DISABLED:I = -0x1

.field public static final XT9KEY_STATE_MT_TIMEOUT:I = 0x2

.field public static final XT9KEY_STATE_OFF:I = 0x0

.field public static final XT9KEY_STATE_ON:I = 0x1


# instance fields
.field private mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

.field private mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

.field private mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftState:I

.field private mShiftedIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mSpaceKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

.field private mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

.field private mUnShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mUnShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

.field private mXT9KeyDisabledIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyOffIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyOnIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyState:I

.field private mXT9KeyTimeoutIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mXT9LanguageCycleIcon:Landroid/graphics/drawable/Drawable;

.field public mXmlLayoutResId:I

.field private mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 53
    iput p2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXmlLayoutResId:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/KeyboardEx;-><init>(Landroid/content/Context;II)V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyState:I

    .line 47
    iput v3, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftState:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mUnShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mUnShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 67
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 65
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 68
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mUnShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 72
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mUnShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mUnShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 71
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOnIcon:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOffIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyDisabledIcon:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyTimeoutIcon:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 84
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 89
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 87
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 92
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 90
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9LanguageCycleIcon:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 96
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 1

    .prologue
    .line 103
    invoke-direct/range {p0 .. p5}, Lcom/nuance/flext9_OEM/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyState:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftState:I

    .line 104
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 109
    new-instance v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;-><init>(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 113
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v6

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 114
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v6

    const/16 v2, -0x13

    if-ne v1, v2, :cond_2

    .line 118
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v6

    const/16 v2, -0x14

    if-ne v1, v2, :cond_3

    iget v1, p2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Row;->mode:I

    const v2, 0x7f0d0059

    if-eq v1, v2, :cond_3

    .line 121
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    goto :goto_0

    .line 123
    :cond_3
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v6

    const/16 v2, -0x16

    if-ne v1, v2, :cond_4

    .line 124
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/16 v2, 0x2c

    aput v2, v1, v6

    goto :goto_0

    .line 126
    :cond_4
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v6

    const/16 v2, -0x17

    if-ne v1, v2, :cond_5

    .line 127
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/16 v2, 0x3b

    aput v2, v1, v6

    goto :goto_0

    .line 129
    :cond_5
    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v6

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 130
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSpaceKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    goto :goto_0
.end method

.method public enableShiftLock()V
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getShiftKeyIndex()I

    move-result v0

    .line 296
    if-ltz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 298
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    instance-of v0, v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;->enableShiftLock()V

    .line 302
    :cond_0
    return-void
.end method

.method public enabledXT9Key(Z)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 197
    if-nez p1, :cond_1

    .line 198
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyState:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    goto :goto_0
.end method

.method public getCurrentShiftState()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftState:I

    return v0
.end method

.method public isShiftLocked()Z
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShifted()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 378
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    if-eqz v1, :cond_1

    .line 379
    iget v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 381
    :cond_1
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/KeyboardEx;->isShifted()Z

    move-result v0

    return v0
.end method

.method public setImeOptions(Landroid/content/res/Resources;Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 140
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    .line 141
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 142
    const v0, 0x400000ff    # 2.0000608f

    and-int/2addr v0, p3

    packed-switch v0, :pswitch_data_0

    .line 171
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_IM:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    if-ne p2, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 173
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 174
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const-string/jumbo v1, ":-)"

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 175
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const-string/jumbo v1, ":-) "

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 176
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const v1, 0x7f050051

    iput v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 190
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 188
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    :cond_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 146
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const v1, 0x7f09012e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 150
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 151
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const v1, 0x7f09012f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 156
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const v1, 0x7f090130

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 160
    const v1, 0x7f02009a

    .line 159
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 161
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 162
    const v1, 0x7f0200a4

    .line 161
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 163
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 166
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 167
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 168
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const v1, 0x7f090131

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 179
    const v1, 0x7f020099

    .line 178
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 180
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 181
    const v1, 0x7f0200a3

    .line 180
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 182
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mEnterKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setShiftState(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 344
    iput p1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftState:I

    .line 346
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    if-nez v0, :cond_0

    .line 347
    return-void

    .line 350
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 370
    :goto_0
    return-void

    .line 352
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->on:Z

    .line 353
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mUnShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 354
    iput v2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftState:I

    .line 355
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mUnShiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 358
    :pswitch_1
    iput v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftState:I

    .line 359
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-boolean v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->on:Z

    .line 360
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 361
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-boolean v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->on:Z

    .line 365
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 366
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftState:I

    .line 367
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSpaceKeyAsLanguageSwitchKey(Ljava/lang/CharSequence;)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSpaceKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSpaceKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object p1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 211
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSpaceKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSpaceKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->repeatable:Z

    .line 219
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSpaceKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    return-object v0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSpaceKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->repeatable:Z

    goto :goto_0
.end method

.method public setSwitchPageKey(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 323
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    if-nez v0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getSwitchPagetKeyIndex()I

    move-result v0

    .line 325
    if-ltz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    if-nez v0, :cond_1

    .line 329
    return-void

    .line 332
    :cond_1
    if-eqz p1, :cond_2

    .line 333
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->on:Z

    .line 334
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 335
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 342
    :goto_0
    return-void

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-boolean v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->on:Z

    .line 338
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 339
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mSwitchPageKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftedPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setXT9KeyState(I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 262
    iput p1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyState:I

    .line 264
    iget v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyState:I

    packed-switch v0, :pswitch_data_0

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyState:I

    .line 287
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyDisabledIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 288
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyDisabledPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 291
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    return-object v0

    .line 267
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyState:I

    .line 268
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOnIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 273
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyState:I

    .line 274
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOffIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyOffPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 279
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyState:I

    .line 280
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyTimeoutIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 281
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9Key:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9KeyTimeoutPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public toggleShiftState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 306
    iget v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftState:I

    if-nez v0, :cond_1

    .line 307
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftState:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mShiftKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard$LatinKey;->isShiftLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setShiftState(I)V

    goto :goto_0
.end method

.method public updateLanguageCyclingKey(Z)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;
    .locals 5

    .prologue
    const/16 v2, -0x14

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    if-nez v0, :cond_0

    .line 224
    return-object v3

    .line 227
    :cond_0
    if-nez p1, :cond_3

    .line 228
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->getSubstitutionKey(I)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v2, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 231
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v0, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v2, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 232
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v2, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 233
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget v2, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    iput v2, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    .line 234
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aput v1, v0, v4

    .line 235
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 257
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    return-object v0

    .line 231
    :cond_1
    iget-object v0, v1, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput v4, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    .line 241
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const-string/jumbo v1, ","

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 242
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const-string/jumbo v1, ","

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 243
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    const/16 v1, 0x2c

    aput v1, v0, v4

    .line 244
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 245
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    const v1, 0x7f050032

    iput v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->popupResId:I

    .line 250
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 251
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iput-object v3, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 252
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXt9LanguagecyclePreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 253
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mXT9LanguageCycleIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 254
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->mLanguageCyclingKey:Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;->codes:[I

    aput v2, v0, v4

    goto :goto_1
.end method
