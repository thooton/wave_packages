.class Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientsEditorTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/RecipientsEditor;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/RecipientsEditor;Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 3

    .prologue
    .line 582
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 585
    :goto_0
    if-ge p2, v0, :cond_2

    .line 586
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    .line 587
    :cond_0
    return p2

    .line 589
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 593
    :cond_2
    return v0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4

    .prologue
    const/16 v3, 0x3b

    const/16 v2, 0x2c

    .line 561
    if-lez p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_1

    .line 562
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 565
    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 566
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 561
    goto :goto_0

    .line 568
    :cond_2
    :goto_1
    if-ge v0, p2, :cond_3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 572
    :cond_3
    :goto_2
    if-ge v0, p2, :cond_4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3000

    if-ne v1, v2, :cond_4

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 576
    :cond_4
    return v0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 624
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 625
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 629
    :goto_0
    add-int/lit8 v0, v4, 0x1

    if-ge v1, v0, :cond_3

    .line 631
    if-eq v1, v4, :cond_0

    invoke-interface {v3, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_1

    .line 632
    :cond_0
    if-le v1, v2, :cond_4

    .line 633
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, v2, v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->-wrap1(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, v2, v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->-wrap0(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v0

    .line 643
    if-le v0, v1, :cond_4

    .line 648
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 650
    :goto_2
    if-ge v0, v4, :cond_2

    invoke-interface {v3, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 631
    :cond_1
    const/16 v6, 0x3b

    if-eq v0, v6, :cond_0

    .line 656
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    :goto_3
    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 631
    goto :goto_3

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->-set1(Lcom/android/mms/ui/RecipientsEditor;I)I

    .line 661
    return-object v5

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public getNumbersString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 665
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 666
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 670
    :goto_0
    add-int/lit8 v0, v4, 0x1

    if-ge v1, v0, :cond_3

    .line 672
    if-eq v1, v4, :cond_0

    invoke-interface {v3, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_1

    .line 673
    :cond_0
    if-le v1, v2, :cond_5

    .line 674
    const-string/jumbo v0, "\'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v6}, Lcom/android/mms/ui/RecipientsEditor;->-get0(Lcom/android/mms/ui/RecipientsEditor;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v3, v2, v1, v6}, Lcom/android/mms/ui/RecipientsEditor;->-wrap1(Landroid/text/Spanned;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "\',"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v0}, Lcom/android/mms/ui/RecipientsEditor;->-get0(Lcom/android/mms/ui/RecipientsEditor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, v2, v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->-wrap0(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v0

    .line 683
    if-le v0, v1, :cond_5

    .line 688
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 690
    :goto_2
    if-ge v0, v4, :cond_2

    invoke-interface {v3, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 672
    :cond_1
    const/16 v6, 0x3b

    if-eq v0, v6, :cond_0

    .line 696
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    :goto_3
    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 672
    goto :goto_3

    .line 700
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 598
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 600
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 601
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 605
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_2

    .line 606
    :cond_1
    return-object p1

    .line 610
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v2}, Lcom/android/mms/ui/RecipientsEditor;->-get1(Lcom/android/mms/ui/RecipientsEditor;)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    .line 612
    new-instance v4, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p1

    .line 613
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 614
    const-class v3, Ljava/lang/Object;

    move v5, v1

    .line 613
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 615
    return-object v4

    .line 617
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
