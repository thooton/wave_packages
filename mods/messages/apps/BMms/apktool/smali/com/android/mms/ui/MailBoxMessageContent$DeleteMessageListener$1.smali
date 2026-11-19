.class Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener$1;
.super Landroid/os/AsyncTask;
.source "MailBoxMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;

    .line 600
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 601
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 602
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageContent;->-get0(Lcom/android/mms/ui/MailBoxMessageContent;)Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;

    iget-object v1, v1, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageContent;->-get4(Lcom/android/mms/ui/MailBoxMessageContent;)Landroid/net/Uri;

    move-result-object v3

    .line 603
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;

    iget-object v1, v1, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageContent;->-get3(Lcom/android/mms/ui/MailBoxMessageContent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v4, v2

    .line 602
    :goto_0
    const/16 v1, 0x1a2d

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MailBoxMessageContent$BackgroundHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 604
    return-object v2

    .line 603
    :cond_0
    const-string/jumbo v4, "locked=0"

    goto :goto_0
.end method
