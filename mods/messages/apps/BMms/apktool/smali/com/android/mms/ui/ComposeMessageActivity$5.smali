.class Lcom/android/mms/ui/ComposeMessageActivity$5;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2008
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap7(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2009
    return-void

    .line 2013
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get29(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2018
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2019
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2021
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap23(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2023
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 2024
    if-nez v0, :cond_1

    .line 2025
    const-string/jumbo v0, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot load message item for type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2026
    const-string/jumbo v4, ", msgId = "

    .line 2025
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    return-void

    .line 2014
    :catch_0
    move-exception v0

    .line 2015
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Unexpected ClassCastException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2016
    return-void

    .line 2030
    :cond_1
    const v1, 0x7f07014c

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 2032
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v4, v0}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2034
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4, p1, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap21(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/Menu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    # FEAT(imessage): "React" and "Reactions" on iMessages.
    invoke-static {p1, v4, v0}, Lcom/android/mms/ui/WaveTapbacks;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;)V

    .line 2037
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap8(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2038
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-get24(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    .line 2037
    if-eqz v2, :cond_3

    .line 2039
    const/16 v2, 0x15

    const v3, 0x7f07013a

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2042
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2043
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2044
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-le v2, v6, :cond_3

    .line 2045
    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v2, v6, :cond_3

    .line 2046
    const/16 v2, 0x34

    const v3, 0x7f070106

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2053
    :cond_3
    iget-boolean v2, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-get24(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2054
    const/16 v2, 0x1d

    const v3, 0x7f070216

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2061
    :cond_4
    :goto_0
    const/16 v2, 0x11

    const v3, 0x7f070130

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2064
    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v3, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v2, v3, :cond_5

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v0, :cond_6

    .line 2065
    :cond_5
    const/16 v0, 0x14

    const v2, 0x7f070131

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2069
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get24(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2070
    const/16 v0, 0x12

    const v2, 0x7f070132

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2073
    :cond_7
    return-void

    .line 2056
    :cond_8
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$5;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-get24(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2057
    const/16 v2, 0x1c

    const v3, 0x7f070215

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method
