.class Lcom/android/mms/ui/MessageListItem$16;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindRcsBurnMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$16;->this$0:Lcom/android/mms/ui/MessageListItem;

    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$16;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgState()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$16;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->retransmisMessage(Lcom/android/mms/ui/MessageItem;)V

    .line 2017
    :goto_0
    return-void

    .line 2014
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$16;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get2(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$16;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 2015
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$16;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getRcsMsgState()I

    move-result v1

    .line 2014
    invoke-static {v0, v2, v3, v1}, Lcom/android/mms/rcs/RcsChatMessageUtils;->startBurnMessageActivity(Landroid/content/Context;JI)V

    goto :goto_0
.end method
