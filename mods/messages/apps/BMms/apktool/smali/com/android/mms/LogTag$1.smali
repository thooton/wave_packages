.class final Lcom/android/mms/LogTag$1;
.super Ljava/lang/Object;
.source "LogTag.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/LogTag$1;->val$context:Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->canonicalTableDump()V

    .line 102
    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->dump()V

    .line 103
    iget-object v0, p0, Lcom/android/mms/LogTag$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->dumpThreadsTable(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/android/mms/data/Conversation;->dump()V

    .line 105
    iget-object v0, p0, Lcom/android/mms/LogTag$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->dumpSmsTable(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Lcom/android/mms/data/Contact;->dump()V

    .line 107
    return-void
.end method
