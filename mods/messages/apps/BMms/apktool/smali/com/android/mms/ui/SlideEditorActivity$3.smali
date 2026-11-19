.class Lcom/android/mms/ui/SlideEditorActivity$3;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsChanged:Z

.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->mIsChanged:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->mIsChanged:Z

    if-eqz v0, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideEditorActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->-get2(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->-get0(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 326
    if-nez v3, :cond_4

    move v0, v1

    .line 328
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v4, v2

    .line 330
    sub-int v2, v4, v0

    .line 333
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v5}, Lcom/android/mms/ui/SlideEditorActivity;->-get2(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getRemainMessageSize()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v6}, Lcom/android/mms/ui/SlideEditorActivity;->-get3(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v2, v5, v2

    .line 334
    if-gez v2, :cond_1

    move v2, v1

    .line 339
    :cond_1
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->-get2(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRemainMessageSize()I

    move-result v2

    add-int/2addr v0, v2

    if-ge v0, v4, :cond_6

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v2, 0x7f070190

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->mIsChanged:Z

    .line 348
    if-eqz v3, :cond_5

    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->-get4(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :goto_1
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->mIsChanged:Z

    .line 359
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideEditorActivity;->invalidateOptionsMenu()V

    .line 360
    return-void

    .line 326
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    .line 351
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->-get4(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 356
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->-get1(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$3;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->-get0(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    goto :goto_2
.end method
