.class public Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;
.super Landroid/text/style/ReplacementSpan;
.source "InvisibleRecipientChip.java"

# interfaces
.implements Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;


# static fields
.field private static final NULL_RECTANGLE:Landroid/graphics/Rect;


# instance fields
.field private final mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;->NULL_RECTANGLE:Landroid/graphics/Rect;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/ex/chips/RecipientEntry;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 37
    new-instance v0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-direct {v0, p1}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;-><init>(Lcom/android/ex/chips/RecipientEntry;)V

    iput-object v0, p0, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;->NULL_RECTANGLE:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->getContactId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEntry()Lcom/android/ex/chips/RecipientEntry;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getWarningIconBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;->NULL_RECTANGLE:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->isSelected()Z

    move-result v0

    return v0
.end method

.method public setOriginalText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/InvisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->setSelected(Z)V

    .line 43
    return-void
.end method
