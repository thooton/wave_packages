.class public Lcom/android/mms/ui/SelectableCopyActivity;
.super Landroid/app/Activity;
.source "SelectableCopyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f04005e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SelectableCopyActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectableCopyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v0, "selectable_copy_text"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    .line 57
    :goto_0
    const v0, 0x7f0f0163

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SelectableCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectableCopyActivity;->finish()V

    .line 63
    return-void
.end method
