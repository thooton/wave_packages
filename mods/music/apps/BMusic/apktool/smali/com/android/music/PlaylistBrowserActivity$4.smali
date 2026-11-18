.class Lcom/android/music/PlaylistBrowserActivity$4;
.super Landroid/os/Handler;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    .line 560
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v0, v2}, Lcom/android/music/PlaylistBrowserActivity;->-set1(Lcom/android/music/PlaylistBrowserActivity;I)I

    .line 564
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 580
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 566
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 568
    new-instance v1, Lcom/android/music/PlaylistBrowserActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/music/PlaylistBrowserActivity$4$1;-><init>(Lcom/android/music/PlaylistBrowserActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 573
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 574
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v1}, Lcom/android/music/PlaylistBrowserActivity;->-get2(Lcom/android/music/PlaylistBrowserActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 575
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelected(Z)V

    .line 576
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$4;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v0, v2}, Lcom/android/music/PlaylistBrowserActivity;->-set0(Lcom/android/music/PlaylistBrowserActivity;Z)Z

    .line 582
    return-void

    .line 564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
