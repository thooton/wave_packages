.class final Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FavoriteDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/FavoriteDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/rcs/FavoriteDetailActivity;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    .line 427
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 428
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 432
    packed-switch p1, :pswitch_data_0

    .line 454
    const-string/jumbo v0, "FavoriteDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown query token :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 434
    :pswitch_0
    if-nez p3, :cond_1

    .line 435
    const-string/jumbo v0, "FavoriteDetailActivity"

    const-string/jumbo v1, "onQueryComplete: cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-static {v0, p3}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-set0(Lcom/android/mms/rcs/FavoriteDetailActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 439
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-wrap2(Lcom/android/mms/rcs/FavoriteDetailActivity;)V

    .line 441
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 443
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-static {v0, p3}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-wrap1(Lcom/android/mms/rcs/FavoriteDetailActivity;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    const-string/jumbo v1, "FavoriteDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Get sms content failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_2
    const-string/jumbo v0, "FavoriteDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find this SMS. URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-static {v2}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-get1(Lcom/android/mms/rcs/FavoriteDetailActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x1a2e
        :pswitch_0
    .end packed-switch
.end method
