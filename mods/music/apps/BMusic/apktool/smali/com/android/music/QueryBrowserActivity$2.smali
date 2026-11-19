.class Lcom/android/music/QueryBrowserActivity$2;
.super Landroid/os/Handler;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/QueryBrowserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$2;->this$0:Lcom/android/music/QueryBrowserActivity;

    .line 354
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$2;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-static {v0}, Lcom/android/music/QueryBrowserActivity;->-get0(Lcom/android/music/QueryBrowserActivity;)Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$2;->this$0:Lcom/android/music/QueryBrowserActivity;

    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity$2;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-static {v1}, Lcom/android/music/QueryBrowserActivity;->-get0(Lcom/android/music/QueryBrowserActivity;)Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/music/QueryBrowserActivity;->-wrap0(Lcom/android/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 363
    :cond_0
    return-void
.end method
