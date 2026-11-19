.class Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

.field final synthetic val$recipients:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    .line 3631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public matchesFound(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3635
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3636
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3638
    if-eqz v0, :cond_0

    .line 3639
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v4

    .line 3638
    invoke-static {v4, v5}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3640
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 3642
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v4, v4, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    .line 3643
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-wrap6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    .line 3642
    invoke-static {v4, v0}, Lcom/android/ex/chips/RecipientEditTextView;->-wrap2(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 3646
    :goto_1
    if-eqz v0, :cond_1

    .line 3647
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    invoke-static {v4, v0}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->-wrap0(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3640
    goto :goto_1

    .line 3649
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3652
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->-wrap1(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V

    .line 3653
    return-void
.end method

.method public matchesNotFound(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3658
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3660
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3661
    if-eqz v0, :cond_1

    .line 3662
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v4

    .line 3661
    invoke-static {v4, v5}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3663
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v3, v3, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 3665
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v3

    .line 3664
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3666
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->-wrap0(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3668
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3671
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3675
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-static {v0, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->-wrap1(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V

    .line 3676
    return-void
.end method
