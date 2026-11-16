.class Lcom/android/mms/ui/MailBoxMessageList$6;
.super Ljava/lang/Object;
.source "MailBoxMessageList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MailBoxMessageList;->initSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageList;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageList;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList$6;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    iput-object p2, p0, Lcom/android/mms/ui/MailBoxMessageList$6;->val$sp:Landroid/content/SharedPreferences;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$6;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "slot_spinner_type"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$6;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get7(Lcom/android/mms/ui/MailBoxMessageList;)I

    move-result v0

    .line 503
    const/4 v1, 0x2

    if-le p3, v1, :cond_0

    .line 504
    const/4 p3, 0x0

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$6;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v1, p3}, Lcom/android/mms/ui/MailBoxMessageList;->-set5(Lcom/android/mms/ui/MailBoxMessageList;I)I

    .line 507
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$6;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageList;->-get7(Lcom/android/mms/ui/MailBoxMessageList;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 508
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$6;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap6(Lcom/android/mms/ui/MailBoxMessageList;)V

    .line 509
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$6;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 511
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 516
    return-void
.end method
