.class public Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageLoaded"
.end annotation


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mIsVideo:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    .line 551
    iput-boolean p2, p0, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    .line 552
    return-void
.end method
