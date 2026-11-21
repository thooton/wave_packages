.class public Lcom/nuance/flext9_OEM/input/Composition;
.super Ljava/lang/Object;
.source "Composition.java"


# instance fields
.field private mBKInlineStringSpan:Landroid/text/style/BackgroundColorSpan;

.field private mEndSelection:I

.field private mFGInlineStringSpan:Landroid/text/style/ForegroundColorSpan;

.field private mInline:Landroid/text/SpannableStringBuilder;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mStartSelection:I

.field private final mWordComposeSpan:Landroid/text/style/UnderlineSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    .line 19
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 31
    sget-object v0, Lcom/nuance/flext9_OEM/input/R$styleable;->InlineStringAlpha:[I

    const v1, 0x7f0e0001

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 35
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 36
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 38
    packed-switch v3, :pswitch_data_0

    .line 35
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :pswitch_0
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/Composition;->mFGInlineStringSpan:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 43
    :pswitch_1
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/Composition;->mBKInlineStringSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void

    .line 38
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearSelection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 171
    iput v2, p0, Lcom/nuance/flext9_OEM/input/Composition;->mEndSelection:I

    .line 172
    iput v2, p0, Lcom/nuance/flext9_OEM/input/Composition;->mStartSelection:I

    .line 173
    return-void
.end method

.method private clears()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mStartSelection:I

    .line 206
    iput v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mEndSelection:I

    .line 207
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 208
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 209
    return-void
.end method


# virtual methods
.method public acceptCurrentInline()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 88
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 90
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Composition;->clears()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 95
    :cond_1
    return-void
.end method

.method public clearCurrentInline()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 103
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 105
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Composition;->clears()V

    .line 107
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 109
    :cond_0
    return-void
.end method

.method public deleteWordToLeftOfCursor()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_2

    .line 178
    iget v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mEndSelection:I

    iget v1, p0, Lcom/nuance/flext9_OEM/input/Composition;->mStartSelection:I

    if-eq v0, v1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Composition;->clearSelection()V

    .line 180
    return-void

    .line 183
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 184
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 187
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    const/4 v0, 0x1

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 202
    :cond_2
    return-void

    .line 191
    :cond_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    move v0, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 192
    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    add-int/lit8 v3, v0, 0x1

    .line 191
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v3

    goto :goto_0
.end method

.method public deleteWordToRightOfCursor()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_2

    .line 143
    iget v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mEndSelection:I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/Composition;->mStartSelection:I

    if-eq v0, v2, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Composition;->clearSelection()V

    .line 145
    return-void

    .line 148
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/Composition;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 152
    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    const/4 v2, 0x1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 167
    :cond_2
    return-void

    :cond_3
    move v0, v1

    move v2, v1

    .line 156
    :goto_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 157
    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 160
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    return-object v1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    return-object v1
.end method

.method public insertText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/Composition;->clearCurrentInline()V

    .line 117
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 119
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 65
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Composition;->clears()V

    .line 66
    return-void
.end method

.method public setSelection(II)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/nuance/flext9_OEM/input/Composition;->mStartSelection:I

    .line 60
    iput p2, p0, Lcom/nuance/flext9_OEM/input/Composition;->mEndSelection:I

    .line 61
    return-void
.end method

.method public showInline(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/16 v4, 0x121

    const/4 v3, 0x0

    .line 70
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 73
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Composition;->clears()V

    .line 75
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 76
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/Composition;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 77
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/Composition;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 78
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 80
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 82
    :cond_0
    return-void
.end method
