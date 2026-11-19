.class Lcom/android/mms/ui/ComposeMessageActivity$90;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->cacheWorkingMessage()V
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 10037
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get1(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10038
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap26(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 10039
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->clearCacheRcsMessage()V

    .line 10041
    :cond_0
    return-void
.end method
