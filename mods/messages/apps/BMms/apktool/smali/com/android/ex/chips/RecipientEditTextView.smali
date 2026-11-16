.class public Lcom/android/ex/chips/RecipientEditTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/ex/chips/DropdownChipLayouter$ChipDeleteListener;
.implements Lcom/android/ex/chips/DropdownChipLayouter$PermissionRequestDismissedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/RecipientEditTextView$1;,
        Lcom/android/ex/chips/RecipientEditTextView$2;,
        Lcom/android/ex/chips/RecipientEditTextView$3;,
        Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;,
        Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;,
        Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;,
        Lcom/android/ex/chips/RecipientEditTextView$PermissionsRequestItemClickedListener;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientChipAddedListener;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientEntryItemClickedListener;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;,
        Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;,
        Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;
    }
.end annotation


# static fields
.field private static final DISMISS:I

.field private static final SEPARATOR:Ljava/lang/String;

.field private static sSelectedTextColor:I


# instance fields
.field private final MAX_CHIP_LIMIT:I

.field private final mAddTextWatcher:Ljava/lang/Runnable;

.field private mAddressPopup:Landroid/widget/ListPopupWindow;

.field private mAllSelected:Z

.field private mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAlternatesPopup:Landroid/widget/ListPopupWindow;

.field private mAttachedToWindow:Z

.field private mAvatarPosition:I

.field private mCheckedItem:I

.field private mChipBackground:Landroid/graphics/drawable/Drawable;

.field private mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

.field private mChipDelete:Landroid/graphics/drawable/Drawable;

.field private mChipFontSize:F

.field private mChipHeight:F

.field private mChipTextEndPadding:I

.field private mChipTextStartPadding:I

.field private final mCoords:[I

.field private mCurrentSuggestionCount:I

.field private mCurrentWarningText:Ljava/lang/String;

.field private mDefaultContactPhoto:Landroid/graphics/Bitmap;

.field private mDelayedShrink:Ljava/lang/Runnable;

.field private mDragEnabled:Z

.field private mDropdownAnchor:Landroid/view/View;

.field protected mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandlePendingChips:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHiddenSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

.field private mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

.field private mLineSpacingExtra:F

.field private mMaxLines:I

.field private mMoreChip:Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

.field private mMoreItem:Landroid/widget/TextView;

.field private mNoChipMode:Z

.field private mOrientation:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

.field final mPendingChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChipsCount:I

.field private mPermissionsRequestItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$PermissionsRequestItemClickedListener;

.field private mRecipientChipAddedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientChipAddedListener;

.field private mRecipientChipDeletedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

.field private mRecipientEntryItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientEntryItemClickedListener;

.field private final mRect:Landroid/graphics/Rect;

.field private mRequiresShrinkWhenNotGone:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

.field private mShouldShrink:Z

.field mTemporaryRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextHeight:I

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mToastflag:Z

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private mTriedGettingScrollView:Z

.field private mUnselectedChipBackgroundColor:I

.field private mUnselectedChipTextColor:I

.field private mUntrustedAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;

.field private mWarningIcon:Landroid/graphics/Bitmap;

.field private mWarningIconHeight:I

.field private mWarningTextTemplate:Ljava/lang/String;

.field private mWarningTitle:Ljava/lang/String;

.field private mWorkPaint:Landroid/graphics/Paint;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->DISMISS:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAllSelected:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDropdownAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHiddenSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/ex/chips/RecipientEditTextView;)F
    .locals 1

    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F

    return v0
.end method

