.class Lcom/android/mms/ui/AttachmentViewActivity$3;
.super Ljava/lang/Object;
.source "AttachmentViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentViewActivity;->onDataInsert(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentViewActivity;

.field final synthetic val$mediaModel:Lcom/android/mms/model/MediaModel;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentViewActivity;Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentViewActivity$3;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    iput-object p2, p0, Lcom/android/mms/ui/AttachmentViewActivity$3;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/AttachmentViewActivity$3;->val$mediaModel:Lcom/android/mms/model/MediaModel;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Lcom/android/mms/ui/AttachmentViewActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Attachment onDataInsert"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Lcom/android/mms/model/MediaWithTextModel;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity$3;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentViewActivity$3;->val$mediaModel:Lcom/android/mms/model/MediaModel;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/MediaWithTextModel;-><init>(Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V

    .line 286
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity$3;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    iget-object v1, v1, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity$3;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentViewActivity;->-get1(Lcom/android/mms/ui/AttachmentViewActivity;)Lcom/android/mms/ui/SlidesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity$3;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    iget-object v1, v1, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemInserted(I)V

    .line 288
    return-void
.end method
