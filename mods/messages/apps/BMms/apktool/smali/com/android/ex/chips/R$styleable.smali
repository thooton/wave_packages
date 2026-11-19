.class public final Lcom/android/ex/chips/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final RecipientEditTextView:[I

.field public static final RecipientEditTextView_avatarPosition:I = 0x0

.field public static final RecipientEditTextView_chipBackground:I = 0x1

.field public static final RecipientEditTextView_chipBackgroundPressed:I = 0x2

.field public static final RecipientEditTextView_chipFontSize:I = 0x4

.field public static final RecipientEditTextView_chipHeight:I = 0x5

.field public static final RecipientEditTextView_chipPadding:I = 0x6

.field public static final RecipientEditTextView_invalidChipBackground:I = 0x8

.field public static final RecipientEditTextView_unselectedChipBackgroundColor:I = 0xa

.field public static final RecipientEditTextView_unselectedChipTextColor:I = 0xb

.field public static final maxHeightScrollView:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3452
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView:[I

    .line 3615
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 3616
    const v1, 0x1010120

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 3615
    sput-object v0, Lcom/android/ex/chips/R$styleable;->maxHeightScrollView:[I

    .line 3419
    return-void

    .line 3452
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