.method static synthetic -get15(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRecipientChipDeletedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/ex/chips/RecipientEditTextView;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCoords:[I

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/ex/chips/RecipientEditTextView;)I
    .locals 1

    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCurrentSuggestionCount:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/ex/chips/RecipientEditTextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAllSelected:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/ex/chips/RecipientEditTextView;I)I
    .locals 0

    iput p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCurrentSuggestionCount:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCurrentWarningText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0

    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->chipsPending()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->shrink()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;Z)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;Z)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/ex/chips/RecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->announceForAccessibilityCompat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitByCharacter()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->drawIcon(Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "dismiss"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->DISMISS:I

    .line 151
    const/4 v0, -0x1

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 370
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRect:Landroid/graphics/Rect;

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCoords:[I

    .line 148
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->MAX_CHIP_LIMIT:I

    .line 154
    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 155
    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    .line 188
    iput-object p0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDropdownAnchor:Landroid/view/View;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    .line 205
    iput v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 207
    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    .line 208
    iput-boolean v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRequiresShrinkWhenNotGone:Z

    .line 212
    iput-boolean v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mToastflag:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    .line 235
    sget-object v0, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->PORTRAIT:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mOrientation:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    .line 245
    iput-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAllSelected:Z

    .line 247
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$1;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$1;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    .line 259
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$2;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$2;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    .line 268
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$3;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$3;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    .line 284
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mUntrustedAddresses:Ljava/util/Set;

    .line 286
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWarningTextTemplate:Ljava/lang/String;

    .line 287
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWarningTitle:Ljava/lang/String;

    .line 289
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCurrentWarningText:Ljava/lang/String;

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->setChipDimensions(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 372
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->calculateTextHeight()I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextHeight:I

    .line 374
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    .line 377
    :cond_0
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    .line 378
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setupPopupWindow(Landroid/widget/ListPopupWindow;)V

    .line 379
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    .line 380
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setupPopupWindow(Landroid/widget/ListPopupWindow;)V

    .line 381
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$4;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$4;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 394
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setInputType(I)V

    .line 395
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 396
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 397
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$5;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$5;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    .line 407
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;

    invoke-direct {v0, p0, v2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 408
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 409
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 410
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 412
    new-instance v0, Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/ex/chips/DropdownChipLayouter;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setDropdownChipLayouter(Lcom/android/ex/chips/DropdownChipLayouter;)V

    .line 413
    return-void
.end method

.method private alreadyHasChip(II)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2063
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    if-eqz v0, :cond_0

    .line 2064
    return v1

    .line 2067
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    const-class v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v0, p1, p2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2068
    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private announceForAccessibilityCompat(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 734
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 735
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 737
    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_0

    .line 741
    const/16 v1, 0x4000

    .line 740
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 742
    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 743
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 745
    invoke-interface {v0, p0, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 748
    :cond_0
    return-void
.end method

.method private calculateAvailableWidth()F
    .locals 2

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextStartPadding:I

    sub-int/2addr v0, v1

    .line 1309
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    .line 1308
    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private calculateOffsetFromBottom(I)I
    .locals 2

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    .line 1290
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v1, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    neg-int v0, v0

    .line 1291
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getDropDownVerticalOffset()I

    move-result v1

    .line 1290
    add-int/2addr v0, v1

    return v0
.end method

.method private calculateTextHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 429
    const-string/jumbo v1, "a"

    .line 430
    const-string/jumbo v1, "a"

    const-string/jumbo v2, "a"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 432
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRect:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 433
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRect:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 435
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method private checkChipWidths()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1444
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 1445
    if-eqz v1, :cond_1

    .line 1447
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 1448
    invoke-interface {v3}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1449
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v5, v4

    .line 1450
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1449
    if-le v4, v5, :cond_0

    .line 1452
    invoke-interface {v3}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 1447
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1456
    :cond_1
    return-void
.end method

.method private chipsPending()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3232
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHiddenSpans:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHiddenSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private commitByCharacter()V
    .locals 4

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v0, :cond_0

    .line 1949
    return-void

    .line 1951
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1952
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1953
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1954
    invoke-direct {p0, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->shouldCreateChip(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1955
    invoke-direct {p0, v2, v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 1957
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1958
    return-void
.end method

.method private commitChip(IILandroid/text/Editable;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1961
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->positionOfFirstEntryWithTypePerson()I

    move-result v0

    .line 1962
    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1963
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1962
    if-eqz v1, :cond_2

    .line 1964
    invoke-interface {p3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1962
    if-eqz v1, :cond_2

    .line 1968
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getListSelection()I

    move-result v1

    .line 1969
    if-eq v1, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->isEntryAtPositionTypePerson(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1971
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->submitItemAtPosition(I)I

    .line 1975
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1976
    return v5

    .line 1973
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->submitItemAtPosition(I)I

    goto :goto_0

    .line 1978
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, p3, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1979
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_4

    .line 1980
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p3, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    .line 1981
    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_4

    .line 1982
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1985
    :cond_4
    invoke-interface {p3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1986
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1987
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 1988
    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 1989
    if-eqz v0, :cond_5

    .line 1990
    const-string/jumbo v1, ""

    invoke-static {p3, p1, p2, v1}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1991
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1992
    if-eqz v0, :cond_5

    if-le p1, v3, :cond_5

    if-le p2, v3, :cond_5

    .line 1993
    invoke-interface {p3, p1, p2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2000
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 2001
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 2003
    :cond_6
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    .line 2004
    return v5

    .line 2007
    :cond_7
    return v4
.end method

.method private commitDefault()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1925
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v0, :cond_0

    .line 1926
    return v4

    .line 1928
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1929
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1930
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1932
    invoke-direct {p0, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->shouldCreateChip(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1933
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1936
    invoke-virtual {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v3

    .line 1937
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1938
    invoke-direct {p0, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->handleEdit(II)V

    .line 1939
    const/4 v0, 0x1

    return v0

    .line 1941
    :cond_1
    invoke-direct {p0, v2, v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    move-result v0

    return v0

    .line 1943
    :cond_2
    return v4
.end method

.method private constructChipSpan(Lcom/android/ex/chips/RecipientEntry;Z)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1245
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 1246
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    .line 1247
    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v5

    .line 1251
    if-eqz p2, :cond_1

    .line 1252
    invoke-direct {p0, p1, v3}, Lcom/android/ex/chips/RecipientEditTextView;->createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;)Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;

    move-result-object v0

    .line 1258
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1259
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mUntrustedAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1260
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->drawWarningIcon(Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1262
    :cond_0
    iget-object v7, v0, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    .line 1265
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    move v2, v0

    .line 1266
    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1267
    :goto_2
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1268
    invoke-virtual {v8, v1, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1270
    new-instance v0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;

    invoke-direct {v0, v8, p1}, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/RecipientEntry;)V

    .line 1271
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->setExtraMargin(F)V

    .line 1273
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1274
    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1276
    invoke-virtual {v0, v6}, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->setWarningIconBounds(Landroid/graphics/Rect;)V

    .line 1277
    return-object v0

    .line 1255
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/ex/chips/RecipientEditTextView;->createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;)Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 1265
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1266
    goto :goto_2
.end method

.method private createChip(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2561
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v0

    .line 2562
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2563
    return-object v5

    .line 2566
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2567
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2568
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    if-nez v0, :cond_1

    .line 2571
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;Z)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 2572
    const/4 v3, 0x0

    .line 2573
    const/16 v4, 0x21

    .line 2572
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2574
    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2580
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->onChipCreated(Lcom/android/ex/chips/RecipientEntry;)V

    .line 2581
    return-object v2

    .line 2575
    :catch_0
    move-exception v0

    .line 2576
    const-string/jumbo v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2577
    return-object v5
.end method

.method private createChipBitmap(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/graphics/drawable/Drawable;I)Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;
    .locals 23

    .prologue
    .line 914
    new-instance v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;

    const/4 v3, 0x0

    invoke-direct {v13, v3}, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;-><init>(Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;)V

    .line 916
    const/4 v4, 0x0

    .line 917
    const/4 v3, 0x0

    .line 918
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getIndicatorIconId()I

    move-result v5

    if-eqz v5, :cond_c

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getIndicatorIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 921
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 920
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 922
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    add-int/2addr v3, v5

    move v5, v3

    move-object v10, v4

    .line 925
    :goto_0
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 926
    if-eqz p3, :cond_0

    .line 927
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 933
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v15, v3

    .line 936
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->shouldDisplayIcon()Z

    move-result v3

    move v12, v3

    .line 937
    :goto_1
    if-eqz v12, :cond_3

    .line 938
    iget v3, v14, Landroid/graphics/Rect;->top:I

    sub-int v3, v15, v3

    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move v11, v3

    .line 940
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/ex/chips/RecipientEditTextView;->mUntrustedAddresses:Ljava/util/Set;

    .line 941
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    .line 940
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 942
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/ex/chips/RecipientEditTextView;->mWarningIconHeight:I

    :goto_3
    int-to-float v0, v3

    move/from16 v16, v0

    .line 943
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/ex/chips/RecipientEditTextView;->mWarningIconHeight:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v17, v3, v6

    .line 944
    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    :goto_4
    int-to-float v0, v3

    move/from16 v18, v0

    .line 946
    const/4 v3, 0x1

    new-array v3, v3, [F

    .line 947
    const-string/jumbo v4, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v3}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 948
    invoke-virtual/range {p0 .. p1}, Lcom/android/ex/chips/RecipientEditTextView;->createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v4

    .line 949
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->calculateAvailableWidth()F

    move-result v6

    .line 950
    int-to-float v7, v11

    .line 949
    sub-float/2addr v6, v7

    sub-float v6, v6, v16

    sub-float v6, v6, v18

    .line 953
    const/4 v7, 0x0

    aget v3, v3, v7

    .line 949
    sub-float v3, v6, v3

    .line 954
    iget v6, v14, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    .line 949
    sub-float/2addr v3, v6

    .line 955
    iget v6, v14, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    .line 949
    sub-float/2addr v3, v6

    .line 956
    int-to-float v6, v5

    .line 949
    sub-float/2addr v3, v6

    .line 948
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1, v3}, Lcom/android/ex/chips/RecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v4

    .line 957
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-int v6, v3

    .line 960
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextStartPadding:I

    .line 963
    :goto_5
    mul-int/lit8 v7, v11, 0x2

    .line 964
    add-int/2addr v3, v6

    .line 966
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    .line 964
    add-int/2addr v3, v8

    add-int/2addr v3, v11

    .line 968
    move/from16 v0, v16

    float-to-int v8, v0

    .line 964
    add-int/2addr v3, v8

    .line 969
    move/from16 v0, v18

    float-to-int v8, v0

    .line 964
    add-int/2addr v3, v8

    .line 970
    iget v8, v14, Landroid/graphics/Rect;->left:I

    .line 964
    add-int/2addr v3, v8

    .line 971
    iget v8, v14, Landroid/graphics/Rect;->right:I

    .line 964
    add-int/2addr v3, v8

    add-int/2addr v3, v5

    .line 963
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 975
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    invoke-static {v0, v15, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    .line 976
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v7, v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 979
    if-eqz p3, :cond_7

    .line 980
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v7, v8, v1, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 981
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 992
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->shouldPositionAvatarOnRight()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 993
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    .line 994
    iget v7, v14, Landroid/graphics/Rect;->left:I

    .line 993
    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 996
    move/from16 v0, v16

    float-to-int v6, v0

    .line 993
    add-int/2addr v5, v6

    .line 997
    move/from16 v0, v18

    float-to-int v6, v0

    .line 993
    add-int/2addr v5, v6

    .line 1005
    :goto_7
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1006
    int-to-float v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/ex/chips/RecipientEditTextView;->getTextYOffset(I)F

    move-result v8

    .line 1005
    const/4 v5, 0x0

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1008
    if-eqz v10, :cond_1

    .line 1009
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->shouldPositionAvatarOnRight()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1010
    iget v4, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    add-int/2addr v4, v5

    .line 1013
    :goto_8
    div-int/lit8 v5, v15, 0x2

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 1014
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1015
    invoke-virtual {v10, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1019
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->shouldPositionAvatarOnRight()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1020
    iget v3, v14, Landroid/graphics/Rect;->right:I

    sub-int v3, v19, v3

    sub-int/2addr v3, v11

    .line 1022
    :goto_9
    int-to-float v4, v3

    iput v4, v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->left:F

    .line 1023
    iget v4, v14, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iput v4, v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->top:F

    .line 1024
    add-int/2addr v3, v11

    int-to-float v3, v3

    iput v3, v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->right:F

    .line 1025
    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v15, v3

    int-to-float v3, v3

    iput v3, v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->bottom:F

    .line 1026
    iput-boolean v12, v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->loadIcon:Z

    .line 1029
    invoke-direct/range {p0 .. p0}, Lcom/android/ex/chips/RecipientEditTextView;->shouldPositionAvatarOnRight()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1030
    iget v3, v14, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float v3, v3, v18

    .line 1033
    :goto_a
    iput v3, v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->warningIconLeft:F

    .line 1034
    move/from16 v0, v17

    iput v0, v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->warningIconTop:F

    .line 1035
    add-float v3, v3, v16

    iput v3, v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->warningIconRight:F

    .line 1036
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/ex/chips/RecipientEditTextView;->mWarningIconHeight:I

    int-to-float v3, v3

    add-float v3, v3, v17

    iput v3, v13, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->warningIconBottom:F

    .line 1038
    return-object v13

    .line 936
    :cond_2
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_1

    .line 938
    :cond_3
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_2

    .line 942
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 944
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 960
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    goto/16 :goto_5

    .line 984
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 985
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 986
    div-int/lit8 v7, v15, 0x2

    int-to-float v7, v7

    .line 987
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v8, v9, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 988
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    .line 987
    invoke-virtual {v3, v8, v7, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 999
    :cond_8
    iget v7, v14, Landroid/graphics/Rect;->right:I

    .line 998
    sub-int v7, v19, v7

    .line 1000
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    .line 998
    sub-int/2addr v7, v8

    sub-int v6, v7, v6

    sub-int v5, v6, v5

    .line 1003
    move/from16 v0, v16

    float-to-int v6, v0

    .line 998
    sub-int/2addr v5, v6

    .line 1004
    move/from16 v0, v18

    float-to-int v6, v0

    .line 998
    sub-int/2addr v5, v6

    goto/16 :goto_7

    .line 1011
    :cond_9
    iget v4, v14, Landroid/graphics/Rect;->right:I

    sub-int v4, v19, v4

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1012
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    .line 1011
    sub-int/2addr v4, v5

    goto/16 :goto_8

    .line 1021
    :cond_a
    iget v3, v14, Landroid/graphics/Rect;->left:I

    goto/16 :goto_9

    .line 1031
    :cond_b
    iget v3, v14, Landroid/graphics/Rect;->right:I

    sub-int v3, v19, v3

    int-to-float v3, v3

    sub-float v3, v3, v16

    sub-float v3, v3, v18

    goto/16 :goto_a

    :cond_c
    move v5, v3

    move-object v10, v4

    goto/16 :goto_0
.end method

.method private createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 2754
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2755
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 2756
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2757
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2758
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    .line 2759
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 2758
    add-int v8, v0, v3

    .line 2760
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    float-to-int v7, v0

    .line 2761
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2762
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2764
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 2765
    if-eqz v3, :cond_0

    .line 2766
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v3, v7, v3

    move v5, v3

    .line 2768
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2770
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2771
    invoke-virtual {v0, v2, v2, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2772
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    invoke-direct {v1, p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_0
    move v5, v7

    goto :goto_0
.end method

.method private createSelectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;)Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;
    .locals 3

    .prologue
    .line 885
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->sSelectedTextColor:I

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 887
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/ex/chips/R$color;->chip_background_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 886
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->createChipBitmap(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/graphics/drawable/Drawable;I)Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;

    move-result-object v0

    .line 888
    iget-boolean v1, v0, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->loadIcon:Z

    if-eqz v1, :cond_0

    .line 889
    invoke-direct {p0, p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->loadAvatarIcon(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;)V

    .line 892
    :cond_0
    return-object v0
.end method

.method private createUnselectedChip(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;)Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;
    .locals 2

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getDefaultChipBackgroundColor(Lcom/android/ex/chips/RecipientEntry;)I

    move-result v1

    .line 904
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->createChipBitmap(Lcom/android/ex/chips/RecipientEntry;Landroid/text/TextPaint;Landroid/graphics/drawable/Drawable;I)Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;

    move-result-object v0

    .line 906
    iget-boolean v1, v0, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->loadIcon:Z

    if-eqz v1, :cond_0

    .line 907
    invoke-direct {p0, p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->loadAvatarIcon(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;)V

    .line 909
    :cond_0
    return-object v0
.end method

.method private createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2677
    if-nez p1, :cond_0

    .line 2678
    return-object v0

    .line 2684
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2685
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 2686
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 2687
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->isValid()Z

    move-result v2

    .line 2686
    invoke-static {v1, v0, v2}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object p1

    .line 2696
    :cond_1
    :goto_0
    return-object p1

    .line 2688
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2689
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2690
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2689
    if-nez v1, :cond_3

    .line 2691
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2688
    if-eqz v1, :cond_1

    .line 2692
    :cond_3
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->isValid()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object p1

    goto :goto_0
.end method

.method private dismissPopups()V
    .locals 1

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3145
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3147
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3148
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3150
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 3151
    return-void
.end method

.method private drawIcon(Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1045
    if-nez p2, :cond_0

    .line 1046
    return-void

    .line 1048
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1049
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1050
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->left:F

    iget v4, p1, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->top:F

    iget v5, p1, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->right:F

    .line 1051
    iget v6, p1, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->bottom:F

    .line 1050
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1052
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/ex/chips/RecipientEditTextView;->drawCircularIconOnCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 1053
    return-void
.end method

.method private drawRectanglularIconOnCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1201
    invoke-direct {p0, p1, p3, p4}, Lcom/android/ex/chips/RecipientEditTextView;->setWorkPaintForIcon(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 1202
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1205
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setWorkPaintForBorder(F)V

    .line 1206
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1208
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 1209
    return-void
.end method

.method private drawWarningIcon(Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;)Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1059
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWarningIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    .line 1062
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1063
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWarningIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWarningIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1064
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->warningIconLeft:F

    iget v4, p1, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->warningIconTop:F

    .line 1065
    iget v5, p1, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->warningIconRight:F

    iget v6, p1, Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;->warningIconBottom:F

    .line 1064
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1066
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWarningIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/ex/chips/RecipientEditTextView;->drawRectanglularIconOnCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 1067
    return-object v2
.end method

.method private ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 850
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 851
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    const-string/jumbo v0, "RecipientEditTextView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    const-string/jumbo v0, "RecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Max width is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 854
    invoke-static {p1, p2, p3, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private expand()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 834
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    if-eqz v0, :cond_0

    .line 835
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setMaxLines(I)V

    .line 837
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->removeMoreChip()V

    .line 838
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 839
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 843
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 844
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    invoke-direct {v0, p0, v3}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 845
    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 847
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 840
    goto :goto_0
.end method

.method private findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2500
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    .line 2502
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2504
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2505
    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v4

    .line 2506
    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v5

    .line 2507
    if-lt p1, v4, :cond_0

    if-gt p1, v5, :cond_0

    .line 2508
    return-object v3

    .line 2504
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2511
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findText(Landroid/text/Editable;I)I
    .locals 2

    .prologue
    .line 2493
    invoke-interface {p0, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 2494
    return p1

    .line 2496
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private focusNext()Z
    .locals 1

    .prologue
    .line 1908
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 1909
    if-eqz v0, :cond_0

    .line 1910
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1911
    const/4 v0, 0x1

    return v0

    .line 1913
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1

    .prologue
    .line 2210
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 1

    .prologue
    .line 2206
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getDefaultChipBackgroundColor(Lcom/android/ex/chips/RecipientEntry;)I
    .locals 2

    .prologue
    .line 1165
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mUnselectedChipBackgroundColor:I

    :goto_0
    return v0

    .line 1166
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/ex/chips/R$color;->chip_background_invalid:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private handleEdit(II)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2072
    if-eq p1, v3, :cond_0

    if-ne p2, v3, :cond_1

    .line 2074
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 2075
    return-void

    .line 2079
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2080
    invoke-virtual {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2081
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2082
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2083
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .line 2084
    const-string/jumbo v2, ""

    invoke-static {v0, p1, p2, v2}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2085
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2086
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 2087
    if-eqz v1, :cond_2

    if-le p1, v3, :cond_2

    if-le v2, v3, :cond_2

    .line 2088
    invoke-interface {v0, p1, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2091
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 2092
    return-void
.end method

.method private handlePasteAndReplace()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3486
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    move-result-object v0

    .line 3487
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3489
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    invoke-direct {v1, p0, v2}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;)V

    .line 3490
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3492
    :cond_0
    return-void
.end method

.method private isEntryAtPositionTypePerson(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2022
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->getItem(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEntry;->getEntryType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isTouchExplorationEnabled()Z
    .locals 2

    .prologue
    .line 3014
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 3015
    const/4 v0, 0x0

    return v0

    .line 3019
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3018
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 3020
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private isValidEmailAddress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 3242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v0, :cond_0

    .line 3243
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAvatarIcon(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1090
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v2

    .line 1091
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1092
    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 1096
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1097
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    .line 1100
    if-nez v0, :cond_5

    .line 1102
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView$8;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->fetchPhoto(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;)V

    .line 1149
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 1092
    goto :goto_0

    .line 1093
    :cond_3
    cmp-long v4, v2, v6

    if-eqz v4, :cond_4

    .line 1094
    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1093
    goto :goto_0

    .line 1145
    :cond_5
    array-length v2, v0

    .line 1144
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1146
    invoke-direct {p0, p2, v0}, Lcom/android/ex/chips/RecipientEditTextView;->drawIcon(Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private positionOfFirstEntryWithTypePerson()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2011
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v0

    .line 2012
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 2013
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2014
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->isEntryAtPositionTypePerson(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2015
    return v1

    :cond_0
    move v0, v1

    .line 2012
    goto :goto_0

    .line 2013
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2018
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private postHandlePendingChips()V
    .locals 2

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1439
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1440
    return-void
.end method

.method private putOffsetInRange(FF)I
    .locals 2

    .prologue
    .line 2453
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2454
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 2459
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->putOffsetInRange(I)I

    move-result v0

    return v0

    .line 2456
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->supportGetOffsetForPosition(FF)I

    move-result v0

    goto :goto_0
.end method

.method private putOffsetInRange(I)I
    .locals 5

    .prologue
    .line 2467
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2468
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 2471
    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2472
    invoke-interface {v2, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 2473
    add-int/lit8 v1, v1, -0x1

    .line 2471
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2481
    :cond_0
    if-lt p1, v1, :cond_1

    .line 2482
    return p1

    .line 2484
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2485
    :goto_1
    if-ltz p1, :cond_2

    invoke-static {v0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->findText(Landroid/text/Editable;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2487
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 2489
    :cond_2
    return p1
.end method

.method private scrollLineIntoView(I)V
    .locals 3

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 2340
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2342
    :cond_0
    return-void
.end method

.method private selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 2956
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 2957
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->forceShowAddress()Z

    move-result v0

    .line 2959
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    .line 2960
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v3

    .line 2961
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2971
    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    if-eqz v0, :cond_1

    .line 2972
    return-void

    :cond_0
    move v0, v1

    .line 2956
    goto :goto_0

    .line 2974
    :cond_1
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;Z)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2980
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 2981
    const-string/jumbo v5, ""

    invoke-static {v4, v2, v3, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2982
    if-eq v2, v6, :cond_2

    if-ne v3, v6, :cond_4

    .line 2983
    :cond_2
    const-string/jumbo v2, "RecipientEditTextView"

    const-string/jumbo v3, "The chip being selected no longer exists but should."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    :goto_1
    invoke-interface {v0, v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setSelected(Z)V

    .line 2988
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2989
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->scrollLineIntoView(I)V

    .line 2992
    :cond_3
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2995
    return-void

    .line 2975
    :catch_0
    move-exception v0

    .line 2976
    const-string/jumbo v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2977
    return-void

    .line 2985
    :cond_4
    const/16 v5, 0x21

    invoke-interface {v4, v0, v2, v3, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 2998
    :cond_5
    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3000
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 3001
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 3011
    return-void
.end method

.method private setChipDimensions(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 1314
    sget-object v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1316
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1318
    sget v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView_chipBackground:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1321
    sget v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView_chipBackgroundPressed:I

    .line 1320
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 1323
    sget v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView_invalidChipBackground:I

    .line 1322
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 1331
    sget v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView_chipPadding:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1330
    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextStartPadding:I

    .line 1332
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextStartPadding:I

    if-ne v0, v5, :cond_0

    .line 1334
    sget v0, Lcom/android/ex/chips/R$dimen;->chip_padding:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1333
    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextStartPadding:I

    .line 1338
    :cond_0
    sget v0, Lcom/android/ex/chips/R$dimen;->chip_padding_start:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1339
    if-ltz v0, :cond_1

    .line 1340
    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextStartPadding:I

    .line 1342
    :cond_1
    sget v0, Lcom/android/ex/chips/R$dimen;->chip_padding_end:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1343
    if-ltz v0, :cond_2

    .line 1344
    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipTextEndPadding:I

    .line 1347
    :cond_2
    sget v0, Lcom/android/ex/chips/R$drawable;->ic_contact_picture:I

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .line 1349
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/android/ex/chips/R$layout;->more_item:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 1351
    sget v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView_chipHeight:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    .line 1352
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_3

    .line 1353
    sget v0, Lcom/android/ex/chips/R$dimen;->chip_height:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipHeight:F

    .line 1355
    :cond_3
    sget v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView_chipFontSize:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    .line 1356
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_4

    .line 1357
    sget v0, Lcom/android/ex/chips/R$dimen;->chip_text_size:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipFontSize:F

    .line 1360
    :cond_4
    sget v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView_avatarPosition:I

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 1359
    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAvatarPosition:I

    .line 1364
    sget v0, Lcom/android/ex/chips/R$integer;->chips_max_lines:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMaxLines:I

    .line 1365
    sget v0, Lcom/android/ex/chips/R$dimen;->line_spacing_extra:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mLineSpacingExtra:F

    .line 1368
    sget v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView_unselectedChipTextColor:I

    .line 1369
    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 1367
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mUnselectedChipTextColor:I

    .line 1372
    sget v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView_unselectedChipBackgroundColor:I

    .line 1373
    sget v3, Lcom/android/ex/chips/R$color;->chip_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1371
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mUnselectedChipBackgroundColor:I

    .line 1375
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1376
    return-void
.end method

.method private setWorkPaintForBorder(F)V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 1237
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1238
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1239
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1240
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1241
    return-void
.end method

.method private setWorkPaintForIcon(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1215
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1218
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1219
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1222
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p2, p3, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1224
    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1225
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 1226
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1227
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1228
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1229
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1230
    return-void
.end method

.method private setupPopupWindow(Landroid/widget/ListPopupWindow;)V
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$6;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$6;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 422
    return-void
.end method

.method private shouldCreateChip(II)Z
    .locals 1

    .prologue
    .line 2059
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->alreadyHasChip(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldPositionAvatarOnRight()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1076
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 1077
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1078
    :goto_0
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAvatarPosition:I

    if-nez v3, :cond_2

    .line 1080
    :goto_1
    if-eqz v0, :cond_3

    xor-int/lit8 v0, v1, 0x1

    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 1077
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1076
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1078
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1080
    goto :goto_2
.end method

.method private shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3024
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v2

    .line 3025
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 3026
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 3025
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3026
    goto :goto_0
.end method

.method private showCopyDialog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3931
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3932
    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 3933
    :cond_0
    return-void

    .line 3932
    :cond_1
    instance-of v1, v0, Landroid/app/Activity;

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 3936
    invoke-static {p1}, Lcom/android/ex/chips/CopyDialog;->newInstance(Ljava/lang/String;)Lcom/android/ex/chips/CopyDialog;

    move-result-object v1

    .line 3937
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "chips-copy-dialog"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3938
    return-void
.end method

.method private showWarningDialog(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2366
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCurrentWarningText:Ljava/lang/String;

    .line 2367
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2368
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWarningTitle:Ljava/lang/String;

    .line 2367
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2369
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$9;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/RecipientEditTextView$9;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 2367
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2375
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCurrentWarningText:Ljava/lang/String;

    .line 2367
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2377
    return-void
.end method

.method private shrink()V
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 776
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v0, :cond_0

    .line 777
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    .line 780
    :goto_0
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v4, :cond_2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 781
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v2

    if-nez v2, :cond_2

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 782
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 830
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V

    .line 831
    return-void

    :cond_1
    move-wide v0, v2

    .line 779
    goto :goto_0

    .line 784
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_4

    .line 785
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 787
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRequiresShrinkWhenNotGone:Z

    .line 799
    :goto_2
    return-void

    .line 797
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 803
    :cond_4
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v0, :cond_6

    .line 804
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 828
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 806
    :cond_6
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 807
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 808
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 810
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    const-class v4, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v0, v3, v2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 811
    if-eqz v0, :cond_7

    array-length v0, v0

    if-nez v0, :cond_5

    .line 812
    :cond_7
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 813
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v4, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 815
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v0, v5, :cond_8

    invoke-interface {v4, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_8

    .line 816
    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v0

    .line 820
    :cond_8
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    .line 821
    if-eq v0, v4, :cond_9

    .line 822
    invoke-direct {p0, v3, v0}, Lcom/android/ex/chips/RecipientEditTextView;->handleEdit(II)V

    goto :goto_3

    .line 824
    :cond_9
    invoke-direct {p0, v3, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    goto :goto_3
.end method

.method private startDrag(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 4

    .prologue
    .line 3876
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 3877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 3880
    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 3884
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 3885
    return-void
.end method

.method private submitGroupMemberAtPosition(Lcom/android/ex/chips/RecipientEntry;)I
    .locals 4

    .prologue
    .line 2657
    if-nez p1, :cond_0

    .line 2658
    const/4 v0, -0x1

    return v0

    .line 2660
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 2662
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    .line 2663
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2665
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2666
    const-string/jumbo v3, ""

    invoke-static {v2, v1, v0, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2667
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2668
    if-eqz v3, :cond_1

    if-ltz v1, :cond_1

    if-ltz v0, :cond_1

    .line 2669
    invoke-interface {v2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2671
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    .line 2673
    sub-int/2addr v0, v1

    return v0
.end method

.method private submitItemAtPosition(I)I
    .locals 5

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->getItem(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 2622
    if-nez v0, :cond_0

    .line 2623
    const/4 v0, -0x1

    return v0

    .line 2625
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 2627
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 2628
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 2630
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2631
    const-string/jumbo v4, ""

    invoke-static {v3, v2, v1, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2632
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2633
    if-eqz v0, :cond_1

    if-ltz v2, :cond_1

    if-ltz v1, :cond_1

    .line 2634
    invoke-interface {v3, v2, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2636
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeBetween()V

    .line 2638
    sub-int v0, v1, v2

    return v0
.end method

.method private supportConvertToLocalHorizontalCoordinate(F)F
    .locals 3

    .prologue
    .line 3842
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 3844
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3845
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3846
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 3847
    return v0
.end method

.method private supportGetLineAtCoordinate(F)I
    .locals 3

    .prologue
    .line 3851
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 3853
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3854
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3855
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 3856
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private supportGetOffsetAtCoordinate(IF)I
    .locals 2

    .prologue
    .line 3860
    invoke-direct {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->supportConvertToLocalHorizontalCoordinate(F)F

    move-result v0

    .line 3861
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private supportGetOffsetForPosition(FF)I
    .locals 1

    .prologue
    .line 3836
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3837
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->supportGetLineAtCoordinate(F)I

    move-result v0

    .line 3838
    invoke-direct {p0, v0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->supportGetOffsetAtCoordinate(IF)I

    move-result v0

    return v0
.end method

.method private static tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1666
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 1667
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1668
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1670
    :cond_0
    return-object p0
.end method

.method private touchedWarningIcon(FFLcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z
    .locals 7

    .prologue
    .line 2345
    const/4 v0, 0x0

    .line 2346
    if-eqz p3, :cond_0

    .line 2347
    invoke-interface {p3}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getWarningIconBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2348
    if-eqz v1, :cond_0

    .line 2349
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->shouldPositionAvatarOnRight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2350
    invoke-direct {p0, p3}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    .line 2351
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 2352
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 2353
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2352
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 2353
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingTop()I

    move-result v3

    .line 2352
    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 2354
    new-instance v3, Landroid/graphics/RectF;

    .line 2355
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    .line 2356
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    .line 2357
    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    .line 2358
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 2354
    invoke-direct {v3, v4, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2359
    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 2362
    :cond_0
    return v0

    .line 2350
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    goto :goto_0
.end method

.method private unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 3059
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    .line 3060
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v1

    .line 3061
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 3062
    iput-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3063
    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_3

    .line 3064
    :cond_0
    const-string/jumbo v0, "RecipientEditTextView"

    const-string/jumbo v1, "The chip doesn\'t exist or may be a chip a user was editing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 3066
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    .line 3081
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 3082
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 3083
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3084
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3086
    :cond_2
    return-void

    .line 3068
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3069
    const-string/jumbo v3, ""

    invoke-static {v2, v0, v1, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 3070
    invoke-interface {v2, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3072
    :try_start_0
    iget-boolean v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    if-nez v3, :cond_1

    .line 3074
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;Z)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 3075
    const/16 v4, 0x21

    .line 3074
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3077
    :catch_0
    move-exception v0

    .line 3078
    const-string/jumbo v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unselectedChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Z)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3091
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    .line 3092
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v1

    .line 3093
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 3094
    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3095
    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_5

    .line 3096
    :cond_0
    const-string/jumbo v0, "RecipientEditTextView"

    const-string/jumbo v1, "The chip doesn\'t exist or may be a chip a user was editing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 3098
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    .line 3113
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 3114
    if-eqz p2, :cond_2

    .line 3115
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 3116
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3117
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3119
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3120
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 3122
    :cond_4
    return-void

    .line 3100
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3101
    const-string/jumbo v3, ""

    invoke-static {v2, v0, v1, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 3102
    invoke-interface {v2, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3104
    :try_start_0
    iget-boolean v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    if-nez v3, :cond_1

    .line 3106
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;Z)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    .line 3107
    const/16 v4, 0x21

    .line 3105
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3109
    :catch_0
    move-exception v0

    .line 3110
    const-string/jumbo v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 627
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 630
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_2

    .line 632
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 636
    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    sget-object v2, Lcom/android/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-super {p0, v1, v3, v2}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 641
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 642
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 643
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_2
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v0, :cond_3

    .line 649
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 651
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 652
    return-void
.end method

.method public appendRecipientEntry(Lcom/android/ex/chips/RecipientEntry;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3972
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 3974
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 3978
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 3979
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 3980
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    .line 3983
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3986
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3987
    if-eqz v2, :cond_1

    .line 3988
    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3990
    :cond_1
    return-void
.end method

.method public clearSelectedChip()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2262
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 2264
    iput-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2266
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2267
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2268
    return-void
.end method

.method countTokens(Landroid/text/Editable;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 2798
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2799
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v0

    .line 2800
    add-int/lit8 v1, v1, 0x1

    .line 2801
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 2805
    :cond_1
    return v1
.end method

.method createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 2517
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 2518
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v2

    .line 2519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 2523
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/android/ex/chips/PhoneUtil;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2524
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2537
    :goto_0
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2538
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 2539
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2538
    :cond_2
    return-object v0

    .line 2526
    :cond_3
    if-eqz v2, :cond_4

    .line 2529
    invoke-static {v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 2530
    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    .line 2531
    aget-object v2, v3, v5

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2534
    :cond_4
    new-instance v3, Landroid/text/util/Rfc822Token;

    invoke-direct {v3, v0, v2, v1}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method createChipDisplayText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2546
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 2547
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v2

    .line 2548
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 2551
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2552
    return-object v0

    .line 2553
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2554
    return-object v2

    .line 2556
    :cond_3
    new-instance v3, Landroid/text/util/Rfc822Token;

    invoke-direct {v3, v0, v2, v1}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method createMoreChip()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 2815
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    if-eqz v0, :cond_0

    .line 2816
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChipPlainText()V

    .line 2817
    return-void

    .line 2820
    :cond_0
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    if-nez v0, :cond_1

    .line 2821
    return-void

    .line 2823
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 2824
    const-class v3, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    .line 2823
    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    .line 2825
    array-length v1, v0

    if-lez v1, :cond_2

    .line 2826
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2828
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v4

    .line 2830
    if-eqz v4, :cond_3

    array-length v0, v4

    const/4 v1, 0x2

    if-gt v0, v1, :cond_4

    .line 2831
    :cond_3
    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    .line 2832
    return-void

    .line 2834
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    .line 2835
    array-length v6, v4

    .line 2836
    add-int/lit8 v7, v6, -0x2

    .line 2837
    invoke-direct {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    move-result-object v8

    .line 2838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHiddenSpans:Ljava/util/ArrayList;

    .line 2841
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 2842
    sub-int v0, v6, v7

    move v1, v2

    move v3, v2

    :goto_0
    array-length v10, v4

    if-ge v0, v10, :cond_9

    .line 2843
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHiddenSpans:Ljava/util/ArrayList;

    aget-object v11, v4, v0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2844
    sub-int v10, v6, v7

    if-ne v0, v10, :cond_5

    .line 2845
    aget-object v3, v4, v0

    invoke-interface {v5, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 2847
    :cond_5
    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    if-ne v0, v10, :cond_6

    .line 2848
    aget-object v1, v4, v0

    invoke-interface {v5, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 2850
    :cond_6
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    aget-object v11, v4, v0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_8

    .line 2851
    :cond_7
    aget-object v10, v4, v0

    invoke-interface {v5, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 2852
    aget-object v11, v4, v0

    invoke-interface {v5, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 2853
    aget-object v12, v4, v0

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 2855
    :cond_8
    aget-object v10, v4, v0

    invoke-interface {v5, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2857
    :cond_9
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 2858
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v1

    .line 2860
    :cond_a
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2861
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2862
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v9, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2863
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v3, v8, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2864
    invoke-interface {v9, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2865
    iput-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    .line 2867
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMaxLines:I

    if-le v0, v1, :cond_b

    .line 2868
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setMaxLines(I)V

    .line 2870
    :cond_b
    return-void
.end method

.method createMoreChipPlainText()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2778
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    move v0, v1

    move v2, v1

    move v3, v1

    .line 2781
    :goto_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_0

    .line 2782
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, v4, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v2

    .line 2781
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_0

    .line 2786
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->countTokens(Landroid/text/Editable;)I

    move-result v0

    .line 2787
    add-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreSpan(I)Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    move-result-object v0

    .line 2788
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v4, v2, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2789
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v3, v0, v1, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2790
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {v4, v2, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2791
    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    .line 2792
    return-void
.end method

.method createReplacementChip(IILandroid/text/Editable;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1571
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->alreadyHasChip(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    return-void

    .line 1576
    :cond_0
    invoke-interface {p3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1577
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1578
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1579
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1580
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1582
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 1583
    if-eqz v3, :cond_3

    .line 1586
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    if-nez v1, :cond_5

    .line 1588
    if-eqz p4, :cond_4

    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;Z)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1593
    :goto_0
    const/16 v2, 0x21

    invoke-interface {p3, v1, p1, p2, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1595
    if-eqz v1, :cond_3

    .line 1596
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1597
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1599
    :cond_2
    invoke-interface {v1, v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 1600
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    :cond_3
    return-void

    .line 1588
    :cond_4
    :try_start_1
    new-instance v1, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;

    invoke-direct {v1, v3}, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;-><init>(Lcom/android/ex/chips/RecipientEntry;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1590
    :catch_0
    move-exception v1

    .line 1591
    const-string/jumbo v3, "RecipientEditTextView"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method createTokenizedEntry(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1607
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    return-object v1

    .line 1610
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/ex/chips/PhoneUtil;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1611
    invoke-static {p1, v2}, Lcom/android/ex/chips/RecipientEntry;->constructFakePhoneEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0

    .line 1613
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 1614
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v3

    .line 1615
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    array-length v5, v0

    if-lez v5, :cond_3

    .line 1618
    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1619
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1620
    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0

    .line 1623
    :cond_2
    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1624
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1625
    invoke-static {v0, v3}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0

    .line 1632
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v0, :cond_4

    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_8

    .line 1634
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1635
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1636
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1640
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 1641
    array-length v5, v1

    if-lez v5, :cond_7

    .line 1642
    aget-object v0, v1, v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 1658
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1657
    :goto_1
    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEntry;->constructFakeEntry(Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, v1

    move v1, v3

    .line 1632
    goto :goto_0

    :cond_5
    move-object v0, v1

    move v1, v4

    .line 1652
    goto :goto_0

    :cond_6
    move-object v0, p1

    .line 1658
    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_0

    :cond_8
    move-object v0, v1

    move v1, v3

    goto :goto_0
.end method

.method protected drawCircularIconOnCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1183
    invoke-direct {p0, p1, p3, p4}, Lcom/android/ex/chips/RecipientEditTextView;->setWorkPaintForIcon(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 1184
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1187
    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->setWorkPaintForBorder(F)V

    .line 1188
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v5

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    .line 1189
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    .line 1188
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1191
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWorkPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 1192
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 3962
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;
    .locals 1

    .prologue
    .line 3964
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter;

    return-object v0
.end method

.method getChipBackground(Lcom/android/ex/chips/RecipientEntry;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1156
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 529
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 530
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 531
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    .line 533
    :cond_0
    return-object v0
.end method

.method getMoreChip()Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 2748
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    .line 2749
    const-class v3, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    .line 2748
    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;

    .line 2750
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v0, v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getOrientation()Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mOrientation:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    return-object v0
.end method

.method getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 4

    .prologue
    .line 2701
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    .line 2702
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    const/4 v3, 0x0

    .line 2701
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2703
    new-instance v1, Ljava/util/ArrayList;

    .line 2704
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2703
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2705
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    .line 2706
    new-instance v2, Lcom/android/ex/chips/RecipientEditTextView$11;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$11;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/Spannable;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2721
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    return-object v0
.end method

.method getSpannable()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionDropdownOpenedVerbalization(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/ex/chips/R$string;->accessbility_suggestion_dropdown_opened:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTextYOffset(I)F
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextHeight:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    int-to-float v0, v0

    return v0
.end method

.method getViewWidth()I
    .locals 1

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    return v0
.end method

.method handlePaste()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 3496
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3497
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v3

    invoke-interface {v1, v4, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 3498
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3502
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3503
    if-eqz v3, :cond_0

    move v1, v3

    .line 3505
    :goto_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    if-eq v1, v2, :cond_2

    .line 3507
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v4, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 3508
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 3509
    if-ne v2, v3, :cond_3

    if-nez v0, :cond_3

    move-object v7, v0

    move v0, v1

    move v1, v2

    move-object v2, v7

    .line 3513
    :goto_1
    if-eq v1, v3, :cond_0

    .line 3514
    if-eqz v2, :cond_5

    .line 3519
    :goto_2
    if-ge v0, v3, :cond_0

    .line 3520
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->movePastTerminators(I)I

    move-result v1

    .line 3522
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 3523
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 3524
    if-nez v1, :cond_4

    .line 3535
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3536
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3537
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3538
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/ex/chips/RecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 3539
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3541
    :cond_1
    return-object v6

    :cond_2
    move-object v7, v0

    move v0, v2

    move-object v2, v7

    .line 3505
    goto :goto_1

    :cond_3
    move v7, v1

    move v1, v2

    move v2, v7

    goto :goto_0

    .line 3528
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3529
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method handlePasteClip(Landroid/content/ClipData;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 3429
    if-nez p1, :cond_0

    .line 3431
    return-void

    .line 3434
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 3435
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3436
    const-string/jumbo v3, "text/html"

    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    .line 3437
    :goto_0
    if-nez v1, :cond_2

    .line 3438
    return-void

    :cond_1
    move v1, v2

    .line 3435
    goto :goto_0

    .line 3441
    :cond_2
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3443
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 3444
    :goto_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 3445
    invoke-virtual {v3, v0}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 3446
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3447
    const-string/jumbo v4, "text/html"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3448
    :goto_2
    if-nez v1, :cond_5

    .line 3444
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 3446
    goto :goto_2

    .line 3453
    :cond_5
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3454
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3455
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 3456
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v5

    .line 3457
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v6

    .line 3458
    if-ltz v5, :cond_6

    if-ge v6, v2, :cond_7

    .line 3460
    :cond_6
    invoke-interface {v4, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 3467
    :goto_4
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteAndReplace()V

    goto :goto_3

    .line 3461
    :cond_7
    if-ne v5, v6, :cond_8

    .line 3463
    invoke-interface {v4, v5, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_4

    .line 3465
    :cond_8
    invoke-interface {v4, v1, v5, v6}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    goto :goto_4

    .line 3471
    :cond_9
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3472
    return-void
.end method

.method handlePendingChips()V
    .locals 10

    .prologue
    const/16 v9, 0x32

    const/4 v1, 0x1

    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 1460
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getViewWidth()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1464
    return-void

    .line 1466
    :cond_0
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-gtz v2, :cond_1

    .line 1467
    return-void

    .line 1470
    :cond_1
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1471
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1473
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-gt v2, v9, :cond_7

    move v3, v0

    .line 1474
    :goto_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 1475
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1476
    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1478
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 1479
    if-ltz v6, :cond_2

    .line 1482
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_3

    .line 1483
    invoke-interface {v5, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v7, 0x2c

    if-ne v2, v7, :cond_3

    .line 1484
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 1486
    :goto_1
    if-lt v3, v8, :cond_4

    .line 1487
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1486
    :goto_2
    invoke-virtual {p0, v6, v2, v5, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createReplacementChip(IILandroid/text/Editable;Z)V

    .line 1489
    :cond_2
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 1474
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v2, v0

    .line 1483
    goto :goto_1

    :cond_4
    move v0, v1

    .line 1486
    goto :goto_2

    .line 1491
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->sanitizeEnd()V

    .line 1496
    :goto_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1497
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v9, :cond_a

    .line 1498
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_8

    .line 1499
    :cond_6
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1521
    :goto_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    .line 1522
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1524
    return-void

    .line 1493
    :cond_7
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1470
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 1503
    :cond_8
    :try_start_2
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    .line 1504
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    .line 1505
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 1504
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1506
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_9

    .line 1507
    new-instance v0, Ljava/util/ArrayList;

    .line 1508
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1509
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1508
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 1507
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1513
    :goto_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V

    goto :goto_4

    .line 1511
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    goto :goto_5

    .line 1518
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1519
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->createMoreChip()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method isCompletedToken(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2244
    return v1

    .line 2247
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2248
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, p1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 2249
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2250
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2251
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2252
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2254
    :cond_3
    return v1
.end method

.method public isGeneratedContact(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3419
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getContactId()J

    move-result-wide v2

    .line 3420
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 3421
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isPhoneQuery()Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 3420
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3421
    goto :goto_0
.end method

.method protected isPhoneQuery()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3958
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3959
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->getQueryType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 3958
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 3959
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3958
    goto :goto_0
.end method

.method public lastCharacterIsCommitCharacter(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3408
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 3409
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 3410
    if-eq v0, v3, :cond_3

    .line 3411
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3415
    :goto_1
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 3408
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3413
    :cond_3
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1
.end method

.method movePastTerminators(I)I
    .locals 2

    .prologue
    .line 3546
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 3547
    return p1

    .line 3549
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3550
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_2

    .line 3551
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 3555
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 3556
    add-int/lit8 p1, p1, 0x1

    .line 3558
    :cond_3
    return p1
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 2726
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 469
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onAttachedToWindow()V

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    .line 472
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getDropDownAnchor()I

    move-result v0

    .line 473
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDropdownAnchor:Landroid/view/View;

    .line 476
    :cond_0
    return-void
.end method

.method public onCheckedItemChanged(I)V
    .locals 2

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 2444
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2445
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2447
    :cond_0
    iput p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCheckedItem:I

    .line 2448
    return-void
.end method

.method protected onChipCreated(Lcom/android/ex/chips/RecipientEntry;)V
    .locals 1

    .prologue
    .line 2589
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRecipientChipAddedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientChipAddedListener;

    if-eqz v0, :cond_0

    .line 2590
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRecipientChipAddedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientChipAddedListener;

    invoke-interface {v0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipAddedListener;->onRecipientChipAdded(Lcom/android/ex/chips/RecipientEntry;)V

    .line 2592
    :cond_0
    return-void
.end method

.method public onChipDelete()V
    .locals 2

    .prologue
    .line 3126
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_1

    .line 3127
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRecipientChipDeletedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

    if-eqz v0, :cond_0

    .line 3128
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRecipientChipDeletedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;->onRecipientChipDeleted(Lcom/android/ex/chips/RecipientEntry;)V

    .line 3130
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 3132
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissPopups()V

    .line 3133
    return-void
.end method

.method public onClick(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 1

    .prologue
    .line 3226
    invoke-interface {p1}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3227
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 3229
    :cond_0
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 2743
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 507
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    .line 508
    and-int/lit8 v2, v0, 0x6

    if-eqz v2, :cond_0

    .line 510
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 512
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 514
    :cond_0
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 515
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 518
    :cond_1
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 522
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 524
    return-object v1

    .line 523
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/ex/chips/R$string;->action_label:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 2731
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onDetachedFromWindow()V

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAttachedToWindow:Z

    .line 465
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 3803
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .param p1    # Landroid/view/DragEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 3892
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3903
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 3895
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 3897
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->requestFocus()Z

    .line 3898
    return v1

    .line 3900
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    .line 3901
    return v1

    .line 3892
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 488
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 489
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    return v1

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 494
    return v1

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->focusNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    return v1

    .line 501
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 3809
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 656
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 657
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->expand()V

    .line 658
    if-nez p1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 668
    :cond_0
    return-void
.end method

.method public onGroupItemClick(ILcom/android/ex/chips/RecipientEntry;)V
    .locals 2

    .prologue
    .line 2645
    if-gez p1, :cond_0

    .line 2646
    return-void

    .line 2649
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->submitGroupMemberAtPosition(Lcom/android/ex/chips/RecipientEntry;)I

    move-result v0

    .line 2650
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRecipientEntryItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientEntryItemClickedListener;

    if-eqz v1, :cond_1

    .line 2651
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRecipientEntryItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientEntryItemClickedListener;

    invoke-interface {v1, v0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientEntryItemClickedListener;->onRecipientEntryItemClicked(II)V

    .line 2654
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 2600
    if-gez p3, :cond_0

    .line 2601
    return-void

    .line 2604
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/ex/chips/BaseRecipientAdapter;->getItem(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 2605
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getEntryType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2606
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPermissionsRequestItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$PermissionsRequestItemClickedListener;

    if-eqz v1, :cond_1

    .line 2607
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPermissionsRequestItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$PermissionsRequestItemClickedListener;

    .line 2608
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 2607
    invoke-interface {v1, p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$PermissionsRequestItemClickedListener;->onPermissionsRequestItemClicked(Lcom/android/ex/chips/RecipientEditTextView;[Ljava/lang/String;)V

    .line 2610
    :cond_1
    return-void

    .line 2613
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/ex/chips/RecipientEditTextView;->submitItemAtPosition(I)I

    move-result v0

    .line 2614
    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRecipientEntryItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientEntryItemClickedListener;

    if-eqz v1, :cond_3

    .line 2615
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRecipientEntryItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientEntryItemClickedListener;

    invoke-interface {v1, v0, p3}, Lcom/android/ex/chips/RecipientEditTextView$RecipientEntryItemClickedListener;->onRecipientEntryItemClicked(II)V

    .line 2618
    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x43

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 2100
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_1

    if-ne p1, v3, :cond_1

    .line 2101
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->removeChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 2106
    iput-boolean v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mToastflag:Z

    .line 2107
    return v2

    .line 2110
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 2180
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 2181
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2190
    if-ne p1, v3, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 2191
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 2192
    iget-boolean v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mNoChipMode:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRecipientChipDeletedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 2193
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRecipientChipDeletedListener:Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;

    invoke-interface {v2, v0}, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipDeletedListener;->onRecipientChipDeleted(Lcom/android/ex/chips/RecipientEntry;)V

    .line 2197
    :cond_3
    return v1

    .line 2114
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2119
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getListSelection()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 2121
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getListSelection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->getItem(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 2122
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getEntryType()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 2123
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPermissionsRequestItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$PermissionsRequestItemClickedListener;

    if-eqz v1, :cond_4

    .line 2124
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPermissionsRequestItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$PermissionsRequestItemClickedListener;

    .line 2125
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 2124
    invoke-interface {v1, p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$PermissionsRequestItemClickedListener;->onPermissionsRequestItemClicked(Lcom/android/ex/chips/RecipientEditTextView;[Ljava/lang/String;)V

    .line 2127
    :cond_4
    return v2

    .line 2129
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getListSelection()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->submitItemAtPosition(I)I

    .line 2130
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 2131
    return v2

    .line 2133
    :cond_6
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2134
    return v2

    .line 2136
    :cond_7
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_8

    .line 2137
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 2138
    return v2

    .line 2139
    :cond_8
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->focusNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2140
    return v2

    .line 2146
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2147
    return v2

    .line 2152
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2153
    return v2

    .line 2160
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2162
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getListSelection()I

    move-result v0

    if-nez v0, :cond_9

    .line 2165
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 2166
    return v2

    .line 2169
    :cond_9
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getListSelection()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2174
    return v2

    .line 2110
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x14

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1700
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_0

    .line 1701
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1702
    return v5

    .line 1707
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1708
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_1

    .line 1709
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 1710
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1711
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1717
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1718
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1719
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    array-length v0, v0

    if-lt v0, v3, :cond_4

    .line 1721
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mToastflag:Z

    if-eqz v0, :cond_3

    .line 1722
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1723
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1724
    sget v1, Lcom/android/ex/chips/R$string;->too_many_recipients_count:I

    .line 1723
    new-array v2, v5, [Ljava/lang/Object;

    .line 1725
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1723
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1726
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1728
    if-eqz v0, :cond_2

    .line 1729
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1731
    :cond_2
    iput-boolean v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mToastflag:Z

    .line 1734
    :cond_3
    return v5

    .line 1736
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1749
    sparse-switch p1, :sswitch_data_0

    .line 1904
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1751
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_1

    .line 1753
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1755
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    goto :goto_0

    .line 1761
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    new-instance v0, Ljava/util/ArrayList;

    .line 1764
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1763
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1766
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1767
    :cond_2
    return v3

    .line 1770
    :cond_3
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v1, :cond_5

    .line 1772
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 1773
    if-eqz v0, :cond_4

    .line 1776
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1779
    invoke-virtual {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1780
    return v4

    .line 1783
    :cond_4
    return v3

    .line 1787
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 1788
    if-nez v1, :cond_7

    .line 1790
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_6

    .line 1791
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->unselectedChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Z)V

    .line 1792
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1793
    return v3

    .line 1796
    :cond_7
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1800
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1799
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1802
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1804
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1809
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_8

    .line 1810
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1811
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v1

    .line 1810
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1814
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1815
    return v4

    .line 1822
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    new-instance v0, Ljava/util/ArrayList;

    .line 1825
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1824
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1827
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 1828
    :cond_9
    return v3

    .line 1831
    :cond_a
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v1, :cond_c

    .line 1835
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 1836
    if-eqz v0, :cond_b

    .line 1839
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1842
    invoke-virtual {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1843
    return v4

    .line 1846
    :cond_b
    return v3

    .line 1851
    :cond_c
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 1857
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1856
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 1860
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1862
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1865
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1866
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v1

    .line 1865
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1868
    invoke-virtual {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1869
    return v4

    .line 1872
    :cond_d
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 1873
    if-nez v0, :cond_f

    .line 1878
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1879
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1878
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1883
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_e

    .line 1884
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->unselectedChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Z)V

    .line 1885
    :cond_e
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1887
    return v3

    .line 1890
    :cond_f
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v0, v1, :cond_10

    .line 1891
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 1892
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1893
    return v4

    .line 1896
    :cond_10
    return v3

    .line 1749
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v0, :cond_0

    .line 3815
    return-void

    .line 3817
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3819
    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->putOffsetInRange(FF)I

    move-result v0

    .line 3820
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 3821
    if-eqz v0, :cond_1

    .line 3822
    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDragEnabled:Z

    if-eqz v1, :cond_2

    .line 3824
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->startDrag(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    .line 3830
    :cond_1
    :goto_0
    return-void

    .line 3827
    :cond_2
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->showCopyDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPermissionRequestDismissed()V
    .locals 1

    .prologue
    .line 3137
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPermissionsRequestItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$PermissionsRequestItemClickedListener;

    if-eqz v0, :cond_0

    .line 3138
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPermissionsRequestItemClickedListener:Lcom/android/ex/chips/RecipientEditTextView$PermissionsRequestItemClickedListener;

    invoke-interface {v0}, Lcom/android/ex/chips/RecipientEditTextView$PermissionsRequestItemClickedListener;->onPermissionRequestDismissed()V

    .line 3140
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 3141
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 2735
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 594
    check-cast p1, Landroid/os/Bundle;

    .line 595
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 602
    :goto_0
    const-string/jumbo v0, "savedCurrentWarningText"

    .line 601
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->showWarningDialog(Ljava/lang/String;)V

    .line 606
    :cond_0
    return-void

    .line 599
    :cond_1
    const-string/jumbo v0, "savedTextView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 598
    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 612
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 613
    const-string/jumbo v1, "savedTextView"

    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 614
    const-string/jumbo v1, "savedCurrentWarningText"

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCurrentWarningText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 3943
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 3949
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 3954
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 1416
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;->onSizeChanged(IIII)V

    .line 1417
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1418
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v0, :cond_1

    .line 1419
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->postHandlePendingChips()V

    .line 1425
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTriedGettingScrollView:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 1426
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1427
    :goto_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ScrollView;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1428
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 1421
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->checkChipWidths()V

    goto :goto_0

    .line 1430
    :cond_2
    if-eqz v0, :cond_3

    .line 1431
    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    .line 1433
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTriedGettingScrollView:Z

    .line 1435
    :cond_4
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2

    .prologue
    .line 3476
    const v0, 0x1020022

    if-ne p1, v0, :cond_0

    .line 3477
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3478
    const-string/jumbo v1, "clipboard"

    .line 3477
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3479
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    .line 3480
    const/4 v0, 0x1

    return v0

    .line 3482
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 2283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 2284
    invoke-direct {p0, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->putOffsetInRange(FF)I

    move-result v5

    .line 2285
    invoke-direct {p0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->findChip(I)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v5

    .line 2286
    if-ne v2, v0, :cond_9

    .line 2287
    invoke-direct {p0, v3, v4, v5}, Lcom/android/ex/chips/RecipientEditTextView;->touchedWarningIcon(FFLcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v2

    .line 2288
    if-eqz v2, :cond_0

    .line 2289
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mWarningTextTemplate:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    .line 2290
    invoke-interface {v5}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 2289
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2291
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->showWarningDialog(Ljava/lang/String;)V

    .line 2292
    return v0

    .line 2294
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2296
    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0

    .line 2298
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2299
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v3, :cond_3

    .line 2300
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2303
    :cond_3
    if-eqz v5, :cond_7

    .line 2304
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eq v1, v5, :cond_5

    .line 2305
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 2306
    invoke-direct {p0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    :goto_0
    move v1, v0

    .line 2318
    :goto_1
    if-nez v1, :cond_4

    .line 2319
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 2334
    :cond_4
    :goto_2
    return v0

    .line 2307
    :cond_5
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v1, :cond_6

    .line 2308
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->commitDefault()Z

    .line 2309
    invoke-direct {p0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->selectChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    goto :goto_0

    .line 2311
    :cond_6
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->onClick(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V

    goto :goto_0

    .line 2315
    :cond_7
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->shouldShowEditableText(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v1, v0

    move v0, v2

    .line 2316
    goto :goto_1

    :cond_8
    move v0, v2

    .line 2315
    goto :goto_1

    .line 2322
    :cond_9
    invoke-direct {p0, v3, v4, v5}, Lcom/android/ex/chips/RecipientEditTextView;->touchedWarningIcon(FFLcom/android/ex/chips/recipientchip/DrawableRecipientChip;)Z

    move-result v1

    .line 2323
    if-eqz v1, :cond_a

    .line 2324
    return v0

    .line 2326
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2327
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2328
    return v0

    .line 2330
    :cond_b
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-nez v1, :cond_4

    .line 2331
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_c
    move v0, v2

    goto :goto_1
.end method

.method public performFiltering(Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2222
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2223
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v1

    if-eqz v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 2224
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    .line 2225
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v1, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2228
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 2229
    const-class v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2230
    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 2231
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 2232
    return-void

    .line 2234
    :cond_0
    if-eqz v0, :cond_1

    .line 2235
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 2236
    return-void

    .line 2238
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 2239
    return-void
.end method

.method public performValidation()V
    .locals 0

    .prologue
    .line 773
    return-void
.end method

.method removeChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3158
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 3159
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 3160
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 3161
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 3163
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-ne p1, v5, :cond_0

    const/4 v1, 0x1

    .line 3165
    :cond_0
    if-eqz v1, :cond_1

    .line 3166
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3169
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-interface {v4, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    .line 3170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3172
    :cond_2
    invoke-interface {v2, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3173
    if-ltz v3, :cond_3

    if-lez v0, :cond_3

    .line 3174
    invoke-interface {v4, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 3176
    :cond_3
    if-eqz v1, :cond_4

    .line 3177
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 3179
    :cond_4
    return-void
.end method

.method removeMoreChip()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2878
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    if-eqz v0, :cond_4

    .line 2879
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    .line 2880
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2881
    iput-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    .line 2883
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHiddenSpans:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHiddenSpans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2885
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    .line 2888
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 2889
    :cond_0
    return-void

    .line 2891
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 2892
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2893
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHiddenSpans:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2898
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2903
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2904
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2906
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 2908
    const/16 v5, 0x21

    .line 2907
    invoke-interface {v3, v0, v2, v1, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    move v2, v1

    goto :goto_0

    .line 2911
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHiddenSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2914
    :cond_4
    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 3237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 3238
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3239
    return-void
.end method

.method replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3187
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    if-ne p1, v0, :cond_4

    move v1, v2

    .line 3188
    :goto_0
    if-eqz v1, :cond_0

    .line 3189
    iput-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->mSelectedChip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3191
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipStart(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v4

    .line 3192
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->getChipEnd(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    .line 3193
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3194
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 3195
    invoke-virtual {p2, v2}, Lcom/android/ex/chips/RecipientEntry;->setInReplacedChip(Z)V

    .line 3196
    invoke-direct {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->createChip(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 3197
    if-eqz v6, :cond_2

    .line 3198
    if-eq v4, v7, :cond_1

    if-ne v0, v7, :cond_5

    .line 3199
    :cond_1
    const-string/jumbo v0, "RecipientEditTextView"

    const-string/jumbo v4, "The chip to replace does not exist but should."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    invoke-interface {v5, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3214
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 3215
    if-eqz v1, :cond_3

    .line 3216
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearSelectedChip()V

    .line 3218
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 3187
    goto :goto_0

    .line 3202
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3206
    :goto_2
    if-ltz v0, :cond_6

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 3207
    invoke-interface {v5, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v7, 0x20

    if-ne v3, v7, :cond_6

    .line 3208
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3210
    :cond_6
    invoke-interface {v5, v4, v0, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1692
    return-void
.end method

.method sanitizeBetween()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2028
    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v2, :cond_0

    .line 2029
    return-void

    .line 2032
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    .line 2033
    if-eqz v2, :cond_5

    array-length v3, v2

    if-lez v3, :cond_5

    .line 2034
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 2036
    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 2037
    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v2, v0

    .line 2040
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 2041
    if-eqz v0, :cond_6

    .line 2042
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 2043
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2044
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_3

    .line 2046
    :cond_2
    return-void

    .line 2048
    :cond_3
    invoke-interface {v1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    .line 2049
    add-int/lit8 v0, v0, 0x1

    .line 2052
    :cond_4
    :goto_0
    if-ltz v0, :cond_5

    if-ltz v2, :cond_5

    if-ge v0, v2, :cond_5

    .line 2053
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2056
    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method sanitizeEnd()V
    .locals 6

    .prologue
    .line 1537
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mPendingChipsCount:I

    if-lez v0, :cond_0

    .line 1538
    return-void

    .line 1541
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 1542
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    .line 1543
    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1545
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getMoreChip()Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    .line 1546
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    if-eqz v0, :cond_3

    .line 1547
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mMoreChip:Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1551
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1552
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1553
    if-le v2, v0, :cond_2

    .line 1555
    const-string/jumbo v3, "RecipientEditTextView"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1556
    const-string/jumbo v3, "RecipientEditTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "There were extra characters after the last tokenizable entry."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1562
    :cond_2
    return-void

    .line 1549
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLastChip()Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected scrollBottomIntoView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 751
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mShouldShrink:Z

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCoords:[I

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->getLocationInWindow([I)V

    .line 756
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getHeight()I

    move-result v0

    .line 757
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCoords:[I

    aget v1, v1, v4

    add-int/2addr v1, v0

    .line 758
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCoords:[I

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 759
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mCoords:[I

    aget v2, v2, v4

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v3

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 760
    if-le v1, v0, :cond_0

    .line 761
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    sub-int v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 764
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 672
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 673
    check-cast p1, Lcom/android/ex/chips/BaseRecipientAdapter;

    .line 674
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$7;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/RecipientEditTextView$7;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->registerUpdateObserver(Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;)V

    .line 721
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->setDropdownChipLayouter(Lcom/android/ex/chips/DropdownChipLayouter;)V

    .line 722
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 1

    .prologue
    .line 480
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setDropDownAnchor(I)V

    .line 481
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDropdownAnchor:Landroid/view/View;

    .line 484
    :cond_0
    return-void
.end method

.method public setDropdownChipLayouter(Lcom/android/ex/chips/DropdownChipLayouter;)V
    .locals 1

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

    .line 440
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-virtual {v0, p0}, Lcom/android/ex/chips/DropdownChipLayouter;->setDeleteListener(Lcom/android/ex/chips/DropdownChipLayouter$ChipDeleteListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-virtual {v0, p0}, Lcom/android/ex/chips/DropdownChipLayouter;->setPermissionRequestDismissedListener(Lcom/android/ex/chips/DropdownChipLayouter$PermissionRequestDismissedListener;)V

    .line 442
    return-void
.end method

.method public setOrientation(Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mOrientation:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    .line 243
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 1

    .prologue
    .line 1675
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 1676
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1677
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1682
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1683
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .prologue
    .line 4014
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    .line 4016
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRequiresShrinkWhenNotGone:Z

    if-eqz v0, :cond_0

    .line 4017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mRequiresShrinkWhenNotGone:Z

    .line 4018
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4020
    :cond_0
    return-void
.end method
