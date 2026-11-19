.class Lcom/android/ex/chips/RecipientEditTextView$11;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic val$spannable:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/Spannable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$11;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$11;->val$spannable:Landroid/text/Spannable;

    .line 2706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 2

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$11;->val$spannable:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 2711
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$11;->val$spannable:Landroid/text/Spannable;

    invoke-interface {v1, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 2712
    if-ge v0, v1, :cond_0

    .line 2713
    const/4 v0, -0x1

    return v0

    .line 2714
    :cond_0
    if-le v0, v1, :cond_1

    .line 2715
    const/4 v0, 0x1

    return v0

    .line 2717
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 2708
    check-cast p1, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    check-cast p2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView$11;->compare(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    return v0
.end method
