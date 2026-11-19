.class Lcom/android/ex/chips/RecipientEditTextView$4;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
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
    .line 385
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get4(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 386
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get19(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {v0, p3}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getRecipientEntry(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/chips/RecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 388
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get11(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/ex/chips/RecipientEditTextView;->-get0()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->-get4(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->-get11(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 391
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 392
    return-void
.end method
