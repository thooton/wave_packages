.class Lcom/android/mms/ui/ComposeMessageActivity$78;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 6753
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get3(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6754
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get3(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6756
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get22(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get34(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6757
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get34(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;->getEmojiView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 6758
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get34(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;->closeViewAndKB()V

    .line 6760
    :cond_1
    return-void
.end method
