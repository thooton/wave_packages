.class final Lcom/android/music/MusicPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicPicker;


# direct methods
.method public constructor <init>(Lcom/android/music/MusicPicker;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    .line 411
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 412
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0}, Lcom/android/music/MusicPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 421
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0, v2}, Lcom/android/music/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-object v1, v1, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 427
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iget-boolean v0, v0, Lcom/android/music/MusicPicker;->mListHasFocus:Z

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iput-boolean v2, v0, Lcom/android/music/MusicPicker;->mListHasFocus:Z

    .line 431
    iget-object v0, p0, Lcom/android/music/MusicPicker$QueryHandler;->this$0:Lcom/android/music/MusicPicker;

    iput-object v3, v0, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
