.class Lcom/android/mms/rcs/FavoriteDetailAdapter$1;
.super Ljava/lang/Object;
.source "FavoriteDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/FavoriteDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/FavoriteDetailAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 278
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get2(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get2(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/database/Cursor;

    move-result-object v1

    .line 279
    const-string/jumbo v2, "filename"

    .line 278
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get2(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v2}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get2(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/database/Cursor;

    move-result-object v2

    .line 281
    const-string/jumbo v3, "filesize"

    .line 280
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    .line 282
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->formatFilePathIfExisted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0, v2, v3}, Lcom/android/mms/rcs/RcsChatMessageUtils;->isFileDownload(Ljava/lang/String;J)Z

    move-result v1

    .line 284
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v2}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get3(Lcom/android/mms/rcs/FavoriteDetailAdapter;)I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v2}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get3(Lcom/android/mms/rcs/FavoriteDetailAdapter;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 286
    :cond_0
    if-nez v1, :cond_3

    .line 287
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get3(Lcom/android/mms/rcs/FavoriteDetailAdapter;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get1(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07008f

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get3(Lcom/android/mms/rcs/FavoriteDetailAdapter;)I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get1(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070090

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get1(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070092

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get2(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v2}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get2(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/database/Cursor;

    move-result-object v2

    .line 301
    const-string/jumbo v3, "mimetype"

    .line 300
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v4}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get0(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    if-eqz v1, :cond_4

    const-string/jumbo v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    const-string/jumbo v1, "com.android.gallery3d.VIEW_GIF"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :cond_4
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get3(Lcom/android/mms/rcs/FavoriteDetailAdapter;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 330
    :goto_1
    return-void

    .line 311
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get1(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 312
    :catch_0
    move-exception v0

    goto :goto_1

    .line 317
    :pswitch_1
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    const-string/jumbo v0, "SingleItemOnly"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get1(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 322
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-wrap2(Lcom/android/mms/rcs/FavoriteDetailAdapter;)V

    goto :goto_1

    .line 325
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v1, v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-wrap1(Lcom/android/mms/rcs/FavoriteDetailAdapter;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
