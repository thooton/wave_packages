.class Lcom/android/mms/ui/multipleviews/VideoViewFragment$4;
.super Ljava/lang/Object;
.source "VideoViewFragment.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/multipleviews/VideoViewFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

.field final synthetic val$videoThumbnail:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/multipleviews/VideoViewFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$4;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    iput-object p2, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$4;->val$videoThumbnail:Landroid/widget/ImageView;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 166
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$4;->val$videoThumbnail:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    .line 168
    const/16 v2, 0x258

    const/16 v3, 0x12c

    const/4 v4, 0x1

    .line 167
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    return-void
.end method
