.class final Lcom/android/mms/ext/ConversationListExt$ThreadListQueryHandler;
.super Lcom/android/mms/data/Conversation$ConversationQueryHandler;
.source "ConversationListExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ext/ConversationListExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ext/ConversationListExt;


# direct methods
.method public constructor <init>(Lcom/android/mms/ext/ConversationListExt;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mms/ext/ConversationListExt$ThreadListQueryHandler;->this$0:Lcom/android/mms/ext/ConversationListExt;

    .line 61
    invoke-direct {p0, p2}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/data/Conversation$ConversationQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 89
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 82
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQueryComplete called with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 68
    :pswitch_0
    if-eqz p3, :cond_0

    .line 70
    :goto_1
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/mms/ext/ConversationListExt$ThreadListQueryHandler;->this$0:Lcom/android/mms/ext/ConversationListExt;

    invoke-static {v0}, Lcom/android/mms/ext/ConversationListExt;->-get0(Lcom/android/mms/ext/ConversationListExt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 76
    throw v0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x6a9
        :pswitch_0
    .end packed-switch
.end method
