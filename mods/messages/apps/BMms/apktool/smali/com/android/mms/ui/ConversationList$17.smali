.class Lcom/android/mms/ui/ConversationList$17;
.super Landroid/os/AsyncTask;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->updateNotificationView(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/database/Cursor;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mUnreadCount:I

.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1624
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1625
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationList$17;->mUnreadCount:I

    .line 1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v2, -0x1

    move-wide v0, v2

    move-wide v4, v2

    .line 1638
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aget-object v7, p1, v8

    .line 1637
    invoke-static {v6, v7}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v6

    .line 1639
    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1640
    cmp-long v7, v4, v2

    if-nez v7, :cond_1

    .line 1641
    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    .line 1643
    :cond_1
    iget v6, p0, Lcom/android/mms/ui/ConversationList$17;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/mms/ui/ConversationList$17;->mUnreadCount:I

    .line 1649
    :cond_2
    :goto_0
    aget-object v6, p1, v8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1651
    aget-object v6, p1, v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1653
    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1645
    :cond_3
    cmp-long v7, v0, v2

    if-nez v7, :cond_2

    .line 1646
    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    move-wide v4, v0

    .line 1654
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1632
    check-cast p1, [Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationList$17;->doInBackground([Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1659
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1660
    return-void

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1663
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1662
    invoke-static {v0, v2, v3, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1664
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1666
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v2

    .line 1665
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1667
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->-get12(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v3, v1}, Lcom/android/mms/ui/ConversationList;->-wrap0(Lcom/android/mms/ui/ConversationList;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v0

    .line 1670
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1671
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->-get14(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1672
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->-get14(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1673
    const v3, 0x7f0a0006

    .line 1672
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1675
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->-get14(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v2, v0}, Lcom/android/mms/ui/ConversationList;->-wrap0(Lcom/android/mms/ui/ConversationList;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1680
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    new-array v1, v7, [Ljava/lang/Object;

    .line 1682
    iget v2, p0, Lcom/android/mms/ui/ConversationList$17;->mUnreadCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1680
    const v2, 0x7f070352

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/ConversationList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1683
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->-get13(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v2, v0}, Lcom/android/mms/ui/ConversationList;->-wrap0(Lcom/android/mms/ui/ConversationList;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1684
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get15(Lcom/android/mms/ui/ConversationList;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1685
    const v2, 0x7f020018

    .line 1684
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1707
    :goto_1
    return-void

    .line 1677
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get14(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1688
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->-get12(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v1

    .line 1689
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1690
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v4

    .line 1688
    invoke-static {v2, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1692
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v0

    .line 1693
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1694
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->-get14(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1695
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->-get14(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1696
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get14(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1701
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get13(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v0

    .line 1702
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    const v2, 0x7f070351

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1701
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1703
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get15(Lcom/android/mms/ui/ConversationList;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1704
    const v2, 0x7f020017

    .line 1703
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1698
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get14(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1657
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationList$17;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->-wrap8(Lcom/android/mms/ui/ConversationList;Z)V

    .line 1630
    return-void
.end method
