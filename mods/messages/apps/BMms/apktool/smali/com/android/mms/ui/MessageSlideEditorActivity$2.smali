.class Lcom/android/mms/ui/MessageSlideEditorActivity$2;
.super Ljava/lang/Object;
.source "MessageSlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


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
    iput-object p1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 9

    .prologue
    const v8, 0x7f070179

    const/4 v7, 0x0

    .line 282
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    .line 284
    if-nez p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    .line 286
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap1(Lcom/android/mms/ui/MessageSlideEditorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap3(Lcom/android/mms/ui/MessageSlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    return-void

    .line 292
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get7(Lcom/android/mms/ui/MessageSlideEditorActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 293
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 294
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v2

    .line 295
    if-eqz p2, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get5(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get2(Lcom/android/mms/ui/MessageSlideEditorActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get2(Lcom/android/mms/ui/MessageSlideEditorActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Lcom/android/mms/model/MediaWithTextModel;

    .line 299
    new-instance v5, Lcom/android/mms/model/ImageModel;

    .line 300
    iget-object v6, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v6}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get6(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    .line 299
    invoke-direct {v5, v1, v2, v6}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 298
    const/4 v1, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/mms/model/MediaWithTextModel;-><init>(Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get4(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/SlidesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get2(Lcom/android/mms/ui/MessageSlideEditorActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemInserted(I)V

    .line 311
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap8(Lcom/android/mms/ui/MessageSlideEditorActivity;)V

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->invalidateOptionsMenu()V

    .line 343
    :goto_1
    return-void

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get5(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v4}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get2(Lcom/android/mms/ui/MessageSlideEditorActivity;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v5, v2, v3, v4}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap0(Lcom/android/mms/ui/MessageSlideEditorActivity;ILandroid/net/Uri;Lcom/android/mms/ui/SlideshowEditor;I)I

    move-result v0

    .line 305
    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageSlideEditorActivity;->mMediaWithTextModelList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get2(Lcom/android/mms/ui/MessageSlideEditorActivity;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    new-instance v3, Lcom/android/mms/model/ImageModel;

    .line 307
    iget-object v4, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v4}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get6(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    .line 306
    invoke-direct {v3, v1, v2, v4}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    invoke-virtual {v0, v3}, Lcom/android/mms/model/MediaWithTextModel;->changeImage(Lcom/android/mms/model/ImageModel;)V

    .line 308
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get4(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/SlidesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get2(Lcom/android/mms/ui/MessageSlideEditorActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlidesAdapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    if-eqz p2, :cond_3

    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get5(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get2(Lcom/android/mms/ui/MessageSlideEditorActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    const-string/jumbo v1, "add picture failed"

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap6(Lcom/android/mms/ui/MessageSlideEditorActivity;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    .line 319
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap1(Lcom/android/mms/ui/MessageSlideEditorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap3(Lcom/android/mms/ui/MessageSlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 335
    :catch_1
    move-exception v0

    .line 336
    if-eqz p2, :cond_4

    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get5(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get2(Lcom/android/mms/ui/MessageSlideEditorActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    .line 340
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    const v2, 0x7f070177

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap2(Lcom/android/mms/ui/MessageSlideEditorActivity;I)Ljava/lang/String;

    move-result-object v1

    .line 341
    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap1(Lcom/android/mms/ui/MessageSlideEditorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v8, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap3(Lcom/android/mms/ui/MessageSlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 328
    :catch_2
    move-exception v0

    .line 329
    if-eqz p2, :cond_5

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get5(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get2(Lcom/android/mms/ui/MessageSlideEditorActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 332
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    .line 333
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    const v2, 0x7f07017b

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap2(Lcom/android/mms/ui/MessageSlideEditorActivity;I)Ljava/lang/String;

    move-result-object v1

    .line 334
    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    const v3, 0x7f07017d

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap2(Lcom/android/mms/ui/MessageSlideEditorActivity;I)Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 321
    :catch_3
    move-exception v0

    .line 322
    if-eqz p2, :cond_6

    .line 323
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get5(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get2(Lcom/android/mms/ui/MessageSlideEditorActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 325
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    .line 326
    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap1(Lcom/android/mms/ui/MessageSlideEditorActivity;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070174

    invoke-static {v1, v3, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap3(Lcom/android/mms/ui/MessageSlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    iget-object v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$2;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap1(Lcom/android/mms/ui/MessageSlideEditorActivity;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070176

    invoke-static {v2, v4, v3}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap3(Lcom/android/mms/ui/MessageSlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
