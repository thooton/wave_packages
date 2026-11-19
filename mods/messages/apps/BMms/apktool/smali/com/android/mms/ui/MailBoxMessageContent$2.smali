.class Lcom/android/mms/ui/MailBoxMessageContent$2;
.super Ljava/lang/Object;
.source "MailBoxMessageContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MailBoxMessageContent;->lockUnlockMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageContent;

.field final synthetic val$lockUri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageContent;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageContent$2;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    iput-object p2, p0, Lcom/android/mms/ui/MailBoxMessageContent$2;->val$lockUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/MailBoxMessageContent$2;->val$values:Landroid/content/ContentValues;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 494
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 495
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 496
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$2;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-virtual {v1}, Lcom/android/mms/ui/MailBoxMessageContent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageContent$2;->val$lockUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageContent$2;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$2;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    const v2, 0x7f0702dd

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MailBoxMessageContent;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$2;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageContent;->-get9(Lcom/android/mms/ui/MailBoxMessageContent;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 502
    return-void

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$2;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    const v2, 0x7f0702de

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MailBoxMessageContent;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
