.class Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$1;
.super Ljava/lang/Object;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

.field final synthetic val$gallery:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$1;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    iput-object p2, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$1;->val$gallery:Landroid/widget/Gallery;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$1;->this$0:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$1;->val$gallery:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->-wrap0(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;I)V

    .line 151
    return-void
.end method
