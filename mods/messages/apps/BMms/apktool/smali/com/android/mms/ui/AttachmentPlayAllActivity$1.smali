.class Lcom/android/mms/ui/AttachmentPlayAllActivity$1;
.super Ljava/lang/Object;
.source "AttachmentPlayAllActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentPlayAllActivity;->onDataInsert(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentPlayAllActivity;

.field final synthetic val$mediaModel:Lcom/android/mms/model/MediaModel;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentPlayAllActivity;Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;->this$0:Lcom/android/mms/ui/AttachmentPlayAllActivity;

    iput-object p2, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;->val$mediaModel:Lcom/android/mms/model/MediaModel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/android/mms/model/MediaWithTextModel;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;->val$mediaModel:Lcom/android/mms/model/MediaModel;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/MediaWithTextModel;-><init>(Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V

    .line 70
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;->this$0:Lcom/android/mms/ui/AttachmentPlayAllActivity;

    invoke-static {v1}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->-get2(Lcom/android/mms/ui/AttachmentPlayAllActivity;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;->this$0:Lcom/android/mms/ui/AttachmentPlayAllActivity;

    iget-object v1, v1, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;->this$0:Lcom/android/mms/ui/AttachmentPlayAllActivity;

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;->this$0:Lcom/android/mms/ui/AttachmentPlayAllActivity;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;->this$0:Lcom/android/mms/ui/AttachmentPlayAllActivity;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->-get2(Lcom/android/mms/ui/AttachmentPlayAllActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->onLoadContainerView(Lcom/android/mms/model/MediaWithTextModel;)V

    .line 76
    :cond_0
    return-void
.end method
