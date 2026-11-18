.class public Lcom/android/music/RenameDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "RenameDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/RenameDialogBuilder$OnPositiveListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomLayout:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mInfoLayout:Landroid/view/View;

.field private mInfoText:Landroid/widget/TextView;

.field private mProfileName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/music/RenameDialogBuilder;Landroid/app/AlertDialog;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/music/RenameDialogBuilder;->checkFileName(Landroid/app/AlertDialog;Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/music/RenameDialogBuilder;Lcom/android/music/RenameDialogBuilder$OnPositiveListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/RenameDialogBuilder;->onClickPositiveButton(Lcom/android/music/RenameDialogBuilder$OnPositiveListener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p1, p0, Lcom/android/music/RenameDialogBuilder;->mContext:Landroid/content/Context;

    .line 67
    if-eqz p2, :cond_0

    .line 68
    iput-object p2, p0, Lcom/android/music/RenameDialogBuilder;->mProfileName:Ljava/lang/String;

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/android/music/RenameDialogBuilder;->initCustomLayout()V

    .line 71
    return-void
.end method

.method private checkFileName(Landroid/app/AlertDialog;Landroid/text/Editable;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 133
    :goto_0
    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x18

    if-lt v3, v4, :cond_5

    move v3, v1

    .line 136
    :goto_1
    iget-object v4, p0, Lcom/android/music/RenameDialogBuilder;->mProfileName:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/music/RenameDialogBuilder;->mProfileName:Ljava/lang/String;

    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    .line 143
    :goto_2
    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-eqz v3, :cond_8

    .line 144
    :cond_0
    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lcom/android/music/RenameDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f05000b

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 149
    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mInfoText:Landroid/widget/TextView;

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    :cond_1
    if-eqz v3, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mInfoText:Landroid/widget/TextView;

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    :cond_2
    if-eqz v4, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mInfoText:Landroid/widget/TextView;

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 165
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v2

    .line 128
    goto :goto_0

    :cond_5
    move v3, v2

    .line 133
    goto :goto_1

    .line 139
    :cond_6
    iget-object v4, p0, Lcom/android/music/RenameDialogBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/music/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 140
    if-ltz v4, :cond_7

    move v4, v1

    goto :goto_2

    :cond_7
    move v4, v2

    goto :goto_2

    .line 159
    :cond_8
    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/android/music/RenameDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mInfoText:Landroid/widget/TextView;

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method

.method private initCustomLayout()V
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/music/RenameDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mCustomLayout:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mCustomLayout:Landroid/view/View;

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    .line 170
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mCustomLayout:Landroid/view/View;

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mInfoText:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mCustomLayout:Landroid/view/View;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mInfoLayout:Landroid/view/View;

    .line 172
    return-void
.end method

.method private onClickPositiveButton(Lcom/android/music/RenameDialogBuilder$OnPositiveListener;Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 204
    if-eqz p1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 205
    :goto_0
    invoke-interface {p1, p2, p3, v0}, Lcom/android/music/RenameDialogBuilder$OnPositiveListener;->onClick(Landroid/content/DialogInterface;ILjava/lang/String;)V

    .line 208
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 80
    iget-object v1, p0, Lcom/android/music/RenameDialogBuilder;->mCustomLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 82
    return-object v0
.end method

.method public setEditTextContent(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public setPositiveButton(ILcom/android/music/RenameDialogBuilder$OnPositiveListener;)Lcom/android/music/RenameDialogBuilder;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/android/music/RenameDialogBuilder$2;

    invoke-direct {v0, p0, p2}, Lcom/android/music/RenameDialogBuilder$2;-><init>(Lcom/android/music/RenameDialogBuilder;Lcom/android/music/RenameDialogBuilder$OnPositiveListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/music/RenameDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    return-object p0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 89
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/music/RenameDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 93
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    iget-object v2, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/android/music/RenameDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 97
    const v3, 0x7f05000b

    .line 96
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 98
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/android/music/RenameDialogBuilder$1;

    invoke-direct {v2, p0, v0}, Lcom/android/music/RenameDialogBuilder$1;-><init>(Lcom/android/music/RenameDialogBuilder;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v1, p0, Lcom/android/music/RenameDialogBuilder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 121
    :cond_2
    return-object v0

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/android/music/RenameDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
