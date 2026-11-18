.class public Lcom/android/mms/ext/ConversationListExt;
.super Ljava/lang/Object;
.source "ConversationListExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ext/ConversationListExt$ThreadListQueryHandler;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mQueryHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ext/ConversationListExt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ext/ConversationListExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/mms/ext/ConversationListExt;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/android/mms/ext/ConversationListExt$ThreadListQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ext/ConversationListExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ext/ConversationListExt$ThreadListQueryHandler;-><init>(Lcom/android/mms/ext/ConversationListExt;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ext/ConversationListExt;->mQueryHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    .line 52
    return-void
.end method


# virtual methods
.method public initQueryForUnreadThreads()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/ext/ConversationListExt;->mQueryHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    .line 56
    # PERF(inbox filter): seek the SMS index; scan MMS at most once on stock providers.
    const-string/jumbo v1, "read=0 and (EXISTS (SELECT 1 FROM sms WHERE sms.thread_id=threads._id) OR _id IN (SELECT DISTINCT thread_id FROM pdu WHERE thread_id NOT NULL))"

    .line 55
    const/16 v2, 0x6a9

    invoke-static {v0, v2, v1}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 57
    return-void
.end method
