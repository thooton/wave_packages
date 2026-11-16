.class Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;
.super Landroid/os/Handler;
.source "VideoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/multipleviews/VideoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoViewHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 357
    return-void
.end method
