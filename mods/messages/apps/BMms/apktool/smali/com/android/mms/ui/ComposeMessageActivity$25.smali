.class Lcom/android/mms/ui/ComposeMessageActivity$25;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pos:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field time:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 10934
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10935
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get16(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get55(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10936
    return-void

    .line 10938
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->pos:I

    .line 10939
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->time:I

    .line 10940
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->time:I

    if-eqz v0, :cond_1

    .line 10941
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get54(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->pos:I

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getDisplayTime(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->pos:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->time:I

    div-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;->update(Ljava/lang/String;I)V

    .line 10943
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get16(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$25;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get55(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10944
    return-void
.end method
