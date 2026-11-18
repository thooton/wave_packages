.class Lcom/android/music/TrackBrowserActivity$6;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    .line 686
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 689
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.music.metadatachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 692
    const-string/jumbo v1, "com.android.music.queuechanged"

    .line 691
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->-get4(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0, v2}, Lcom/android/music/TrackBrowserActivity;->-set1(Lcom/android/music/TrackBrowserActivity;Z)Z

    .line 698
    return-void

    .line 703
    :cond_2
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-nez v0, :cond_3

    .line 704
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    .line 705
    return-void

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->-get0(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 708
    new-instance v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .line 709
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v3}, Lcom/android/music/TrackBrowserActivity;->-get3(Lcom/android/music/TrackBrowserActivity;)[Ljava/lang/String;

    move-result-object v3

    .line 708
    invoke-direct {v0, v1, v2, v3}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 710
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 711
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    .line 712
    return-void

    .line 714
    :cond_4
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->-get0(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
