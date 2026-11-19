.class Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MultiPickContactGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiPickContactGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field protected mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/ui/MultiPickContactGroups;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/MultiPickContactGroups;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiPickContactGroups;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    .line 367
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 368
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 369
    check-cast p2, Lcom/android/mms/ui/MultiPickContactGroups;

    .line 368
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 370
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactGroups;->-get6(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactGroups;->-get6(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MultiPickContactGroups;->-set1(Lcom/android/mms/ui/MultiPickContactGroups;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v0, p3}, Lcom/android/mms/ui/MultiPickContactGroups;->-set1(Lcom/android/mms/ui/MultiPickContactGroups;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 380
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactGroups;->-get2(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0702ca

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 388
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 389
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    .line 388
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MultiPickContactGroups;

    .line 392
    const/16 v1, 0x37

    if-ne p1, v1, :cond_6

    .line 393
    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactGroups;->-get0(Lcom/android/mms/ui/MultiPickContactGroups;)Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 419
    :cond_5
    :goto_0
    return-void

    .line 394
    :cond_6
    const/16 v1, 0x38

    if-ne p1, v1, :cond_5

    if-eqz p3, :cond_5

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 397
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 398
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 399
    invoke-interface {p3, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 400
    const-string/jumbo v5, "MultiPickContactGroups"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query phone count"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 403
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 402
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 405
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 404
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 409
    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v5}, Lcom/android/mms/ui/MultiPickContactGroups;->-get3(Lcom/android/mms/ui/MultiPickContactGroups;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 410
    iget-object v3, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v3, v8}, Lcom/android/mms/ui/MultiPickContactGroups;->-set0(Lcom/android/mms/ui/MultiPickContactGroups;Z)Z

    .line 411
    const-string/jumbo v3, "recipients"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 416
    :goto_2
    invoke-virtual {v0, v9, v2}, Lcom/android/mms/ui/MultiPickContactGroups;->setResult(ILandroid/content/Intent;)V

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactGroups;->finish()V

    goto :goto_0

    .line 413
    :cond_8
    const-string/jumbo v1, "result"

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 414
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2
.end method
