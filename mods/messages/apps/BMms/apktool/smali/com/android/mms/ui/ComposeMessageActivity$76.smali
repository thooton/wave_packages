.class Lcom/android/mms/ui/ComposeMessageActivity$76;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 6663
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6670
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 6665
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get34(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6666
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get34(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;->closeViewAndKB()V

    .line 6667
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->closeKB(Landroid/app/Activity;)V

    goto :goto_0

    .line 6663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
