.class public Lcom/android/music/DeleteItems;
.super Landroid/app/Activity;
.source "DeleteItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/DeleteItems$1;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mButtonClicked:Landroid/view/View$OnClickListener;

.field private mItemList:[J

.field private mPrompt:Landroid/widget/TextView;

.field private mValue:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/music/DeleteItems;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/music/DeleteItems;->mItemList:[J

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/DeleteItems;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/music/DeleteItems;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    new-instance v0, Lcom/android/music/DeleteItems$1;

    invoke-direct {v0, p0}, Lcom/android/music/DeleteItems$1;-><init>(Lcom/android/music/DeleteItems;)V

    iput-object v0, p0, Lcom/android/music/DeleteItems;->mButtonClicked:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0b001d

    const/4 v1, -0x2

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/music/DeleteItems;->finish()V

    .line 43
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/DeleteItems;->setVolumeControlStream(I)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/DeleteItems;->requestWindowFeature(I)Z

    .line 46
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/android/music/DeleteItems;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/music/DeleteItems;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 50
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/android/music/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/DeleteItems;->mPrompt:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/android/music/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/music/DeleteItems;->mButton:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/android/music/DeleteItems;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/music/DeleteItems;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/music/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    new-instance v1, Lcom/android/music/DeleteItems$2;

    invoke-direct {v1, p0}, Lcom/android/music/DeleteItems$2;-><init>(Lcom/android/music/DeleteItems;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/music/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 62
    invoke-virtual {p0}, Lcom/android/music/DeleteItems;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    const-string/jumbo v2, "items"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/DeleteItems;->mItemList:[J

    .line 65
    const-string/jumbo v2, "playlist"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/DeleteItems;->mValue:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/music/DeleteItems;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    invoke-static {p0}, Lcom/android/music/MusicUtils;->TelephonyIsInProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/music/DeleteItems;->finish()V

    .line 88
    :cond_0
    return-void
.end method
