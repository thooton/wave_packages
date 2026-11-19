.class Lcom/android/mms/ui/ComposeMessageActivity$57;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$replace:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->val$replace:Z

    .line 5350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 5353
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get4(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$57;->val$replace:Z

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap18(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V

    .line 5354
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5355
    return-void
.end method
