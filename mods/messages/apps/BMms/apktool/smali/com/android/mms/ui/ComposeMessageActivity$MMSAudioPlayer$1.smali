.class Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->initMediaPlayer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    .line 10895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 10898
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set12(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 10899
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;->-wrap0(Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)V

    .line 10900
    return-void
.end method
