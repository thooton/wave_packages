.class Lcom/android/mms/ui/MessageSlideEditorActivity$6;
.super Ljava/lang/Object;
.source "MessageSlideEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageSlideEditorActivity;->removeEmptySlideObjects()V
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
    iput-object p1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$6;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$6;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget v0, v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mActualNumberOfSlides:I

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$6;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget v1, v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->mNumberOfSlidesLoaded:I

    if-le v0, v1, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$6;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$6;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget v1, v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->mNumberOfSlidesLoaded:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 763
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$6;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$6;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget v1, v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->mNumberOfSlidesLoaded:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mNumberOfSlidesLoaded:I

    .line 764
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$6;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$6;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->onDataRemove(I)V

    .line 765
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$6;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap7(Lcom/android/mms/ui/MessageSlideEditorActivity;)V

    .line 767
    :cond_0
    return-void
.end method
