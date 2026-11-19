.class Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1381
    const/16 v1, 0x709

    .line 1382
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get0(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get0(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get1(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/ui/ConversationList;

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get1(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get4(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/ui/ConversationList;->-wrap9(Lcom/android/mms/ui/ConversationList;Ljava/util/Collection;)V

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get4(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1389
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->-get7()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1390
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get1(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get4(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v2

    .line 1391
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get2(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v3

    const/4 v4, 0x1

    .line 1390
    invoke-static {v0, v2, v3, v4}, Lcom/android/mms/rcs/RcsUtils;->deleteGroupchatByThreadIds(Landroid/content/Context;Ljava/util/Collection;ZZ)V

    .line 1393
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get3(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get2(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/Conversation;->startDeleteAll(Lcom/android/mms/data/Conversation$ConversationQueryHandler;IZ)V

    .line 1394
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 1409
    :goto_0
    return-void

    .line 1396
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get4(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 1397
    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get0(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1400
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get4(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Long;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/mms/ui/ConversationList;->-set6(J)J

    .line 1401
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->-get7()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1402
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get1(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get4(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v2

    .line 1403
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get2(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v3

    .line 1402
    invoke-static {v0, v2, v3, v4}, Lcom/android/mms/rcs/RcsUtils;->deleteGroupchatByThreadIds(Landroid/content/Context;Ljava/util/Collection;ZZ)V

    .line 1406
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get3(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get2(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z

    move-result v2

    .line 1407
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->-get4(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;

    move-result-object v3

    .line 1406
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->startDelete(Lcom/android/mms/data/Conversation$ConversationQueryHandler;IZLjava/util/Collection;)V

    goto :goto_0
.end method
