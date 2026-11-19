.class final Lcom/android/mms/ui/MessageUtils$7;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/Collection;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$addressMap:Ljava/util/Map;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$phoneIdMap:Ljava/util/Map;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$7;->val$addressMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$7;->val$phoneIdMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$7;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/mms/ui/MessageUtils$7;->val$status:I

    iput-object p5, p0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7;->val$addressMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1611
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1612
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$7;->val$phoneIdMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1613
    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$7;->val$context:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1614
    iget v5, p0, Lcom/android/mms/ui/MessageUtils$7;->val$status:I

    .line 1613
    invoke-static {v4, v0, v1, v2, v5}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1618
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1620
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1621
    return-void
.end method
