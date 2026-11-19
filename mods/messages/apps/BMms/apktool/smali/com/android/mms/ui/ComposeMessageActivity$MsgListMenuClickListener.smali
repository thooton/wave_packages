.class final Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    .prologue
    .line 2300
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2301
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 2302
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 2306
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    .line 2307
    return v2

    .line 2310
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2345
    return v2

    .line 2312
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->ensureCreationMode(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2313
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap41(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2315
    :cond_1
    return v4

    .line 2318
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap61(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2319
    return v4

    .line 2322
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap12(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    return v0

    .line 2325
    :sswitch_3
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2326
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v1, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap30(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 2327
    return v4

    .line 2331
    :sswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap57(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V

    .line 2332
    return v4

    .line 2336
    :sswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap57(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V

    .line 2337
    return v4

    .line 2341
    :sswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap72(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V

    .line 2342
    return v4

    .line 2310
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
        0x14 -> :sswitch_6
        0x15 -> :sswitch_0
        0x1c -> :sswitch_4
        0x1d -> :sswitch_5
        0x34 -> :sswitch_1
    .end sparse-switch
.end method
