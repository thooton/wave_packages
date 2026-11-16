.class Lcom/android/mms/ui/MessageUtils$6$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageUtils$6;

.field final synthetic val$append:Z

.field final synthetic val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field final synthetic val$part:Lcom/google/android/mms/pdu/PduPart;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$6;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$6$1;->this$1:Lcom/android/mms/ui/MessageUtils$6;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$6$1;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$6$1;->val$part:Lcom/google/android/mms/pdu/PduPart;

    iput-boolean p4, p0, Lcom/android/mms/ui/MessageUtils$6$1;->val$append:Z

    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$6$1;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$6$1;->val$part:Lcom/google/android/mms/pdu/PduPart;

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageUtils$6$1;->val$append:Z

    invoke-interface {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;->onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V

    .line 1433
    return-void
.end method
