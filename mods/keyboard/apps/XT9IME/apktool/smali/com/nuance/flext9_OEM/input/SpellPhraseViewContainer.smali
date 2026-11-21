.class public Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;
.super Landroid/widget/LinearLayout;
.source "SpellPhraseViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

.field private mParent:Lcom/nuance/flext9_OEM/input/InputView;

.field private mPhraseButtonLeft:Landroid/view/View;

.field private mPhraseButtonLeftLayout:Landroid/view/View;

.field private mPhraseButtonRight:Landroid/view/View;

.field private mPhraseButtonRightLayout:Landroid/view/View;

.field private mPhraseCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

.field private mPhraseLayout:Landroid/view/View;

.field private mSpellButtonLeft:Landroid/view/View;

.field private mSpellButtonLeftLayout:Landroid/view/View;

.field private mSpellButtonRight:Landroid/view/View;

.field private mSpellButtonRightLayout:Landroid/view/View;

.field private mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

.field private mSpellLayout:Landroid/view/View;

.field private mToolBarFrame:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getPhraseWordListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    return-object v0
.end method

.method public getSpellWordListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    return-object v0
.end method

.method public hideSpellLayout()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->clearKeyOffsets()V

    .line 76
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public initViews(Lcom/nuance/flext9_OEM/input/KeyboardViewEx;)V
    .locals 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    .line 42
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-nez v0, :cond_5

    .line 43
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    .line 44
    const v0, 0x7f0d0020

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    .line 45
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 49
    :cond_0
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    .line 50
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    :cond_1
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/SpellListView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    .line 55
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/SpellListView;->setVisibility(I)V

    .line 59
    :cond_2
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    const v1, 0x7f0d0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonLeftLayout:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    const v1, 0x7f0d0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    :cond_3
    const v0, 0x7f0d002a

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonRightLayout:Landroid/view/View;

    .line 66
    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    :cond_4
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    .line 72
    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 167
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 169
    :goto_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/flext9_OEM/input/SpellListView;->setArrowWidth(II)V

    .line 172
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellListView;->scrollNext()V

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellListView;->scrollPrev()V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollNext()V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollPrev()V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 82
    const-string/jumbo v0, "SpellPharaseViewContainer"

    const-string/jumbo v3, "requestLayout"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/SpellListView;->getWidth()I

    move-result v0

    .line 86
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/SpellListView;->computeHorizontalScrollRange()I

    move-result v5

    .line 87
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/SpellListView;->getScrollX()I

    move-result v6

    .line 88
    if-lez v6, :cond_5

    move v3, v1

    .line 91
    :goto_0
    add-int/2addr v6, v0

    if-ge v6, v5, :cond_6

    if-lez v0, :cond_6

    move v0, v1

    .line 92
    :goto_1
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellCandidates:Lcom/nuance/flext9_OEM/input/SpellListView;

    invoke-virtual {v5}, Lcom/nuance/flext9_OEM/input/SpellListView;->getListSize()I

    move-result v5

    if-lez v5, :cond_9

    .line 93
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mKeyboardView:Lcom/nuance/flext9_OEM/input/KeyboardViewEx;

    invoke-virtual {v5}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->clearKeyOffsets()V

    .line 95
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellLayout:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_0
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 101
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    if-eqz v3, :cond_7

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    if-eqz v0, :cond_8

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getWidth()I

    move-result v3

    .line 116
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->computeHorizontalScrollRange()I

    move-result v5

    .line 117
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getScrollX()I

    move-result v6

    .line 118
    if-lez v6, :cond_a

    move v0, v1

    .line 119
    :goto_5
    add-int/2addr v3, v6

    if-ge v3, v5, :cond_b

    .line 120
    :goto_6
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonLeftLayout:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 121
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonLeftLayout:Landroid/view/View;

    if-eqz v0, :cond_c

    move v0, v2

    :goto_7
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonRightLayout:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mPhraseButtonRightLayout:Landroid/view/View;

    if-eqz v1, :cond_d

    :goto_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_4
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 129
    return-void

    :cond_5
    move v3, v2

    .line 88
    goto :goto_0

    :cond_6
    move v0, v2

    .line 91
    goto :goto_1

    :cond_7
    move v3, v4

    .line 101
    goto :goto_2

    :cond_8
    move v0, v4

    .line 104
    goto :goto_3

    .line 108
    :cond_9
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonLeftLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mSpellButtonRightLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_a
    move v0, v2

    .line 118
    goto :goto_5

    :cond_b
    move v1, v2

    .line 119
    goto :goto_6

    :cond_c
    move v0, v4

    .line 121
    goto :goto_7

    :cond_d
    move v2, v4

    .line 124
    goto :goto_8
.end method

.method public setParent(Lcom/nuance/flext9_OEM/input/InputView;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/SpellPhraseViewContainer;->mParent:Lcom/nuance/flext9_OEM/input/InputView;

    .line 160
    return-void
.end method
