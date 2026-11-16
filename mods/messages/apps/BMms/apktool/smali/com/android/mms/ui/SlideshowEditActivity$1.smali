.class Lcom/android/mms/ui/SlideshowEditActivity$1;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3

    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideshowEditActivity;->-set0(Lcom/android/mms/ui/SlideshowEditActivity;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 439
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->-get0(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 440
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$1;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowEditActivity;->-wrap0(Lcom/android/mms/ui/SlideshowEditActivity;)V

    .line 441
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
