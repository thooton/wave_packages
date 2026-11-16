.class Lcom/android/mms/ui/MessageSlideEditorActivity$7;
.super Ljava/lang/Object;
.source "MessageSlideEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageSlideEditorActivity;->showAddAttachmentDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

.field final synthetic val$replace:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageSlideEditorActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$7;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$7;->val$replace:Z

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$7;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$7;->this$0:Lcom/android/mms/ui/MessageSlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-get1(Lcom/android/mms/ui/MessageSlideEditorActivity;)Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageSlideEditorActivity$7;->val$replace:Z

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageSlideEditorActivity;->-wrap4(Lcom/android/mms/ui/MessageSlideEditorActivity;IZ)V

    .line 835
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 836
    return-void
.end method
