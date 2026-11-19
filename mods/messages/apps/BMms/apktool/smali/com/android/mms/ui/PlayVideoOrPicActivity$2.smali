.class Lcom/android/mms/ui/PlayVideoOrPicActivity$2;
.super Ljava/lang/Object;
.source "PlayVideoOrPicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$2;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$2;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get5(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$2;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-wrap1(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$2;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-wrap6(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$2;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-wrap2(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    goto :goto_0
.end method
