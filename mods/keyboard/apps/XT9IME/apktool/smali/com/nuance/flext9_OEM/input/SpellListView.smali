.class public Lcom/nuance/flext9_OEM/input/SpellListView;
.super Lcom/nuance/flext9_OEM/input/CandidatesListView;
.source "SpellListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/SpellListView$1;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mLeftArrowWidth:I

.field private mRightArrowWidth:I

.field mTouchedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/CandidatesListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lcom/nuance/flext9_OEM/input/SpellListView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/SpellListView$1;-><init>(Lcom/nuance/flext9_OEM/input/SpellListView;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mHandler:Landroid/os/Handler;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mTouchedIndex:I

    .line 45
    iput v1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mLeftArrowWidth:I

    .line 46
    iput v1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mRightArrowWidth:I

    .line 47
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->clear()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mTouchedIndex:I

    .line 70
    iput v1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mLeftArrowWidth:I

    .line 71
    iput v1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mRightArrowWidth:I

    .line 72
    return-void
.end method

.method public getListSize()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public scrollToSelection()V
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SpellListView;->getWidth()I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mWordX:[I

    iget v2, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mSelectedIndex:I

    aget v1, v1, v2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SpellListView;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mLeftArrowWidth:I

    add-int/2addr v1, v2

    .line 89
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mWordWidth:[I

    iget v3, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mSelectedIndex:I

    aget v2, v2, v3

    add-int/2addr v2, v1

    .line 90
    if-nez v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iget v3, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mLeftArrowWidth:I

    if-ge v1, v3, :cond_2

    .line 94
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mWordX:[I

    iget v1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mSelectedIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellListView;->updateScrollPosition(I)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    iget v1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mLeftArrowWidth:I

    add-int/2addr v1, v0

    if-le v2, v1, :cond_1

    .line 97
    iget v1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mLeftArrowWidth:I

    if-nez v1, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SpellListView;->getScrollX()I

    move-result v1

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    iget v1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mRightArrowWidth:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellListView;->updateScrollPosition(I)V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SpellListView;->getScrollX()I

    move-result v1

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    iget v1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mLeftArrowWidth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SpellListView;->updateScrollPosition(I)V

    goto :goto_0
.end method

.method public setArrowWidth(II)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mLeftArrowWidth:I

    .line 82
    iput p2, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mRightArrowWidth:I

    .line 83
    return-void
.end method

.method protected touchWord(ILjava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mTouchedIndex:I

    .line 52
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 53
    return-void
.end method

.method protected trySelect()V
    .locals 3

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mScrolled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mOnWordSelectActionListener:Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mTouchedIndex:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, p0}, Lcom/nuance/flext9_OEM/input/CandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 60
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mTouchedIndex:I

    if-ltz v0, :cond_1

    .line 61
    iget v0, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mTouchedIndex:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/SpellListView;->mSelectedIndex:I

    .line 62
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SpellListView;->scrollToSelection()V

    .line 64
    :cond_1
    return-void
.end method
