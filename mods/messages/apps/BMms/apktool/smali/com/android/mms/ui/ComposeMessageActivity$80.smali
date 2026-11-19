.class Lcom/android/mms/ui/ComposeMessageActivity$80;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->loadDraft()Z
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$80;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6954
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$80;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$80$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$80$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$80;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6963
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$80;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$80;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap11(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap36(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 6964
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$80;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap35(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6965
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$80;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap85(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6966
    return-void
.end method
