.class Lcom/android/mms/ui/SlideEditorActivity$2;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->-get0(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->-get0(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->-get2(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->-get1(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->-get0(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->-get2(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 301
    if-lez v0, :cond_2

    .line 302
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->-get0(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->-get0(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->-set1(Lcom/android/mms/ui/SlideEditorActivity;I)I

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap6(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 311
    :cond_1
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$2;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideEditorActivity;->finish()V

    .line 308
    return-void
.end method
