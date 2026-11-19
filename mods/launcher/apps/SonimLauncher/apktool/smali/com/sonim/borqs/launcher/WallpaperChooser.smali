.class public Lcom/sonim/borqs/launcher/WallpaperChooser;
.super Landroid/app/Activity;
.source "WallpaperChooser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/WallpaperChooser;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WallpaperChooser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0e0031

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->newInstance()Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WallpaperChooser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method
