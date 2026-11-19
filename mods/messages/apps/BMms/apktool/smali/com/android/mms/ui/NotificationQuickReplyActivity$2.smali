.class Lcom/android/mms/ui/NotificationQuickReplyActivity$2;
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
    iput-object p1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$2;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$2;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->finish()V

    .line 165
    return-void
.end method
