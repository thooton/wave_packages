.class Lcom/android/mms/ui/MobilePaperShowActivity$7;
.super Ljava/lang/Object;
.source "MobilePaperShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MobilePaperShowActivity;->forwardMms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MobilePaperShowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity$7;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 512
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$7;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    .line 513
    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    .line 512
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    const-string/jumbo v0, "exit_on_sent"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    const-string/jumbo v0, "forwarded_message"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$7;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    const v2, 0x7f07017e

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    iget-object v2, p0, Lcom/android/mms/ui/MobilePaperShowActivity$7;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get7(Lcom/android/mms/ui/MobilePaperShowActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MobilePaperShowActivity$7;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get7(Lcom/android/mms/ui/MobilePaperShowActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    :goto_0
    const-string/jumbo v2, "subject"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string/jumbo v0, "msg_uri"

    iget-object v2, p0, Lcom/android/mms/ui/MobilePaperShowActivity$7;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get8(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 524
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$7;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get9(Lcom/android/mms/ui/MobilePaperShowActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 525
    const-string/jumbo v0, "thread_id"

    iget-object v2, p0, Lcom/android/mms/ui/MobilePaperShowActivity$7;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get9(Lcom/android/mms/ui/MobilePaperShowActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$7;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MobilePaperShowActivity;->startActivity(Landroid/content/Intent;)V

    .line 528
    return-void

    .line 520
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method
