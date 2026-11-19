.class public Lcom/android/mms/ui/SelectionMenu;
.super Ljava/lang/Object;
.source "SelectionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private mCheckedCount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mExpandImageView:Landroid/widget/ImageView;

.field public mExpandLessDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPopupList:Lcom/android/mms/ui/PopupList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;Landroid/widget/ImageView;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/SelectionMenu;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/mms/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    .line 55
    iput-object p4, p0, Lcom/android/mms/ui/SelectionMenu;->mExpandImageView:Landroid/widget/ImageView;

    .line 56
    new-instance v0, Lcom/android/mms/ui/PopupList;

    iget-object v1, p0, Lcom/android/mms/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SelectionMenu;->mExpandImageView:Landroid/widget/ImageView;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/mms/ui/PopupList;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    iget-object v1, p0, Lcom/android/mms/ui/SelectionMenu;->mCheckedCount:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/PopupList;->addItem(ILjava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    const v1, 0x7f07030e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/PopupList;->addItem(ILjava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/PopupList;->setOnPopupItemClickListener(Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mExpandLessDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    invoke-virtual {v0}, Lcom/android/mms/ui/PopupList;->dismiss()V

    .line 79
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mExpandImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mExpandImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/SelectionMenu;->mExpandLessDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    invoke-virtual {v0}, Lcom/android/mms/ui/PopupList;->show()V

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mCheckedCount:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public updateCheckedCount()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/PopupList;->findItem(I)Lcom/android/mms/ui/PopupList$Item;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/mms/ui/SelectionMenu;->mCheckedCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/PopupList$Item;->setTitle(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public updateSelectAllMode(Z)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/SelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/PopupList;->findItem(I)Lcom/android/mms/ui/PopupList$Item;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/mms/ui/SelectionMenu;->mContext:Landroid/content/Context;

    .line 85
    if-eqz p1, :cond_1

    const v0, 0x7f07030f

    .line 84
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/PopupList$Item;->setTitle(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void

    .line 85
    :cond_1
    const v0, 0x7f07030e

    goto :goto_0
.end method
