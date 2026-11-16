.class final Lcom/android/mms/data/Conversation$5;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/android/mms/data/Conversation$5;->val$context:Landroid/content/Context;

    .line 1448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/mms/data/Conversation$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->-wrap1(Landroid/content/Context;)V

    .line 1455
    iget-object v0, p0, Lcom/android/mms/data/Conversation$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->-wrap0(Landroid/content/Context;)V

    .line 1458
    iget-object v0, p0, Lcom/android/mms/data/Conversation$5;->val$context:Landroid/content/Context;

    .line 1459
    const-wide/16 v2, -0x2

    .line 1458
    invoke-static {v0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;J)V

    .line 1460
    return-void
.end method
