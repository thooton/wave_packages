.class public Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$ImageAdapter;,
        Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;,
        Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEmbedded:Z

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperDrawable:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;


# direct methods
.method static synthetic -get0(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;)Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;
    .locals 0

    iput-object p1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mLoader:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    new-instance v0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-direct {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;

    .line 48
    return-void
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 207
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 208
    const-string/jumbo v4, "drawable"

    invoke-virtual {p1, v3, v4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 209
    if-eqz v4, :cond_0

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "_small"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    const-string/jumbo v5, "drawable"

    .line 210
    invoke-virtual {p1, v3, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 213
    if-eqz v3, :cond_0

    .line 214
    iget-object v5, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v3, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    return-void
.end method

.method private cancelLoader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mLoader:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mLoader:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mLoader:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->cancel(Z)Z

    .line 87
    iput-object v2, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mLoader:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 89
    :cond_0
    return-void
.end method

.method private findWallpapers()V
    .locals 3

    .prologue
    const v2, 0x7f060006

    const/16 v1, 0x18

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-direct {p0, v0, v1, v2}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 203
    return-void
.end method

.method public static newInstance()Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;

    invoke-direct {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;-><init>()V

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->setCancelable(Z)V

    .line 66
    return-object v0
.end method

.method private selectWallpaper(I)V
    .locals 4

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 161
    const-string/jumbo v1, "wallpaper"

    .line 160
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 162
    iget-object v1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 163
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 165
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const-string/jumbo v1, "Launcher.WallpaperChooserDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set wallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v0, "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mEmbedded:Z

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->isInLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mEmbedded:Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 137
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mEmbedded:Z

    if-eqz v0, :cond_0

    .line 138
    const v0, 0x7f03000f

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 139
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mWallpaperDrawable:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperDrawable;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    const v0, 0x7f0e002f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 142
    invoke-virtual {v0, v2}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 143
    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 144
    new-instance v2, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$ImageAdapter;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$ImageAdapter;-><init>(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 146
    const v2, 0x7f0e0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 147
    new-instance v3, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$1;-><init>(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-object v1

    .line 155
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 102
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->cancelLoader()V

    .line 103
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 95
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->cancelLoader()V

    .line 96
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 112
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 116
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p3}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    .line 175
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mLoader:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mLoader:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mLoader:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->cancel()V

    .line 183
    :cond_0
    new-instance v0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;-><init>(Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mLoader:Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 184
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 188
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v0, "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    iget-boolean v1, p0, Lcom/sonim/borqs/launcher/WallpaperChooserDialogFragment;->mEmbedded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    return-void
.end method
