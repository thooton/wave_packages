.class public Lcom/android/mms/ui/RecipientsEditor;
.super Lcom/android/ex/chips/RecipientEditTextView;
.source "RecipientsEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientsEditor$AddressValidator;,
        Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;,
        Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInternalValidator:Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

.field private mLastSeparator:C

.field private mLongPressedPosition:I

.field private mOnSelectChipRunnable:Ljava/lang/Runnable;

.field private mRecipientsCount:I

.field private final mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/RecipientsEditor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/RecipientsEditor;)C
    .locals 1

    iget-char v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    return v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/RecipientsEditor;C)C
    .locals 0

    iput-char p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    return p1
.end method

.method static synthetic -set1(Lcom/android/mms/ui/RecipientsEditor;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipientsCount:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput v1, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 66
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLastSeparator:C

    .line 70
    iput v1, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipientsCount:I

    .line 86
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/android/mms/ui/RecipientsEditor;Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07037f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setHint(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/RecipientsEditor$AddressValidator;-><init>(Lcom/android/mms/ui/RecipientsEditor;Lcom/android/mms/ui/RecipientsEditor$AddressValidator;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mInternalValidator:Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mInternalValidator:Lcom/android/mms/ui/RecipientsEditor$AddressValidator;

    invoke-super {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 95
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setThreshold(I)V

    .line 108
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsEditor$1;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    new-instance v0, Lcom/android/mms/ui/ContactDropdownLayouter;

    .line 145
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 144
    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/ContactDropdownLayouter;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setDropdownChipLayouter(Lcom/android/ex/chips/DropdownChipLayouter;)V

    .line 146
    const/16 v0, 0x438

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setDropDownWidth(I)V

    .line 147
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setDropDownVerticalOffset(I)V

    .line 148
    return-void
.end method

.method public static contactToToken(Lcom/android/mms/data/Contact;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 339
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    .line 342
    if-nez v1, :cond_0

    .line 343
    return-object v0

    .line 346
    :cond_0
    new-instance v2, Landroid/text/Annotation;

    const-string/jumbo v3, "number"

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/16 v3, 0x21

    .line 346
    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 349
    return-object v0
.end method

.method private static getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 543
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 544
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 543
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_1
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    const-class v0, Landroid/text/Annotation;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 534
    invoke-static {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->getAnnotation([Landroid/text/Annotation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    .line 538
    :cond_0
    return-object v0
.end method

.method private static getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 498
    const-string/jumbo v0, "number"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/mms/ui/RecipientsEditor;->getFieldAt(Ljava/lang/String;Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    if-eqz v0, :cond_0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    :cond_0
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 505
    if-ltz v1, :cond_2

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 507
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 508
    array-length v2, v1

    if-nez v2, :cond_1

    .line 509
    return-object v0

    .line 511
    :cond_1
    aget-object v0, v1, v3

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 514
    :cond_2
    return-object v0
.end method

.method private static getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 524
    const-class v0, Landroid/text/Annotation;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 525
    array-length v1, v0

    if-lez v1, :cond_0

    .line 526
    aget-object v0, v0, v2

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 528
    :cond_0
    return v2
.end method

.method private hasInvalidCharacter(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 248
    array-length v3, v2

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v4, 0x7f090000

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 250
    :goto_0
    if-ge v0, v3, :cond_4

    .line 252
    if-nez v0, :cond_1

    aget-char v4, v2, v0

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1

    .line 250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    aget-char v4, v2, v0

    invoke-direct {p0, v4}, Lcom/android/mms/ui/RecipientsEditor;->isValidCharacter(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 256
    return v6

    :cond_2
    move v0, v1

    .line 260
    :goto_1
    if-ge v0, v3, :cond_4

    .line 261
    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->isSBCCharacter([CI)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 262
    return v6

    .line 260
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_4
    return v1
.end method

.method private isSBCCharacter([CI)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 273
    aget-char v1, p1, p2

    const v2, 0xff01

    if-lt v1, v2, :cond_0

    aget-char v1, p1, p2

    const v2, 0xff5d

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isValidAddress(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 227
    if-eqz p2, :cond_0

    .line 228
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidCharacter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    const/4 v0, 0x0

    return v0

    .line 238
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    .line 238
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidCharacter(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 277
    const/16 v1, 0x30

    if-lt p1, v1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2d

    if-eq p1, v1, :cond_0

    const/16 v1, 0x28

    if-eq p1, v1, :cond_0

    const/16 v1, 0x29

    if-eq p1, v1, :cond_0

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pointToPosition(II)I
    .locals 4

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 449
    if-nez v0, :cond_0

    .line 450
    const/4 v0, -0x1

    return v0

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getCompoundPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    .line 454
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getExtendedPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    .line 457
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getScrollX()I

    move-result v3

    add-int/2addr v1, v3

    .line 458
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    .line 460
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 461
    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 463
    return v0
.end method


# virtual methods
.method public constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    .line 216
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 217
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-static {v0, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    .line 219
    invoke-virtual {v3, v0}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, v3}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {v1}, Lcom/android/mms/data/ContactList;->removeLocalNumber(Lcom/android/mms/data/ContactList;)V

    .line 223
    return-object v1
.end method

.method public containsEmail()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 328
    return v2

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    const/4 v0, 0x1

    return v0

    .line 335
    :cond_2
    return v2
.end method

.method public containsMultiContacts(Landroid/text/Spanned;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 397
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v5

    .line 398
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v4

    move v2, v4

    .line 401
    :goto_0
    add-int/lit8 v0, v5, 0x1

    if-ge v1, v0, :cond_3

    .line 403
    if-eq v1, v5, :cond_0

    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    const/16 v7, 0x2c

    if-ne v0, v7, :cond_1

    .line 404
    :cond_0
    if-le v1, v2, :cond_5

    .line 405
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->getSpanLength(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v0

    .line 408
    if-le v0, v1, :cond_5

    .line 412
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 413
    :goto_2
    if-ge v0, v5, :cond_2

    invoke-interface {p1, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 403
    :cond_1
    const/16 v7, 0x3b

    if-eq v0, v7, :cond_0

    .line 418
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    :goto_3
    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 403
    goto :goto_3

    .line 421
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    move v0, v3

    :goto_4
    return v0

    :cond_4
    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public enoughToFilter()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-super {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    return v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v1

    .line 192
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    .line 194
    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public formatInvalidNumbers(Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 481
    iget v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    if-ltz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 483
    iget v1, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    iget v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 485
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 487
    if-eq v0, v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->getNumberAt(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 490
    new-instance v1, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;

    invoke-direct {v1, v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;-><init>(Lcom/android/mms/data/Contact;)V

    return-object v1

    .line 494
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExsitNumbers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbersString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientCount()I
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipientsCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 202
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipientsCount:I

    return v0
.end method

.method public getValidRecipientsCount(Z)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v1, v3

    :goto_1
    move v3, v1

    move v1, v0

    goto :goto_0

    .line 287
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v3

    goto :goto_1

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 291
    if-ne v3, v0, :cond_2

    .line 292
    return v2

    .line 293
    :cond_2
    if-ne v1, v0, :cond_3

    .line 294
    const/4 v0, -0x1

    return v0

    .line 296
    :cond_3
    return v1
.end method

.method public hasInvalidRecipient(Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mTokenizer:Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 304
    return v3

    .line 305
    :cond_1
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    return v3

    .line 310
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 152
    if-gez p3, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/ex/chips/BaseRecipientAdapter;->getItem(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1

    .line 157
    return-void

    .line 159
    :cond_1
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getEntryType()I

    move-result v1

    if-nez v1, :cond_4

    .line 160
    invoke-super/range {p0 .. p5}, Lcom/android/ex/chips/RecipientEditTextView;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mOnSelectChipRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mOnSelectChipRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 175
    :cond_3
    return-void

    .line 161
    :cond_4
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getEntryType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 162
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {v1, v0}, Lcom/android/mms/util/ContactRecipientEntryUtils;->getGroupsMembers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    .line 168
    invoke-super {p0, p3, v0}, Lcom/android/ex/chips/RecipientEditTextView;->onGroupItemClick(ILcom/android/ex/chips/RecipientEntry;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 472
    if-nez v0, :cond_0

    .line 473
    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mLongPressedPosition:I

    .line 476
    :cond_0
    invoke-super {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public populate(Lcom/android/mms/data/ContactList;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 375
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 378
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_0
    return-void

    .line 381
    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 388
    invoke-static {v0}, Lcom/android/mms/ui/RecipientsEditor;->contactToToken(Lcom/android/mms/data/Contact;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public populateWithAvatorDrawable(Lcom/android/mms/data/ContactList;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :cond_0
    return-void

    .line 435
    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 439
    invoke-static {v0, v2}, Lcom/android/mms/util/ContactRecipientEntryUtils;->createRecipientEntryByContact(Lcom/android/mms/data/Contact;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->appendRecipientEntry(Lcom/android/ex/chips/RecipientEntry;)V

    goto :goto_0
.end method

.method public setOnSelectChipRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mOnSelectChipRunnable:Ljava/lang/Runnable;

    .line 179
    return-void
.end method
