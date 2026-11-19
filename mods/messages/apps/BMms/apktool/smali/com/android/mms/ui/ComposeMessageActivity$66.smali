.class Lcom/android/mms/ui/ComposeMessageActivity$66;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$append:Z

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->val$uri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->val$append:Z

    .line 5952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5955
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->val$uri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->val$append:Z

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap24(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 5956
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$66;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set5(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 5957
    return-void
.end method
