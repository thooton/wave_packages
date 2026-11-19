.class Lcom/android/mms/ui/ComposeMessageActivity$53;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->val$number:Ljava/lang/String;

    .line 4229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->val$number:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4232
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->val$number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap13(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Z

    move-result v0

    .line 4233
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get56(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4234
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get5(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    .line 4235
    const/4 v1, 0x0

    .line 4234
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4238
    :cond_0
    return-void
.end method
