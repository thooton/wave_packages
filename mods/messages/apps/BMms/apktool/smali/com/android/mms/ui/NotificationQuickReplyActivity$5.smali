.class Lcom/android/mms/ui/NotificationQuickReplyActivity$5;
.super Ljava/lang/Object;
.source "NotificationQuickReplyActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$5;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/mms/ui/NotificationQuickReplyActivity$5;->this$0:Lcom/android/mms/ui/NotificationQuickReplyActivity;

    invoke-static {v0}, Lcom/android/mms/ui/NotificationQuickReplyActivity;->-wrap1(Lcom/android/mms/ui/NotificationQuickReplyActivity;)V

    .line 202
    return-void
.end method
