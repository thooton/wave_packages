.class Lcom/android/mms/ui/AttachmentViewActivity$4;
.super Ljava/lang/Object;
.source "AttachmentViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentViewActivity;->removeEmptySlideObjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentViewActivity$4;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity$4;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    iget v0, v0, Lcom/android/mms/ui/AttachmentViewActivity;->mActualNumberOfSlides:I

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity$4;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    iget v1, v1, Lcom/android/mms/ui/AttachmentViewActivity;->mNumberOfSlidesLoaded:I

    if-le v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity$4;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity$4;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    iget v1, v1, Lcom/android/mms/ui/AttachmentViewActivity;->mNumberOfSlidesLoaded:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity$4;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity$4;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    iget v1, v1, Lcom/android/mms/ui/AttachmentViewActivity;->mNumberOfSlidesLoaded:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/mms/ui/AttachmentViewActivity;->mNumberOfSlidesLoaded:I

    .line 308
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity$4;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentViewActivity$4;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    iget-object v1, v1, Lcom/android/mms/ui/AttachmentViewActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentViewActivity;->onDataRemove(I)V

    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentViewActivity$4;->this$0:Lcom/android/mms/ui/AttachmentViewActivity;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentViewActivity;->-wrap1(Lcom/android/mms/ui/AttachmentViewActivity;)V

    .line 311
    :cond_0
    return-void
.end method
