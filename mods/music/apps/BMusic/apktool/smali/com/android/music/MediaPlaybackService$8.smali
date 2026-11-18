.class Lcom/android/music/MediaPlaybackService$8;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 1110
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1114
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0, v2}, Lcom/android/music/MediaPlaybackService;->-wrap8(Lcom/android/music/MediaPlaybackService;Z)V

    .line 1116
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-set2(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 1117
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-get5(Lcom/android/music/MediaPlaybackService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-set1(Lcom/android/music/MediaPlaybackService;I)I

    .line 1120
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1123
    return-void

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 1126
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 1125
    invoke-static {v1}, Lcom/android/music/MusicUtils;->getCardId(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-set0(Lcom/android/music/MediaPlaybackService;I)I

    .line 1127
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->-wrap7(Lcom/android/music/MediaPlaybackService;)V

    .line 1128
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0, v2}, Lcom/android/music/MediaPlaybackService;->-set2(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 1130
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v1, "com.android.music.playstatechanged"

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-wrap4(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v1, "com.android.music.queuechanged"

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-wrap4(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$8;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v1, "com.android.music.metadatachanged"

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-wrap4(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0
.end method
