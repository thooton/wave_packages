.class Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;
.super Landroid/os/AsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    .line 1274
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1275
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1276
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->-get0(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1277
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->-get0(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V

    .line 1279
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;

    move-result-object v2

    .line 1280
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->-get0(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1279
    invoke-virtual {v2, v3}, Lcom/android/mms/util/PduLoaderManager;->removePdu(Landroid/net/Uri;)V

    .line 1284
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1285
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 1286
    :goto_0
    if-eqz v3, :cond_1

    .line 1287
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    .line 1288
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1289
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->-get0(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get6(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v0

    .line 1292
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->-get0(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v3, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1293
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->-get0(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v1, :cond_4

    move-object v4, v5

    .line 1291
    :goto_2
    const/16 v1, 0x25e4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1294
    return-object v5

    :cond_2
    move-object v3, v5

    .line 1285
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1289
    goto :goto_1

    .line 1293
    :cond_4
    const-string/jumbo v4, "locked=0"

    goto :goto_2
.end method
