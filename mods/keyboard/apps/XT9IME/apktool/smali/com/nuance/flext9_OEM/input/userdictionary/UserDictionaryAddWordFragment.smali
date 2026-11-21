.class public Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;
.super Landroid/app/Fragment;
.source "UserDictionaryAddWordFragment.java"


# static fields
.field private static final OPTIONS_MENU_ADD:I = 0x1

.field private static final OPTIONS_MENU_DELETE:I = 0x2


# instance fields
.field private mContents:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 49
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f09018e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 64
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->setRetainInstance(Z)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 91
    const/4 v0, 0x1

    .line 92
    const v1, 0x7f09017b

    .line 91
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 92
    const v1, 0x7f020047

    .line 91
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 93
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 95
    const/4 v0, 0x2

    .line 96
    const v1, 0x7f09018c

    .line 95
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    const v1, 0x108003c

    .line 95
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 97
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    const v0, 0x7f030029

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 74
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mContents:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mContents:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 83
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mContents:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;

    .line 82
    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mContents:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 112
    return v2

    .line 114
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mContents:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    .line 116
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 117
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 118
    return v2

    .line 120
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 132
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->mContents:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    .line 135
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 126
    return-void
.end method
