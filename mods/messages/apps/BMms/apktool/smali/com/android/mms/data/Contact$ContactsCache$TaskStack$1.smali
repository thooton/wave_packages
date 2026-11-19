.class Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$2:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 585
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$2:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-static {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->-get0(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$2:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-static {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->-get0(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 588
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$2:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-static {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->-get0(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$2:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-static {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->-get0(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$2:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-static {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->-get0(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v2

    .line 597
    if-eqz v0, :cond_0

    .line 598
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    monitor-exit v2

    .line 601
    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
