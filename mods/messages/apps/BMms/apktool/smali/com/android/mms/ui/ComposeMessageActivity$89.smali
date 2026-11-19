.class Lcom/android/mms/ui/ComposeMessageActivity$89;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showAddBlacklistDialog()V
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 10010
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10011
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    const/4 v2, 0x1

    .line 10010
    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsUtils;->addNumberToFirewall(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)V

    .line 10012
    return-void
.end method
