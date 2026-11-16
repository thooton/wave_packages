.class Lcom/android/mms/ui/RecipientListActivity$2;
.super Ljava/lang/Object;
.source "RecipientListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientListActivity;

.field final synthetic val$contacts:Lcom/android/mms/data/ContactList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientListActivity;Lcom/android/mms/data/ContactList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    iput-object p2, p0, Lcom/android/mms/ui/RecipientListActivity$2;->val$contacts:Lcom/android/mms/data/ContactList;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$2;->val$contacts:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, p3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$2;->val$contacts:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, p3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientListActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$2;->val$contacts:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, p3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/RecipientListActivity;->-wrap0(Lcom/android/mms/ui/RecipientListActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
