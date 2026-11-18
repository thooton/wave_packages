.class Lcom/android/music/ArtistAlbumBrowserActivity$4;
.super Landroid/os/Handler;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$4;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    .line 567
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 570
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$4;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v0, v2}, Lcom/android/music/ArtistAlbumBrowserActivity;->-set2(Lcom/android/music/ArtistAlbumBrowserActivity;I)I

    .line 571
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 587
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 573
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$4;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->requestFocus()Z

    .line 575
    new-instance v1, Lcom/android/music/ArtistAlbumBrowserActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$4$1;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 580
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(I)V

    .line 581
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$4;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->-get3(Lcom/android/music/ArtistAlbumBrowserActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelection(I)V

    .line 582
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelected(Z)V

    .line 583
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$4;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v0, v2}, Lcom/android/music/ArtistAlbumBrowserActivity;->-set1(Lcom/android/music/ArtistAlbumBrowserActivity;Z)Z

    .line 589
    return-void

    .line 571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
