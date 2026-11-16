.class Lcom/android/mms/ui/SlideshowActivity$1;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$model:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$1;->val$model:Lcom/android/mms/model/SlideshowModel;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private isRotating()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-get4(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-get4(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    .line 193
    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-get4(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideshowActivity;->-set1(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-get1(Lcom/android/mms/ui/SlideshowActivity;)I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-wrap1(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-get2(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->-get0(Lcom/android/mms/ui/SlideshowActivity;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SlideView;->setMediaController(Landroid/widget/MediaController;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$1;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideshowActivity;->-set0(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-get3(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-wrap0(Lorg/w3c/dom/smil/SMILDocument;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    .line 216
    if-eqz v3, :cond_5

    .line 217
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_4

    .line 219
    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    .line 220
    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v0

    .line 222
    :goto_0
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    .line 223
    if-eqz v3, :cond_3

    .line 224
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v4

    .line 225
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    move v7, v4

    move v4, v2

    move v2, v7

    .line 228
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v5}, Lcom/android/mms/ui/SlideshowActivity;->-get2(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;

    move-result-object v5

    invoke-virtual {v5, v2, v0, v4, v3}, Lcom/android/mms/ui/SlideView;->enableMMSConformanceMode(IIII)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-get3(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    .line 240
    const-string/jumbo v2, "SimlDocumentEnd"

    .line 241
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    .line 239
    invoke-interface {v0, v2, v3, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-get4(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->-get3(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->init(Lorg/w3c/dom/smil/ElementTime;)V

    .line 244
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity$1;->isRotating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-get4(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->-get4(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    .line 249
    return-void

    :cond_3
    move v3, v0

    move v4, v2

    move v0, v1

    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto :goto_1
.end method
