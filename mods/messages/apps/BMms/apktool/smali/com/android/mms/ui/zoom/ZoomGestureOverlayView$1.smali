.class Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$1;
.super Ljava/lang/Object;
.source "ZoomGestureOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->fireListenersWithScale(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;F)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$1;->this$0:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    iput p2, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$1;->val$scale:F

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$1;->this$0:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    invoke-static {v0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->-get0(Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$IZoomListener;

    .line 237
    iget v2, p0, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$1;->val$scale:F

    invoke-interface {v0, v2}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$IZoomListener;->onZoomWithScale(F)V

    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method
