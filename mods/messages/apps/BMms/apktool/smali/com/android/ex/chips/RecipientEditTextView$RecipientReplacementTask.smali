.class Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;
.super Landroid/os/AsyncTask;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method static synthetic -wrap0(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->processReplacements(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 3561
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method

.method private createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3564
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get16(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3565
    return-object v3

    .line 3567
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/ex/chips/RecipientEditTextView;->-wrap3(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;Z)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 3568
    :catch_0
    move-exception v0

    .line 3569
    const-string/jumbo v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3570
    return-object v3
.end method

.method private processReplacements(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3683
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3684
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$2;-><init>(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V

    .line 3732
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 3733
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3738
    :cond_0
    :goto_0
    return-void

    .line 3735
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->-get11(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3609
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3611
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get13(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3612
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get13(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->cancel(Z)Z

    .line 3618
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3619
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 3620
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3621
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get12(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3622
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get12(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3624
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3625
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3626
    if-eqz v0, :cond_2

    .line 3627
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/ex/chips/RecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3630
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getAdapter()Lcom/android/ex/chips/BaseRecipientAdapter;

    move-result-object v0

    .line 3631
    new-instance v3, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;

    invoke-direct {v3, p0, v1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;-><init>(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->getMatchingRecipients(Ljava/util/ArrayList;Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;)V

    .line 3678
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3574
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 3579
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3580
    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3588
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    .line 3589
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3590
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get12(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3591
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get12(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3595
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3597
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 3598
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3599
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 3600
    invoke-interface {v0}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3602
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3606
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->processReplacements(Ljava/util/List;Ljava/util/List;)V

    .line 3607
    return-void
.end method
