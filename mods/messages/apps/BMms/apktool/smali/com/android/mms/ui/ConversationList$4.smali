.class Lcom/android/mms/ui/ConversationList$4;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1146
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get11(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1147
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-gez v1, :cond_1

    .line 1148
    :cond_0
    return-void

    .line 1150
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v1, v0}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1151
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1152
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1155
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1156
    const v1, 0x7f070124

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1159
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1161
    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1162
    const/4 v0, 0x2

    const v1, 0x7f0701a9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1167
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get8(Lcom/android/mms/ui/ConversationList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1168
    const v0, 0x7f070123

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1170
    :cond_3
    return-void

    .line 1164
    :cond_4
    const/4 v0, 0x3

    const v1, 0x7f0701aa

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method
