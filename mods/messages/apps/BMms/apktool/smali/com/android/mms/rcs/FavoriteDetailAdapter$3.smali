.class Lcom/android/mms/rcs/FavoriteDetailAdapter$3;
.super Ljava/lang/Object;
.source "FavoriteDetailAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/FavoriteDetailAdapter;->showOpenRcsVcardDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

.field final synthetic val$vcardFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/FavoriteDetailAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    iput-object p2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;->val$vcardFileName:Ljava/lang/String;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 363
    packed-switch p2, :pswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 366
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get1(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;->val$vcardFileName:Ljava/lang/String;

    .line 365
    invoke-static {v0, v1}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsVcardDetail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get1(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->showDetailVcard(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 371
    :pswitch_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;->val$vcardFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v2}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get0(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string/jumbo v0, "VIEW_VCARD_FROM_MMS"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get1(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get1(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;->val$vcardFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->openRcsVcardDetail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;->this$0:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-get1(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->-wrap0(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
