.class final synthetic Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/providers/contacts/sqlite/SqlChecker;

    iget-object v1, p0, Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M$1;->-$f2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/providers/contacts/sqlite/SqlChecker;->lambda$-com_android_providers_contacts_sqlite_SqlChecker_3532(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M$1;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M$1;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/sqlite/-$Lambda$91DD5ZHcXlSLr7YHcSmJ0UwEN1M$1;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
