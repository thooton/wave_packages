.class Lcom/android/mms/ui/RecipientListActivity$3;
.super Ljava/lang/Object;
.source "RecipientListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientListActivity;->addNumberToContacts(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListActivity$3;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$3;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity$3;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-static {v1}, Lcom/android/mms/ui/RecipientListActivity;->-get0(Lcom/android/mms/ui/RecipientListActivity;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/RecipientListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 233
    return-void
.end method
