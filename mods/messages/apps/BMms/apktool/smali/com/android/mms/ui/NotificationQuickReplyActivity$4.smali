.class Lcom/android/mms/ui/NotificationQuickReplyActivity$4;
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
    iput-object p1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$4;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$4;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    invoke-static {v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->-get2(Lcom/android/mms/ui/NotificationQuickReplyActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$4;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    iget-object v2, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$4;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    invoke-static {v2}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->-get0(Lcom/android/mms/ui/NotificationQuickReplyActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$4;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    invoke-static {v3}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->-get1(Lcom/android/mms/ui/NotificationQuickReplyActivity;)J

    move-result-wide v4

    invoke-static {v1, v0, v2, v4, v5}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->-wrap0(Lcom/android/mms/ui/NotificationQuickReplyActivity;Ljava/lang/String;Ljava/lang/String;J)V

    .line 190
    :cond_0
    return-void
.end method
