.class Lcom/android/mms/ui/ConversationList$12$3;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$12;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$12$3;->this$1:Lcom/android/mms/ui/ConversationList$12;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$12$3;->this$1:Lcom/android/mms/ui/ConversationList$12;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$12;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-wrap5(Lcom/android/mms/ui/ConversationList;)V

    .line 644
    return-void
.end method
