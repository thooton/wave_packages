.class Lcom/android/mms/ui/MailBoxMessageList$2;
.super Ljava/lang/Object;
.source "MailBoxMessageList.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MailBoxMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList$2;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 676
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 677
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$2;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    const-class v2, Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 678
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$2;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MailBoxMessageList;->startActivity(Landroid/content/Intent;)V

    .line 680
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$2;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get8(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 681
    const/4 v0, 0x1

    return v0
.end method
