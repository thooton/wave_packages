.class Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 226
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 227
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->-get2(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 238
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 244
    if-nez p2, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 259
    :cond_0
    const v0, 0x7f0e0033

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 265
    iget-object v1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->-get2(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 266
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1

    .line 269
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 275
    :goto_0
    return-object p2

    .line 271
    :cond_1
    const-string/jumbo v0, "Launcher.WallpaperChooserDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error decoding thumbnail resId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for wallpaper #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
