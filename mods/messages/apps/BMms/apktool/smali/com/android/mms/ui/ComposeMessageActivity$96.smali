.class Lcom/android/mms/ui/ComposeMessageActivity$96;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->ensureCreationMode(Lcom/android/mms/ui/MessageItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$messageItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->val$messageItem:Lcom/android/mms/ui/MessageItem;

    .line 11174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 11177
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->val$messageItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap41(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 11178
    return-void
.end method
