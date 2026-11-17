.class public Lcom/sonim/borqs/launcher/DrawerAdapter;
.super Landroid/widget/BaseAdapter;
.source "DrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/DrawerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastCount:I

.field private mPacsForAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mLastCount:I

    .line 48
    iput-object p1, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mPacsForAdapter:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mPacsForAdapter:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mPacsForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mLastCount:I

    .line 56
    iget v0, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mLastCount:I

    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " positon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mContext:Landroid/content/Context;

    .line 81
    const-string/jumbo v1, "layout_inflater"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 83
    if-nez p2, :cond_1

    .line 84
    const v1, 0x7f030003

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    new-instance v1, Lcom/sonim/borqs/launcher/DrawerAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/sonim/borqs/launcher/DrawerAdapter$ViewHolder;-><init>()V

    .line 89
    const v0, 0x7f0e0014

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sonim/borqs/launcher/DrawerAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0e0013

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sonim/borqs/launcher/DrawerAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mPacsForAdapter:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mPacsForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mPacsForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DrawerAdapter;->mPacsForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    .line 102
    instance-of v1, v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 103
    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 104
    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getName()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_1
    iget-object v1, v2, Lcom/sonim/borqs/launcher/DrawerAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v1, v2, Lcom/sonim/borqs/launcher/DrawerAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-object p2

    .line 94
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/DrawerAdapter$ViewHolder;

    move-object v2, v0

    goto :goto_0

    .line 105
    :cond_2
    instance-of v1, v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 106
    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 107
    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_1
.end method
