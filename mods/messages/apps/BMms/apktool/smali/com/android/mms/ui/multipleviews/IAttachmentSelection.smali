.class public interface abstract Lcom/android/mms/ui/multipleviews/IAttachmentSelection;
.super Ljava/lang/Object;
.source "IAttachmentSelection.java"


# virtual methods
.method public abstract onDataInsert(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
.end method

.method public abstract onDataLoadFinished()V
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation
.end method

.method public abstract onDataUpdate(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation
.end method

.method public abstract onDataUpdate(Lcom/android/mms/model/SlideModel;I)V
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation
.end method

.method public abstract onItemClick(I)V
.end method

.method public abstract onLoadContainerView(I)V
.end method

.method public abstract onPlayNextSlide()V
.end method

.method public abstract setInitialSlideSize(I)V
.end method
