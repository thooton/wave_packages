.class public Lcom/android/mms/rcs/RcsSelectionMenu;
.super Ljava/lang/Object;
.source "RcsSelectionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private final mPopupList:Lcom/android/mms/ui/PopupList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mButton:Landroid/widget/Button;

    .line 44
    new-instance v0, Lcom/android/mms/ui/PopupList;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mButton:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Lcom/android/mms/ui/PopupList;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    .line 45
    iget-object v0, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    const v1, 0x7f07030e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/PopupList;->addItem(ILjava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/PopupList;->setOnPopupItemClickListener(Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    invoke-virtual {v0}, Lcom/android/mms/ui/PopupList;->dismiss()V

    .line 57
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    invoke-virtual {v0}, Lcom/android/mms/ui/PopupList;->show()V

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public updateSelectAllMode(Z)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mPopupList:Lcom/android/mms/ui/PopupList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/PopupList;->findItem(I)Lcom/android/mms/ui/PopupList$Item;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/mms/rcs/RcsSelectionMenu;->mContext:Landroid/content/Context;

    .line 63
    if-eqz p1, :cond_1

    const v0, 0x7f07030f

    .line 62
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/PopupList$Item;->setTitle(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void

    .line 63
    :cond_1
    const v0, 0x7f07030e

    goto :goto_0
.end method
