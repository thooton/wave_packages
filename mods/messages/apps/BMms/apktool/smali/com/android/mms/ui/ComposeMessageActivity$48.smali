.class Lcom/android/mms/ui/ComposeMessageActivity$48;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onAttachmentChanged()V
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 3996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3999
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap35(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4000
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap85(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4001
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap11(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap36(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 4002
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get22(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get43(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4003
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap66(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 4004
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set18(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 4006
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$48;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap82(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4007
    return-void
.end method
