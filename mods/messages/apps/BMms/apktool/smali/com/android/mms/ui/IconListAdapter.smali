.class public Lcom/android/mms/ui/IconListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/IconListAdapter$IconListItem;,
        Lcom/android/mms/ui/IconListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field private mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    const v0, 0x7f040023

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 68
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    new-instance v0, Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/IconListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/mms/ui/IconListAdapter;->mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter;->mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter;->mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter;->mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/android/mms/ui/IconListAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/IconListAdapter$IconListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getResource()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    return-object p2

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    iput-object v0, p0, Lcom/android/mms/ui/IconListAdapter;->mViewHolder:Lcom/android/mms/ui/IconListAdapter$ViewHolder;

    goto :goto_0
.end method
