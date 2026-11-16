.class Lcom/android/ex/chips/RecipientEditTextView$7;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 677
    if-nez p1, :cond_3

    move v1, v0

    .line 681
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 682
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->scrollBottomIntoView()V

    .line 685
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->-get8(Lcom/android/ex/chips/RecipientEditTextView;)I

    move-result v2

    if-nez v2, :cond_0

    .line 687
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    .line 688
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3, v1}, Lcom/android/ex/chips/RecipientEditTextView;->getSuggestionDropdownOpenedVerbalization(I)Ljava/lang/String;

    move-result-object v3

    .line 687
    invoke-static {v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->-wrap7(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)V

    .line 693
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 696
    :cond_1
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->-get8(Lcom/android/ex/chips/RecipientEditTextView;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 699
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 700
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 701
    sget v4, Lcom/android/ex/chips/R$string;->accessbility_suggestion_dropdown_closed:I

    .line 700
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->-wrap7(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)V

    .line 704
    :cond_2
    if-eqz p1, :cond_4

    .line 705
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 706
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getEntryType()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 718
    :goto_1
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->-set2(Lcom/android/ex/chips/RecipientEditTextView;I)I

    .line 719
    return-void

    .line 677
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 712
    :cond_4
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get10(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->-get7(Lcom/android/ex/chips/RecipientEditTextView;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 713
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->-get18(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 714
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->-get18(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->-get7(Lcom/android/ex/chips/RecipientEditTextView;)[I

    move-result-object v3

    aget v3, v3, v5

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->-get10(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 715
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEditTextView;->getDropDownVerticalOffset()I

    move-result v3

    .line 714
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->setDropDownHeight(I)V

    goto :goto_1
.end method
