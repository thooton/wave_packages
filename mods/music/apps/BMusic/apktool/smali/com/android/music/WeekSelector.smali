.class public Lcom/android/music/WeekSelector;
.super Landroid/app/Activity;
.source "WeekSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/WeekSelector$1;
    }
.end annotation


# instance fields
.field private mListener:Landroid/view/View$OnClickListener;

.field mWeeks:Lcom/android/music/VerticalTextSpinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    new-instance v0, Lcom/android/music/WeekSelector$1;

    invoke-direct {v0, p0}, Lcom/android/music/WeekSelector$1;-><init>(Lcom/android/music/WeekSelector;)V

    iput-object v0, p0, Lcom/android/music/WeekSelector;->mListener:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/WeekSelector;->setVolumeControlStream(I)V

    .line 36
    invoke-virtual {p0, v3}, Lcom/android/music/WeekSelector;->requestWindowFeature(I)Z

    .line 37
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/android/music/WeekSelector;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/music/WeekSelector;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    .line 39
    const/4 v2, -0x2

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 41
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/android/music/WeekSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/music/VerticalTextSpinner;

    iput-object v0, p0, Lcom/android/music/WeekSelector;->mWeeks:Lcom/android/music/VerticalTextSpinner;

    .line 42
    iget-object v0, p0, Lcom/android/music/WeekSelector;->mWeeks:Lcom/android/music/VerticalTextSpinner;

    invoke-virtual {p0}, Lcom/android/music/WeekSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f090000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/VerticalTextSpinner;->setItems([Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/music/WeekSelector;->mWeeks:Lcom/android/music/VerticalTextSpinner;

    invoke-virtual {v0, v3}, Lcom/android/music/VerticalTextSpinner;->setWrapAround(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/music/WeekSelector;->mWeeks:Lcom/android/music/VerticalTextSpinner;

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Lcom/android/music/VerticalTextSpinner;->setScrollInterval(J)V

    .line 46
    const-string/jumbo v0, "numweeks"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 47
    if-eqz p1, :cond_0

    const-string/jumbo v1, "numweeks"

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/android/music/WeekSelector;->mWeeks:Lcom/android/music/VerticalTextSpinner;

    invoke-virtual {v1, v0}, Lcom/android/music/VerticalTextSpinner;->setSelectedPos(I)V

    .line 50
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/android/music/WeekSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/music/WeekSelector;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/android/music/WeekSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    new-instance v1, Lcom/android/music/WeekSelector$2;

    invoke-direct {v1, p0}, Lcom/android/music/WeekSelector$2;-><init>(Lcom/android/music/WeekSelector;)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void

    .line 47
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 64
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/android/music/WeekSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "numweeks"

    iget-object v1, p0, Lcom/android/music/WeekSelector;->mWeeks:Lcom/android/music/VerticalTextSpinner;

    invoke-virtual {v1}, Lcom/android/music/VerticalTextSpinner;->getCurrentSelectedPos()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    return-void
.end method
