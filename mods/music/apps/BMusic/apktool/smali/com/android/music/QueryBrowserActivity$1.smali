.class Lcom/android/music/QueryBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    .line 346
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 350
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-static {v0}, Lcom/android/music/QueryBrowserActivity;->-get2(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 351
    return-void
.end method
