.class Lcom/nuance/flext9_OEM/input/EditState;
.super Ljava/lang/Object;
.source "EditState.java"


# static fields
.field static final MAX_AUTO_ACCEPT_TIP_COUNT:I = 0x5

.field static final MAX_AUTO_ACCEPT_TIP_DISPLAY_COUNT:I = 0x4

.field static final MAX_TRACE_TIP_COUNT:I = 0xa

.field static final MAX_TRACE_TIP_DISPLAY_COUNT:I = 0x4

.field static final STATE_CAN_NOT_RECAPTURE:I = 0x3

.field static final STATE_COMPOSE:I = 0x1

.field static final STATE_END:I = 0x9

.field static final STATE_PUNC_OR_SYMBOL_AFTER_SELECTED_WORD:I = 0x7

.field static final STATE_RECAPTURE:I = 0x2

.field static final STATE_RESELECT_TO_REPLACE:I = 0x8

.field static final STATE_SELECT_DEFAULT_WORD:I = 0x4

.field static final STATE_SELECT_NONE_DEFAULT_WORD:I = 0x5

.field static final STATE_SPACE_AFTER_SELECTED_WORD:I = 0x6

.field static final STATE_START:I = 0x0

.field static final TAG:Ljava/lang/String; = "EditState"

.field static mAutoAcceptTipCount:I

.field static mAutoAcceptTipDisplayCount:I

.field private static mBackspaceCount:I

.field private static final mCharacterTyped:Ljava/lang/StringBuilder;

.field private static mNumberActualWordTypedNotDefaultWords:I

.field private static mNumberOfDefaultSelectedWords:I

.field private static mNumberOfSelectedWords:I

.field private static mPunctuationOrSymbolCount:I

.field private static final mSelectedWord:Ljava/lang/StringBuilder;

.field private static mSessionCount:I

.field private static mSpaceCount:I

.field private static mState:I

.field static mTraceTipCount:I

.field static mTraceTipDisplayCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipCount:I

    .line 17
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipCount:I

    .line 18
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipDisplayCount:I

    .line 19
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipDisplayCount:I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 94
    return-void
.end method

.method public static appendCharacterTyped(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 196
    return-void
.end method

.method public static backSpace()V
    .locals 2

    .prologue
    .line 139
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mBackspaceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mBackspaceCount:I

    .line 141
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nuance/flext9_OEM/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 162
    :pswitch_0
    return-void

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static breakContextState()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 289
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    if-eqz v0, :cond_0

    .line 290
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 291
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 292
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    if-eq v0, v3, :cond_0

    .line 294
    return v3

    .line 297
    :cond_0
    return v2
.end method

.method public static canDoRecapture()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 188
    sget v1, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    sget v1, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static canNotRecapture()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->set(I)V

    .line 185
    return-void
.end method

.method public static characterTyped(C)V
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    return-void
.end method

.method public static compose()V
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 219
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->set(I)V

    .line 220
    return-void
.end method

.method public static current()I
    .locals 1

    .prologue
    .line 280
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    return v0
.end method

.method public static cursorChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 126
    :cond_0
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 129
    :cond_3
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->isWhiteSpace(C)Z

    move-result v0

    .line 128
    if-eqz v0, :cond_1

    .line 130
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    goto :goto_0
.end method

.method public static end()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 214
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 215
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->set(I)V

    .line 216
    return-void
.end method

.method public static endSession()V
    .locals 0

    .prologue
    .line 84
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->resetCounts()V

    .line 85
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->end()V

    .line 90
    return-void
.end method

.method public static isWhiteSpace(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 269
    const/16 v1, 0x20

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static punctuationOrSymbols()V
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mPunctuationOrSymbolCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mPunctuationOrSymbolCount:I

    .line 167
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 175
    :pswitch_0
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 181
    :goto_0
    return-void

    .line 171
    :pswitch_1
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->set(I)V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static recapture()V
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 224
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->set(I)V

    .line 225
    return-void
.end method

.method public static reselectToReplace()V
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 229
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->set(I)V

    .line 230
    return-void
.end method

.method private static resetCounts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 199
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mPunctuationOrSymbolCount:I

    .line 200
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mBackspaceCount:I

    .line 201
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mSpaceCount:I

    .line 202
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberOfDefaultSelectedWords:I

    .line 203
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberOfSelectedWords:I

    .line 204
    return-void
.end method

.method public static resetToolTipState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipCount:I

    .line 68
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipCount:I

    .line 69
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mAutoAcceptTipDisplayCount:I

    .line 70
    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mTraceTipDisplayCount:I

    .line 71
    return-void
.end method

.method public static selectDefaultWord(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberOfSelectedWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberOfSelectedWords:I

    .line 234
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberOfDefaultSelectedWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberOfDefaultSelectedWords:I

    .line 236
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberActualWordTypedNotDefaultWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberActualWordTypedNotDefaultWords:I

    .line 240
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->set(I)V

    .line 241
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 247
    return-void
.end method

.method public static selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberOfSelectedWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberOfSelectedWords:I

    .line 252
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->set(I)V

    .line 254
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberOfDefaultSelectedWords:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mNumberOfDefaultSelectedWords:I

    .line 260
    :goto_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 261
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 266
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->set(I)V

    goto :goto_0
.end method

.method public static selectedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static set(I)V
    .locals 0

    .prologue
    .line 276
    sput p0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    .line 277
    return-void
.end method

.method public static spaceKey()V
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mSpaceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mSpaceCount:I

    .line 100
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :pswitch_0
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 117
    :goto_0
    return-void

    .line 107
    :pswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/EditState;->set(I)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 208
    sget-object v0, Lcom/nuance/flext9_OEM/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/EditState;->set(I)V

    .line 210
    return-void
.end method

.method public static startSession()V
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/nuance/flext9_OEM/input/EditState;->mSessionCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/EditState;->mSessionCount:I

    .line 75
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->resetCounts()V

    .line 76
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 81
    return-void
.end method
