.class Lcom/android/mms/ui/ComposeMessageActivity$41;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$41;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 2992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2995
    if-nez p2, :cond_1

    .line 2996
    check-cast p1, Lcom/android/mms/ui/RecipientsEditor;

    .line 2997
    invoke-virtual {p1, v3}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 2998
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$41;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap90(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 2999
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$41;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get22(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3000
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$41;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap28(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 3007
    :cond_0
    :goto_0
    return-void

    .line 3003
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$41;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get3(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3004
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$41;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get3(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
