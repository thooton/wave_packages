.class Lcom/android/mms/ui/MailBoxMessageList$5;
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
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    iput-object p2, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->val$sp:Landroid/content/SharedPreferences;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 463
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get6(Lcom/android/mms/ui/MailBoxMessageList;)I

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    add-int/lit8 v2, p3, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/ui/MailBoxMessageList;->-set3(Lcom/android/mms/ui/MailBoxMessageList;I)I

    .line 466
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageList;->-get6(Lcom/android/mms/ui/MailBoxMessageList;)I

    move-result v1

    if-le v1, v4, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v1, v4}, Lcom/android/mms/ui/MailBoxMessageList;->-set3(Lcom/android/mms/ui/MailBoxMessageList;I)I

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageList;->-get6(Lcom/android/mms/ui/MailBoxMessageList;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get6(Lcom/android/mms/ui/MailBoxMessageList;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0, v3}, Lcom/android/mms/ui/MailBoxMessageList;->-set5(Lcom/android/mms/ui/MailBoxMessageList;I)I

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get10(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get10(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 477
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap6(Lcom/android/mms/ui/MailBoxMessageList;)V

    .line 478
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "box_spinner_type"

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v2}, Lcom/android/mms/ui/MailBoxMessageList;->-get6(Lcom/android/mms/ui/MailBoxMessageList;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    return-void

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$5;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get10(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0
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
    .line 486
    return-void
.end method
