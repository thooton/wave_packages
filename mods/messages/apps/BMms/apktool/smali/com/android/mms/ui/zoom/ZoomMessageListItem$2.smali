.class Lcom/android/mms/ui/zoom/ZoomMessageListItem$2;
.super Ljava/lang/Object;
.source "ZoomMessageListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/zoom/ZoomMessageListItem;->setZoomScale(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/zoom/ZoomMessageListItem;

.field final synthetic val$isEditorText:Z

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/mms/ui/zoom/ZoomMessageListItem;FZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem$2;->this$0:Lcom/android/mms/ui/zoom/ZoomMessageListItem;

    iput p2, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem$2;->val$scale:F

    iput-boolean p3, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem$2;->val$isEditorText:Z

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem$2;->this$0:Lcom/android/mms/ui/zoom/ZoomMessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->-get0(Lcom/android/mms/ui/zoom/ZoomMessageListItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    iget-object v2, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem$2;->this$0:Lcom/android/mms/ui/zoom/ZoomMessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem$2;->val$scale:F

    iget-boolean v4, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem$2;->val$isEditorText:Z

    invoke-static {v2, v0, v3, v4}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->zoomViewByScale(Landroid/content/Context;Landroid/widget/TextView;FZ)V

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/zoom/ZoomMessageListItem$2;->this$0:Lcom/android/mms/ui/zoom/ZoomMessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->-wrap0(Lcom/android/mms/ui/zoom/ZoomMessageListItem;)V

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method
