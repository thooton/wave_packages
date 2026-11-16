.class Lcom/android/mms/ui/ComposeMessageActivity$24$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$24;->onGroupInviteExpired(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$24;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$24;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$24$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$24;

    .line 10632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10635
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$24$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$24;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$24;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v1, 0x7f0700fb

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap81(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 10636
    return-void
.end method
