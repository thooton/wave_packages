.class Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;
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
.method static synthetic -wrap0(Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Ljava/lang/Runnable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;->init(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private init(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 324
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;->weakReference:Ljava/lang/ref/WeakReference;

    .line 325
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    .line 304
    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-static {v1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get5(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    int-to-long v2, v1

    .line 307
    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get3(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/TextView;

    move-result-object v1

    .line 308
    iget-object v4, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-static {v4}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get5(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/mms/util/MediaPlayerUtils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get0(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/TextView;

    move-result-object v1

    .line 310
    invoke-static {v2, v3}, Lcom/android/mms/util/MediaPlayerUtils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get5(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    int-to-long v4, v1

    .line 311
    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/util/MediaPlayerUtils;->getProgressPercentage(JJ)I

    move-result v1

    .line 313
    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get4(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 315
    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get6(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/android/mms/ui/multipleviews/VideoViewFragment$1;->this$0:Lcom/android/mms/ui/multipleviews/VideoViewFragment;

    invoke-static {v1}, Lcom/android/mms/ui/multipleviews/VideoViewFragment;->-get7(Lcom/android/mms/ui/multipleviews/VideoViewFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 315
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/multipleviews/VideoViewFragment$VideoViewHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    :cond_0
    return-void
.end method
