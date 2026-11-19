.class Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;
.super Ljava/lang/Object;
.source "VideoViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/multipleviews/VideoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

.field weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/ui/multipleviews/VideoViewFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Ljava/lang/Runnable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;->init(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private init(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 346
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;->weakReference:Ljava/lang/ref/WeakReference;

    .line 347
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    .line 337
    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get6(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-static {v1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get7(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$2;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-static {v1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get1(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->footerViewSlideDown(Landroid/view/View;)V

    .line 342
    :cond_0
    return-void
.end method
