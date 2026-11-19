.class Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;
.super Ljava/lang/Object;
.source "MailBoxMessageContent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MailBoxMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageContent;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MailBoxMessageContent;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MailBoxMessageContent;Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MailBoxMessageContent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 598
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 600
    new-instance v0, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener$1;-><init>(Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MailBoxMessageContent$DeleteMessageListener$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 607
    return-void
.end method
