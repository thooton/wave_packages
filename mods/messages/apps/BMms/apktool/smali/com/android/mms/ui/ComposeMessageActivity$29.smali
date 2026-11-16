.class Lcom/android/mms/ui/ComposeMessageActivity$29;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$subjectSize:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$subjectSize:I

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get49(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 902
    return-void

    .line 904
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 905
    const-class v2, Lcom/android/mms/ui/MessageSlideEditorActivity;

    .line 904
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 906
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get49(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 907
    const-string/jumbo v1, "subject_size"

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->val$subjectSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v2, 0x6a

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 909
    return-void
.end method
