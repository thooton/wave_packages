.class Lcom/android/music/MediaPlaybackActivity$15;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 1466
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 1469
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1498
    :goto_0
    :pswitch_0
    return-void

    .line 1471
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get0(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1472
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->-get0(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto :goto_0

    .line 1476
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->-get12(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-wrap0(Lcom/android/music/MediaPlaybackActivity;Z)J

    move-result-wide v0

    .line 1477
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->-wrap3(Lcom/android/music/MediaPlaybackActivity;J)V

    goto :goto_0

    .line 1483
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1484
    const v1, 0x7f070049

    .line 1483
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1485
    const v1, 0x7f07004a

    .line 1483
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1487
    new-instance v1, Lcom/android/music/MediaPlaybackActivity$15$1;

    invoke-direct {v1, p0}, Lcom/android/music/MediaPlaybackActivity$15$1;-><init>(Lcom/android/music/MediaPlaybackActivity$15;)V

    .line 1486
    const v2, 0x7f07004b

    .line 1483
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1492
    const/4 v1, 0x0

    .line 1483
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
