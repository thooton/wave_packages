.class Lcom/android/mms/ui/ConversationList$5;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$5;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1316
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1317
    sparse-switch p2, :sswitch_data_0

    .line 1352
    :cond_0
    :goto_0
    return v6

    .line 1320
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$5;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    .line 1321
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1322
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$5;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 1324
    :cond_1
    return v5

    .line 1327
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1328
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1330
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$5;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1331
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-gez v1, :cond_4

    .line 1332
    :cond_3
    return v6

    .line 1335
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$5;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1334
    invoke-static {v1, v0}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1336
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1337
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 1338
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    .line 1339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1340
    invoke-virtual {v0, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1339
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1338
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1341
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$5;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 1342
    return v5

    .line 1343
    :cond_5
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$5;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 1345
    const v1, 0x7f07037a

    .line 1344
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1347
    return v5

    .line 1317
    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch

    .line 1328
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
