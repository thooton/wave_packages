.class Lcom/android/music/TrackBrowserActivity$2;
.super Landroid/os/Handler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$2;->this$0:Lcom/android/music/TrackBrowserActivity;

    .line 360
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$2;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->-get0(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$2;->this$0:Lcom/android/music/TrackBrowserActivity;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$2;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->-get0(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/music/TrackBrowserActivity;->-wrap0(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 369
    :cond_0
    return-void
.end method
