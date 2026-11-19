.class Lcom/android/mms/ui/MailBoxMessageList$7;
.super Ljava/lang/Object;
.source "MailBoxMessageList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MailBoxMessageList;->confirmDeleteDialog(Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageList;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageList;Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList$7;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    iput-object p2, p0, Lcom/android/mms/ui/MailBoxMessageList$7;->val$listener:Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;

    iput-object p3, p0, Lcom/android/mms/ui/MailBoxMessageList$7;->val$checkbox:Landroid/widget/CheckBox;

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$7;->val$listener:Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$7;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;->setDeleteLockedMessage(Z)V

    .line 864
    return-void
.end method
