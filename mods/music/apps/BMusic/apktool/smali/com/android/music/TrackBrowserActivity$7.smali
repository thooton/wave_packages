.class Lcom/android/music/TrackBrowserActivity$7;
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
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$7;->this$0:Lcom/android/music/TrackBrowserActivity;

    .line 881
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 884
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$7;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0, v2}, Lcom/android/music/TrackBrowserActivity;->-set2(Lcom/android/music/TrackBrowserActivity;I)I

    .line 885
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 904
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 887
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$7;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 889
    new-instance v1, Lcom/android/music/TrackBrowserActivity$7$1;

    invoke-direct {v1, p0}, Lcom/android/music/TrackBrowserActivity$7$1;-><init>(Lcom/android/music/TrackBrowserActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 894
    sget-boolean v1, Lcom/android/music/MusicUtils;->mPlaylistTab:Z

    if-eqz v1, :cond_0

    .line 895
    sput-boolean v2, Lcom/android/music/MusicUtils;->mPlaylistTab:Z

    .line 896
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 897
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$7;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->-get6(Lcom/android/music/TrackBrowserActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 899
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelected(Z)V

    .line 900
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$7;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0, v2}, Lcom/android/music/TrackBrowserActivity;->-set0(Lcom/android/music/TrackBrowserActivity;Z)Z

    .line 906
    return-void

    .line 885
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
