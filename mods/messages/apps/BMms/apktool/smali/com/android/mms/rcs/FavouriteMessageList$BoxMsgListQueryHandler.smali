.class final Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FavouriteMessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/FavouriteMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BoxMsgListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/FavouriteMessageList;


# direct methods
.method public constructor <init>(Lcom/android/mms/rcs/FavouriteMessageList;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    .line 264
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 265
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 269
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->-get2(Lcom/android/mms/rcs/FavouriteMessageList;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 270
    if-eqz p3, :cond_4

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->-get1(Lcom/android/mms/rcs/FavouriteMessageList;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->-get1(Lcom/android/mms/rcs/FavouriteMessageList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0, p3}, Lcom/android/mms/rcs/FavouriteMessageList;->-set0(Lcom/android/mms/rcs/FavouriteMessageList;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 275
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    const v2, 0x7f0f00bb

    invoke-virtual {v0, v2}, Lcom/android/mms/rcs/FavouriteMessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    iget-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v2}, Lcom/android/mms/rcs/FavouriteMessageList;->-get4(Lcom/android/mms/rcs/FavouriteMessageList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 277
    iget-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v2}, Lcom/android/mms/rcs/FavouriteMessageList;->-get3(Lcom/android/mms/rcs/FavouriteMessageList;)Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    move-result-object v2

    if-nez v2, :cond_3

    .line 278
    iget-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    new-instance v3, Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    iget-object v4, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    .line 279
    iget-object v5, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    .line 278
    invoke-direct {v3, v4, v5, p3}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/rcs/FavoriteMessageListAdapter$OnListContentChangedListener;Landroid/database/Cursor;)V

    invoke-static {v2, v3}, Lcom/android/mms/rcs/FavouriteMessageList;->-set1(Lcom/android/mms/rcs/FavouriteMessageList;Lcom/android/mms/rcs/FavoriteMessageListAdapter;)Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    .line 280
    iget-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v2}, Lcom/android/mms/rcs/FavouriteMessageList;->invalidateOptionsMenu()V

    .line 281
    iget-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    iget-object v3, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v3}, Lcom/android/mms/rcs/FavouriteMessageList;->-get3(Lcom/android/mms/rcs/FavouriteMessageList;)Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/rcs/FavouriteMessageList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 282
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 283
    if-nez v2, :cond_2

    .line 284
    iget-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    const v3, 0x7f070274

    invoke-virtual {v2, v3}, Lcom/android/mms/rcs/FavouriteMessageList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 299
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v0, v6}, Lcom/android/mms/rcs/FavouriteMessageList;->setProgressBarIndeterminateVisibility(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/rcs/FavouriteMessageList;->-set3(Lcom/android/mms/rcs/FavouriteMessageList;Z)Z

    .line 301
    return-void

    .line 285
    :cond_2
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v2}, Lcom/android/mms/rcs/FavouriteMessageList;->-get4(Lcom/android/mms/rcs/FavouriteMessageList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 289
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->-get3(Lcom/android/mms/rcs/FavouriteMessageList;)Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v2}, Lcom/android/mms/rcs/FavouriteMessageList;->-get1(Lcom/android/mms/rcs/FavouriteMessageList;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 290
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->-get0(Lcom/android/mms/rcs/FavouriteMessageList;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 293
    :cond_4
    const-string/jumbo v0, "Mms"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    const-string/jumbo v0, "FavouriteMessageList"

    const-string/jumbo v2, "Cannot init the cursor for the thread list."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$BoxMsgListQueryHandler;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
