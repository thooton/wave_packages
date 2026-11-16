.class Lcom/android/mms/ui/PlayVideoOrPicActivity$3;
.super Ljava/lang/Object;
.source "PlayVideoOrPicActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/PlayVideoOrPicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$3;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$3;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get6(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$3;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get5(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getDisplayTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$3;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-wrap2(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    .line 159
    return-void
.end method
