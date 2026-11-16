.class public Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private final mCallBack:Ljava/lang/Runnable;

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
.method static synthetic -get0(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mCallBack:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    return-object v0
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/android/mms/data/Conversation$ConversationQueryHandler;Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/mms/data/Conversation$ConversationQueryHandler;",
            "Ljava/lang/Runnable;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    .line 1366
    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    .line 1367
    iput-object p4, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 1368
    iput-object p3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mCallBack:Ljava/lang/Runnable;

    .line 1369
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    .line 1378
    new-instance v2, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V

    const/16 v3, 0x81

    .line 1377
    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/Collection;ILjava/lang/Runnable;)V

    .line 1411
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1412
    return-void
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0

    .prologue
    .line 1372
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 1373
    return-void
.end method
