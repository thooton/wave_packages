.class Lcom/android/mms/ui/RecipientListActivity$1;
.super Ljava/lang/Object;
.source "RecipientListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListActivity$1;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    iput-object p2, p0, Lcom/android/mms/ui/RecipientListActivity$1;->val$contacts:Lcom/android/mms/data/ContactList;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 95
    packed-switch p2, :pswitch_data_0

    .line 106
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$1;->val$contacts:Lcom/android/mms/data/ContactList;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity$1;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-static {v1}, Lcom/android/mms/ui/RecipientListActivity;->-get1(Lcom/android/mms/ui/RecipientListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 99
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$1;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientListActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    const/4 v0, 0x1

    return v0

    .line 95
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
