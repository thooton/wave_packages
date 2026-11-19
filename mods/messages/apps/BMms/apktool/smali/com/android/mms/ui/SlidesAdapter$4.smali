.class Lcom/android/mms/ui/SlidesAdapter$4;
.super Ljava/lang/Object;
.source "SlidesAdapter.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlidesAdapter;->onBindViewHolder(Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlidesAdapter;

.field final synthetic val$holder:Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlidesAdapter;Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlidesAdapter$4;->this$0:Lcom/android/mms/ui/SlidesAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/SlidesAdapter$4;->val$holder:Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 142
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/SlidesAdapter$4;->val$holder:Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method
