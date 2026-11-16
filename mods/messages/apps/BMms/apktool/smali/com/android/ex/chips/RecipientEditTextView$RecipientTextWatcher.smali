.class Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 3246
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3254
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 3255
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 3256
    const-class v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3255
    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3257
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 3258
    invoke-interface {v2, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3260
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get15(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3261
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get15(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3263
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 3264
    return-void

    .line 3268
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-wrap0(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3269
    return-void

    .line 3272
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get19(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3273
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->-get19(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->isGeneratedContact(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3275
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 3277
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 3278
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 3283
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 3286
    if-le v0, v3, :cond_7

    .line 3287
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3288
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-wrap8(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 3289
    return-void

    .line 3280
    :cond_5
    return-void

    .line 3292
    :cond_6
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 3293
    :goto_1
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 3294
    if-eq v0, v1, :cond_9

    .line 3295
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 3299
    :goto_2
    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 3300
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3303
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3304
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->-get21(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 3305
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->-get21(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3307
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->-wrap1(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3308
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-wrap8(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 3313
    :cond_7
    return-void

    .line 3292
    :cond_8
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3297
    :cond_9
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 3403
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 3320
    sub-int v0, p3, p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 3323
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v0

    .line 3324
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->getOrientation()Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    move-result-object v1

    sget-object v3, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->PORTRAIT:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    if-ne v1, v3, :cond_3

    .line 3325
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    .line 3326
    const-class v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3325
    invoke-interface {v1, v0, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3327
    array-length v1, v0

    if-lez v1, :cond_2

    .line 3329
    aget-object v1, v0, v2

    .line 3330
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 3332
    invoke-interface {v2, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 3333
    invoke-interface {v2, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3334
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v0, v4, :cond_0

    .line 3335
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    .line 3337
    :cond_0
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v4}, Lcom/android/ex/chips/RecipientEditTextView;->-get16(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v4}, Lcom/android/ex/chips/RecipientEditTextView;->-get17(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3338
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v4}, Lcom/android/ex/chips/RecipientEditTextView;->-get17(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

    move-result-object v4

    .line 3339
    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    .line 3338
    invoke-interface {v4, v5}, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;->onRecipientChipDeleted(Lcom/android/ex/chips/RecipientEntry;)V

    .line 3341
    :cond_1
    invoke-interface {v2, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3342
    invoke-interface {v2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 3398
    :cond_2
    :goto_0
    return-void

    .line 3345
    :cond_3
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->-get1(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3346
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    .line 3347
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 3348
    const-class v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3346
    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move v1, v2

    .line 3349
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_7

    .line 3350
    aget-object v5, v0, v1

    .line 3351
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 3353
    invoke-interface {v6, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 3354
    invoke-interface {v6, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 3355
    if-gez v3, :cond_4

    move v3, v2

    .line 3356
    :cond_4
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v7

    if-le v4, v7, :cond_5

    .line 3357
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v4

    .line 3359
    :cond_5
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v7}, Lcom/android/ex/chips/RecipientEditTextView;->-get16(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v7}, Lcom/android/ex/chips/RecipientEditTextView;->-get17(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 3360
    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v7}, Lcom/android/ex/chips/RecipientEditTextView;->-get17(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

    move-result-object v7

    .line 3361
    invoke-interface {v5}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v8

    .line 3360
    invoke-interface {v7, v8}, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;->onRecipientChipDeleted(Lcom/android/ex/chips/RecipientEntry;)V

    .line 3363
    :cond_6
    invoke-interface {v6, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3364
    invoke-interface {v6, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 3349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3366
    :cond_7
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->-set0(Lcom/android/ex/chips/RecipientEditTextView;Z)Z

    goto :goto_0

    .line 3368
    :cond_8
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    .line 3369
    const-class v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3368
    invoke-interface {v1, v0, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3370
    array-length v1, v0

    if-lez v1, :cond_2

    .line 3372
    aget-object v1, v0, v2

    .line 3373
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 3375
    invoke-interface {v2, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 3376
    invoke-interface {v2, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3377
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v0, v4, :cond_9

    .line 3378
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    .line 3380
    :cond_9
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v4}, Lcom/android/ex/chips/RecipientEditTextView;->-get16(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v4}, Lcom/android/ex/chips/RecipientEditTextView;->-get17(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 3381
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v4}, Lcom/android/ex/chips/RecipientEditTextView;->-get17(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

    move-result-object v4

    .line 3382
    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v5

    .line 3381
    invoke-interface {v4, v5}, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;->onRecipientChipDeleted(Lcom/android/ex/chips/RecipientEntry;)V

    .line 3384
    :cond_a
    invoke-interface {v2, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3385
    invoke-interface {v2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_0

    .line 3389
    :cond_b
    if-le p4, p3, :cond_2

    .line 3390
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get19(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3391
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->-get19(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->isGeneratedContact(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v0

    .line 3390
    if-eqz v0, :cond_2

    .line 3392
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3393
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-wrap8(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 3394
    return-void
.end method
