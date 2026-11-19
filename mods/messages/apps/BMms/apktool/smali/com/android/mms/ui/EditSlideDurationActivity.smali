.class public Lcom/android/mms/ui/EditSlideDurationActivity;
.super Landroid/app/Activity;
.source "EditSlideDurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/EditSlideDurationActivity$1;,
        Lcom/android/mms/ui/EditSlideDurationActivity$2;
    }
.end annotation


# instance fields
.field private mCurSlide:I

.field private mDone:Landroid/widget/Button;

.field private mDur:Landroid/widget/EditText;

.field private mLabel:Landroid/widget/TextView;

.field private final mOnDoneClickListener:Landroid/view/View$OnClickListener;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mState:Landroid/os/Bundle;

.field private mTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    new-instance v0, Lcom/android/mms/ui/EditSlideDurationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditSlideDurationActivity$1;-><init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 136
    new-instance v0, Lcom/android/mms/ui/EditSlideDurationActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditSlideDurationActivity$2;-><init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnDoneClickListener:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method

.method private notifyUser(I)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 167
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    return-void
.end method


# virtual methods
.method protected editDone()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 154
    if-gtz v0, :cond_0

    .line 155
    const v0, 0x7f0701a5

    invoke-direct {p0, v0}, Lcom/android/mms/ui/EditSlideDurationActivity;->notifyUser(I)V

    .line 156
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const v0, 0x7f0701a4

    invoke-direct {p0, v0}, Lcom/android/mms/ui/EditSlideDurationActivity;->notifyUser(I)V

    .line 152
    return-void

    .line 160
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/EditSlideDurationActivity;->setResult(ILandroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideDurationActivity;->finish()V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/EditSlideDurationActivity;->requestWindowFeature(I)Z

    .line 65
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditSlideDurationActivity;->setContentView(I)V

    .line 68
    if-nez p1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/android/mms/ui/EditSlideDurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "slide_index"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    .line 72
    const-string/jumbo v1, "slide_total"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    .line 73
    const-string/jumbo v1, "dur"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    .line 83
    :goto_0
    const v0, 0x7f0f0092

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditSlideDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mLabel:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mLabel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f07019f

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/EditSlideDurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v0, 0x7f0f0093

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditSlideDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 92
    const v0, 0x7f0f0094

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditSlideDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDone:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDone:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mOnDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void

    .line 75
    :cond_1
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string/jumbo v1, "slide_index"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string/jumbo v1, "slide_total"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string/jumbo v1, "dur"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    .line 105
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string/jumbo v1, "slide_index"

    iget v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mCurSlide:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string/jumbo v1, "slide_total"

    iget v2, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mTotal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mDur:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    const-string/jumbo v2, "dur"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string/jumbo v0, "state"

    iget-object v1, p0, Lcom/android/mms/ui/EditSlideDurationActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    const/4 v0, 0x5

    goto :goto_0
.end method
