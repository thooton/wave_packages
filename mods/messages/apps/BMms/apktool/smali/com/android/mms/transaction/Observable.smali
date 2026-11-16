.class public abstract Lcom/android/mms/transaction/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# instance fields
.field private mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/transaction/Observer;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/mms/transaction/Observer;)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 52
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public detach(Lcom/android/mms/transaction/Observer;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string/jumbo v1, "Observable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to detach "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public notifyObservers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Observer;

    invoke-interface {v0, p0}, Lcom/android/mms/transaction/Observer;->update(Lcom/android/mms/transaction/Observable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    iput-object v1, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    .line 83
    throw v0

    .line 84
    :cond_0
    iput-object v1, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    .line 86
    return-void
.end method
