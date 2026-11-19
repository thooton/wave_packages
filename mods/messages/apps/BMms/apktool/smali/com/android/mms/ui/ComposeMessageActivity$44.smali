.class Lcom/android/mms/ui/ComposeMessageActivity$44;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$44;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-wide p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$44;->val$threadId:J

    .line 3533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$44;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$44;->val$threadId:J

    .line 3536
    invoke-static {v0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotificationForThread(Landroid/content/Context;J)V

    .line 3538
    return-void
.end method
