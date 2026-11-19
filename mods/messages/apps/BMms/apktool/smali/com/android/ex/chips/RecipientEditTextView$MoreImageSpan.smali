.class Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;
.super Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreImageSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 3795
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    .line 3796
    invoke-direct {p0, p2}, Lcom/android/ex/chips/recipientchip/ReplacementDrawableSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 3797
    invoke-static {p1}, Lcom/android/ex/chips/RecipientEditTextView;->-get14(Lcom/android/ex/chips/RecipientEditTextView;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$MoreImageSpan;->setExtraMargin(F)V

    .line 3798
    return-void
.end method
