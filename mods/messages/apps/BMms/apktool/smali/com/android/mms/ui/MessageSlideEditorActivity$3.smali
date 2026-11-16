.class Lcom/android/mms/ui/MessageSlideEditorActivity$3;
.super Ljava/lang/Object;
.source "MessageSlideEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageSlideEditorActivity;->onDataUpdate(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

.field final synthetic val$mediaModel:Lcom/android/mms/model/MediaModel;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageSlideEditorActivity;Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->val$mediaModel:Lcom/android/mms/model/MediaModel;

    iput-object p3, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->val$message:Ljava/lang/String;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget v0, v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mActualNumberOfSlides:I

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget v1, v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->mNumberOfSlidesLoaded:I

    if-ne v0, v1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->val$mediaModel:Lcom/android/mms/model/MediaModel;

    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->onDataInsert(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V

    .line 701
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget v1, v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->mNumberOfSlidesLoaded:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    .line 695
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->val$mediaModel:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaWithTextModel;->setMediaModel(Lcom/android/mms/model/MediaModel;)V

    .line 696
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/MediaWithTextModel;->setMessageText(Ljava/lang/String;)V

    .line 697
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget v2, v2, Lcom/android/mms/ui/MessageSlideEditorActivity;->mNumberOfSlidesLoaded:I

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get4(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/SlidesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget v1, v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->mNumberOfSlidesLoaded:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemChanged(I)V

    .line 699
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$3;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget v1, v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->mNumberOfSlidesLoaded:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mNumberOfSlidesLoaded:I

    goto :goto_0
.end method
