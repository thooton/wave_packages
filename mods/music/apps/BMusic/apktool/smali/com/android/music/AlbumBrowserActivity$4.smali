.class Lcom/android/music/AlbumBrowserActivity$4;
.super Landroid/os/Handler;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/AlbumBrowserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$4;->this$0:Lcom/android/music/AlbumBrowserActivity;

    .line 392
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$4;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v0, v2}, Lcom/android/music/AlbumBrowserActivity;->-set2(Lcom/android/music/AlbumBrowserActivity;I)I

    .line 396
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 412
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 398
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$4;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 400
    new-instance v1, Lcom/android/music/AlbumBrowserActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/music/AlbumBrowserActivity$4$1;-><init>(Lcom/android/music/AlbumBrowserActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 405
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 406
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$4;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/android/music/AlbumBrowserActivity;->-get3(Lcom/android/music/AlbumBrowserActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 407
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelected(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$4;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v0, v2}, Lcom/android/music/AlbumBrowserActivity;->-set1(Lcom/android/music/AlbumBrowserActivity;Z)Z

    .line 414
    return-void

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
