.class Lcom/android/mms/ui/SlideEditorActivity$1;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->-set0(Lcom/android/mms/ui/SlideEditorActivity;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap7(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 291
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$1;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->setResult(I)V

    .line 292
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
