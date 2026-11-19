.class Lcom/android/mms/ui/MessageDetailAdapter$4;
.super Ljava/lang/Object;
.source "MessageDetailAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageDetailAdapter;->showOpenRcsVcardDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageDetailAdapter;

.field final synthetic val$vcardFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageDetailAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->val$vcardFileName:Ljava/lang/String;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 388
    packed-switch p2, :pswitch_data_0

    .line 414
    :goto_0
    return-void

    .line 391
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-get2(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->val$vcardFileName:Ljava/lang/String;

    .line 390
    invoke-static {v0, v1}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsVcardDetail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/ui/MessageDetailAdapter;->-get2(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->showDetailVcard(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 396
    :pswitch_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->val$vcardFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v2}, Lcom/android/mms/ui/MessageDetailAdapter;->-get1(Lcom/android/mms/ui/MessageDetailAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string/jumbo v0, "VIEW_VCARD_FROM_MMS"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-get2(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/ui/MessageDetailAdapter;->-get0(Lcom/android/mms/ui/MessageDetailAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 408
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-get2(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->val$vcardFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageDetailAdapter;->openRcsVcardDetail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter$4;->this$0:Lcom/android/mms/ui/MessageDetailAdapter;

    invoke-static {v1}, Lcom/android/mms/ui/MessageDetailAdapter;->-get2(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageDetailAdapter;->-wrap0(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
