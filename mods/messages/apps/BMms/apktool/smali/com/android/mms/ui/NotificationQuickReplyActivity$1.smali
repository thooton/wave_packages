.class Lcom/android/mms/ui/NotificationQuickReplyActivity$1;
.super Ljava/lang/Thread;
.source "NotificationQuickReplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NotificationQuickReplyActivity;->handleRemoteInput(Landroid/content/Intent;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isGroup:Z

.field final synthetic val$sortkey:Ljava/lang/String;

.field final synthetic val$textReply:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NotificationQuickReplyActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    iput-object p2, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->val$address:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->val$textReply:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->val$isGroup:Z

    iput-object p6, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->val$sortkey:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->val$context:Landroid/content/Context;

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    invoke-static {v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->-get1(Lcom/android/mms/ui/NotificationQuickReplyActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    invoke-static {v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->-get0(Lcom/android/mms/ui/NotificationQuickReplyActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->val$address:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->val$textReply:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->val$isGroup:Z

    iget-object v8, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$1;->val$sortkey:Ljava/lang/String;

    .line 130
    invoke-static/range {v1 .. v8}, Lcom/android/mms/transaction/MessagingNotification;->updateNotificationItem(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 133
    return-void
.end method
