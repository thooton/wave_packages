.class Lcom/android/mms/data/WorkingMessage$2;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$mmsUri:Landroid/net/Uri;

.field final synthetic val$persister:Lcom/google/android/mms/pdu/PduPersister;

.field final synthetic val$slideshow:Lcom/android/mms/model/SlideshowModel;

.field final synthetic val$subject:Ljava/lang/CharSequence;

.field final synthetic val$textOnly:Z


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$2;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$2;->val$subject:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$2;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object p5, p0, Lcom/android/mms/data/WorkingMessage$2;->val$mmsUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/android/mms/data/WorkingMessage$2;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iput-boolean p7, p0, Lcom/android/mms/data/WorkingMessage$2;->val$textOnly:Z

    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$2;->val$subject:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->-wrap3(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v5

    .line 1416
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$2;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->prepareForSend()V

    .line 1417
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$2;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$2;->val$mmsUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$2;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$2;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iget-boolean v6, p0, Lcom/android/mms/data/WorkingMessage$2;->val$textOnly:Z

    invoke-static/range {v0 .. v6}, Lcom/android/mms/data/WorkingMessage;->-wrap9(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Z)V

    .line 1419
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$2;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->-wrap12(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V

    .line 1420
    return-void
.end method
