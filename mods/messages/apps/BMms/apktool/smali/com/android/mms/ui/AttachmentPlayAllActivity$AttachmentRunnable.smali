.class Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentRunnable;
.super Ljava/lang/Object;
.source "AttachmentPlayAllActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentPlayAllActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachmentRunnable"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/ui/AttachmentPlayAllActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/AttachmentPlayAllActivity;)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    .line 138
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentPlayAllActivity;

    .line 143
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->-get2(Lcom/android/mms/ui/AttachmentPlayAllActivity;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->-get2(Lcom/android/mms/ui/AttachmentPlayAllActivity;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->onLoadContainerView(Lcom/android/mms/model/MediaWithTextModel;)V

    .line 157
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->-get1(Lcom/android/mms/ui/AttachmentPlayAllActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->finish()V

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Still waiting for some more slide items"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
