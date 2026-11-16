.class final Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;
.super Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.source "SearchConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchConversationActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SearchConversationActivity;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    .line 342
    invoke-direct {p0, p2}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 343
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    const-string/jumbo v1, "SearchConversationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onQueryComplete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 356
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    const-string/jumbo v1, "SearchConversationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onQueryComplete unknown token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 350
    :pswitch_0
    if-eqz p3, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    const-string/jumbo v1, "SearchConversationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cursor count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SearchConversationActivity;->-get1(Lcom/android/mms/ui/SearchConversationActivity;)Lcom/android/mms/ui/ConversationListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/ConversationListViewAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
    .end packed-switch
.end method
