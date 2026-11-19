.class public Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationMultiSelectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationMultiSelectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleteLockedMessages:Z

.field private final mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;

.field private final mThreadIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    return-object v0
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/android/mms/data/Conversation$ConversationQueryHandler;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/mms/data/Conversation$ConversationQueryHandler;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    .line 423
    iput-object p2, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    .line 424
    iput-object p3, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 425
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    .line 434
    new-instance v2, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;)V

    const/16 v3, 0x81

    .line 433
    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/Collection;ILjava/lang/Runnable;)V

    .line 447
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 449
    sget-object v0, Lcom/android/mms/ui/ConversationMultiSelectList;->mSelectedThreadIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 450
    return-void
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationMultiSelectList$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 429
    return-void
.end method
