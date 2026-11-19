.class Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mMessageItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 1268
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1272
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1273
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 1274
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1297
    return-void
.end method
