.class Lcom/android/mms/ui/NotificationQuickReplyActivity$3;
.super Ljava/lang/Object;
.source "NotificationQuickReplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NotificationQuickReplyActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NotificationQuickReplyActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$3;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$3;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    iget-object v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$3;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    invoke-static {v1}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->-get1(Lcom/android/mms/ui/NotificationQuickReplyActivity;)J

    move-result-wide v2

    .line 172
    invoke-static {v0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 174
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$3;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$3;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->finish()V

    .line 179
    return-void
.end method
