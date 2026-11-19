.class Lcom/android/mms/data/Conversation$ThreadUpateHandler;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadUpateHandler"
.end annotation


# static fields
.field private static final sHandler:Landroid/os/Handler;

.field private static final sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1825
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ThreadUpateHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1824
    sput-object v0, Lcom/android/mms/data/Conversation$ThreadUpateHandler;->sHandlerThread:Landroid/os/HandlerThread;

    .line 1829
    sget-object v0, Lcom/android/mms/data/Conversation$ThreadUpateHandler;->sHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1830
    sget-object v0, Lcom/android/mms/data/Conversation$ThreadUpateHandler;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1831
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/mms/data/Conversation$ThreadUpateHandler;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/mms/data/Conversation$ThreadUpateHandler;->sHandler:Landroid/os/Handler;

    .line 1823
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1835
    sget-object v0, Lcom/android/mms/data/Conversation$ThreadUpateHandler;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1836
    return-void
.end method
