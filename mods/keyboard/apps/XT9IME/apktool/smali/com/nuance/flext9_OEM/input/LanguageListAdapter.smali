.class public Lcom/nuance/flext9_OEM/input/LanguageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LanguageListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mLanguageView:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/InputMethods;Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->build(Lcom/nuance/flext9_OEM/input/InputMethods;Lcom/nuance/flext9_OEM/input/InputFieldInfo;)I

    .line 25
    return-void
.end method

.method private build(Lcom/nuance/flext9_OEM/input/InputMethods;Lcom/nuance/flext9_OEM/input/InputFieldInfo;)I
    .locals 12

    .prologue
    const v11, 0x109000f

    const/high16 v10, -0x1000000

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    .line 30
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v5

    .line 31
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputMethods;->getAlphaInputLanguageCyclingList()Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 34
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 36
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v11, v9, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 39
    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 41
    invoke-virtual {v2, v10}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 42
    iget-object v8, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    invoke-virtual {v5}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v8

    if-ne v1, v8, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 44
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v4

    .line 43
    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/InputMethods;->getChineseInputModeCyclingList()Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v4

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 55
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 57
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001e

    invoke-virtual {v1, v2, v9, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 60
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    move v2, v1

    .line 65
    :goto_3
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v11, v9, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 66
    invoke-virtual {v1, v10}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 67
    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 68
    iget-object v7, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v5, v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_2

    :cond_4
    move v2, v1

    .line 55
    goto :goto_3

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public RemoveItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method
