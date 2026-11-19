.class Lcom/android/mms/ui/MessageSlideEditorActivity$1;
.super Ljava/lang/Object;
.source "MessageSlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageSlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageSlideEditorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$1;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$1;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$1;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-set0(Lcom/android/mms/ui/MessageSlideEditorActivity;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 267
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$1;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$1;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get3(Lcom/android/mms/ui/MessageSlideEditorActivity;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 268
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
