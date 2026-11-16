.class Lcom/android/mms/ui/MessageDetailAdapter$1;
.super Ljava/lang/Object;
.source "MessageDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageDetailAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    .line 300
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

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-get3(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/ui/MessageDetailAdapter;->-get3(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/database/Cursor;

    move-result-object v1

    const-string/jumbo v2, "rcs_file_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 303
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/ui/MessageDetailAdapter;->-get3(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/database/Cursor;

    move-result-object v1

    .line 306
    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v2}, Lcom/android/mms/ui/MessageDetailAdapter;->-get3(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/database/Cursor;

    move-result-object v2

    const-string/jumbo v3, "rcs_file_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 305
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    .line 307
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->formatFilePathIfExisted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0, v2, v3}, Lcom/android/mms/rcs/RcsChatMessageUtils;->isFileDownload(Ljava/lang/String;J)Z

    move-result v1

    .line 309
    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v2}, Lcom/android/mms/ui/MessageDetailAdapter;->-get4(Lcom/android/mms/ui/MessageDetailAdapter;)I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 310
    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v2}, Lcom/android/mms/ui/MessageDetailAdapter;->-get4(Lcom/android/mms/ui/MessageDetailAdapter;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 311
    :cond_0
    if-nez v1, :cond_3

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-get4(Lcom/android/mms/ui/MessageDetailAdapter;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-get2(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07008f

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 322
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-get4(Lcom/android/mms/ui/MessageDetailAdapter;)I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 316
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-get2(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070090

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-get2(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070092

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 325
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/ui/MessageDetailAdapter;->-get3(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/database/Cursor;

    move-result-object v1

    .line 326
    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v2}, Lcom/android/mms/ui/MessageDetailAdapter;->-get3(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/database/Cursor;

    move-result-object v2

    const-string/jumbo v3, "rcs_mime_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 325
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v4}, Lcom/android/mms/ui/MessageDetailAdapter;->-get1(Lcom/android/mms/ui/MessageDetailAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    if-eqz v1, :cond_4

    const-string/jumbo v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 331
    const-string/jumbo v1, "com.android.gallery3d.VIEW_GIF"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/ui/MessageDetailAdapter;->-get4(Lcom/android/mms/ui/MessageDetailAdapter;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 355
    :goto_1
    return-void

    .line 336
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-get2(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 337
    :catch_0
    move-exception v0

    goto :goto_1

    .line 342
    :pswitch_1
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    const-string/jumbo v0, "SingleItemOnly"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-get2(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 347
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-wrap2(Lcom/android/mms/ui/MessageDetailAdapter;)V

    goto :goto_1

    .line 350
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter$1;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-wrap1(Lcom/android/mms/ui/MessageDetailAdapter;Ljava/lang/String;)V

    goto :goto_1

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
