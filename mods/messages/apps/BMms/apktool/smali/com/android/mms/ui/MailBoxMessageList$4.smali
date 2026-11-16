.class Lcom/android/mms/ui/MailBoxMessageList$4;
.super Ljava/lang/Object;
.source "MailBoxMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MailBoxMessageList;->markAsRead(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageList;

.field final synthetic val$msgUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageList;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList$4;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    iput-object p2, p0, Lcom/android/mms/ui/MailBoxMessageList$4;->val$msgUri:Landroid/net/Uri;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 378
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 379
    const-string/jumbo v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string/jumbo v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$4;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$4;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v1}, Lcom/android/mms/ui/MailBoxMessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$4;->val$msgUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 381
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$4;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    const-wide/16 v2, -0x2

    .line 385
    const/4 v1, 0x0

    .line 383
    invoke-static {v0, v2, v3, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    const-string/jumbo v1, "MailBoxMessageList"

    const-string/jumbo v2, "Update Read Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
