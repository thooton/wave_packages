.class public Lcom/nuance/flext9_OEM/input/WordListViewContainer;
.super Landroid/widget/LinearLayout;
.source "WordListViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static final TAG:Ljava/lang/String; = "XT9IME.WordListViewContainer"


# instance fields
.field private mButtonLeft:Landroid/view/View;

.field private mButtonLeftLayout:Landroid/view/View;

.field private mButtonRight:Landroid/view/View;

.field private mButtonRightLayout:Landroid/view/View;

.field private mCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonLeft:Landroid/view/View;

    .line 22
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonRight:Landroid/view/View;

    .line 23
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonLeftLayout:Landroid/view/View;

    .line 24
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonRightLayout:Landroid/view/View;

    .line 25
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    .line 29
    return-void
.end method


# virtual methods
.method public initViews()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    if-nez v0, :cond_2

    .line 34
    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonLeftLayout:Landroid/view/View;

    .line 35
    const v0, 0x7f0d001b

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonLeft:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39
    :cond_0
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonRightLayout:Landroid/view/View;

    .line 40
    const v0, 0x7f0d001e

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonRight:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonRight:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    :cond_1
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    .line 52
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollNext()V

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/WordListViewContainer;->mCandidates:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->scrollPrev()V

    goto :goto_0
.end method
