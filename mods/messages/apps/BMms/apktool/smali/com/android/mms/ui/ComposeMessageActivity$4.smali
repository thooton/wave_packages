.class Lcom/android/mms/ui/ComposeMessageActivity$4;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 1646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x1

    .line 1670
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap10(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1671
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1672
    const-string/jumbo v1, "afterTextChanged called with invisible mRecipientsEditor"

    .line 1671
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1675
    const-string/jumbo v0, "Mms"

    .line 1676
    const-string/jumbo v1, "RecipientsWatcher: afterTextChanged called with invisible mRecipientsEditor"

    .line 1675
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    return-void

    .line 1679
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap15(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v0

    if-gt v0, v1, :cond_4

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 1680
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get36(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->containsMultiContacts(Landroid/text/Spanned;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1679
    if-eqz v0, :cond_4

    .line 1681
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get9(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1682
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get38(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1688
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get36(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v3

    .line 1689
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Ljava/util/List;)V

    .line 1690
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get36(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->containsEmail()Z

    move-result v4

    .line 1692
    if-eqz v4, :cond_7

    move v0, v1

    .line 1695
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1696
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    move v2, v1

    .line 1697
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get20(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get20(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1698
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 1701
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap29(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1705
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get20(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1706
    return-void

    .line 1684
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get9(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1685
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get38(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1709
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get37(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1712
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get37(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap90(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 1713
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->-set14(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    .line 1719
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap85(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1720
    return-void

    .line 1715
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap89(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/text/Editable;)V

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1649
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$4;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onUserInteraction()V

    .line 1658
    return-void
.end method
