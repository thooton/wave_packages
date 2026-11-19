.class public Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;
.super Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;
.source "VisibleRecipientChip.java"

# interfaces
.implements Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;


# instance fields
.field private final mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

.field private mWarningIconBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mWarningIconBounds:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-direct {v0, p2}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;-><init>(Lcom/android/ex/chips/RecipientEntry;)V

    iput-object v0, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->getContactId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEntry()Lcom/android/ex/chips/RecipientEntry;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWarningIconBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mWarningIconBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->isSelected()Z

    move-result v0

    return v0
.end method

.method public setOriginalText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->setSelected(Z)V

    .line 41
    return-void
.end method

.method public setWarningIconBounds(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mWarningIconBounds:Landroid/graphics/Rect;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/VisibleRecipientChip;->mDelegate:Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
