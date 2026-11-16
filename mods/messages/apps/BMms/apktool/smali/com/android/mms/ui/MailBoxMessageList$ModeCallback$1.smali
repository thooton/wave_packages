.class Lcom/android/mms/ui/MailBoxMessageList$ModeCallback$1;
.super Ljava/lang/Object;
.source "MailBoxMessageList.java"

# interfaces
.implements Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback$1;->this$1:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPopupItemClick(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1056
    if-ne p1, v2, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback$1;->this$1:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->-get0(Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback$1;->this$1:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageList;->unCheckAll()V

    .line 1059
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback$1;->this$1:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->-set0(Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;Z)Z

    .line 1064
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback$1;->this$1:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->-get1(Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;)Lcom/android/mms/ui/SelectionMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback$1;->this$1:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->-get0(Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SelectionMenu;->updateSelectAllMode(Z)V

    .line 1066
    :cond_0
    return v2

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback$1;->this$1:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageList;->checkAll()V

    .line 1062
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback$1;->this$1:Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->-set0(Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;Z)Z

    goto :goto_0
.end method
