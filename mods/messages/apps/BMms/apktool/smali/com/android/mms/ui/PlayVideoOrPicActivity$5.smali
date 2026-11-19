.class Lcom/android/mms/ui/PlayVideoOrPicActivity$5;
.super Ljava/lang/Object;
.source "PlayVideoOrPicActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$5;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$5;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get5(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$5;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-wrap5(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    .line 174
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_1
    return v1
.end method
