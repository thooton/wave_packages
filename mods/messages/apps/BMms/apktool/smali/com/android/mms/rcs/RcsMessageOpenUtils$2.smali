.class final Lcom/android/mms/rcs/RcsMessageOpenUtils$2;
.super Ljava/lang/Object;
.source "RcsMessageOpenUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/RcsMessageOpenUtils;->showOpenRcsVcardDialog(Landroid/content/Context;Lcom/android/mms/ui/MessageListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$messageItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic val$messageListItem:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$messageItem:Lcom/android/mms/ui/MessageItem;

    iput-object p2, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$messageListItem:Lcom/android/mms/ui/MessageListItem;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 346
    packed-switch p2, :pswitch_data_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 348
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$messageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->rcsVcardContactList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_0

    .line 351
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 353
    iget-object v1, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsVcardDetail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->showDetailVcard(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 356
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.suntek.mway.rcs.nativeui.ACTION_GROUP_VCARD_DETAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v2, "vcardFilePath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v0, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 364
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$messageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v0

    .line 365
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 368
    iget-object v2, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$messageListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getRcsContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string/jumbo v1, "VIEW_VCARD_FROM_MMS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$messageListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$messageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsVcardDetail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->-wrap0(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
