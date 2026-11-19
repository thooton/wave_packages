.class Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact$ContactsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskStack"
.end annotation


# instance fields
.field private final mThingsToLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mWorkerThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    .line 580
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)V

    .line 602
    const-string/jumbo v2, "Contact.ContactsCache.TaskStack worker thread"

    .line 580
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    .line 603
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 604
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 605
    return-void
.end method


# virtual methods
.method public push(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    monitor-enter v1

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 612
    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
