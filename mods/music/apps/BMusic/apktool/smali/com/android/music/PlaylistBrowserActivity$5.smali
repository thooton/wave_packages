.class Lcom/android/music/PlaylistBrowserActivity$5;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/PlaylistBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$5;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    iput-object p2, p0, Lcom/android/music/PlaylistBrowserActivity$5;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/music/PlaylistBrowserActivity$5;->val$intent:Landroid/content/Intent;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 111
    const-string/jumbo v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$5;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    if-nez v0, :cond_2

    .line 115
    const-string/jumbo v0, "PlaylistBrowserActivity"

    const-string/jumbo v1, "Unexpected:getExtras() returns null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$5;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    .line 144
    const v1, 0x7f070080

    .line 143
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$5;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    .line 148
    return-void

    .line 118
    :cond_2
    :try_start_0
    const-string/jumbo v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 119
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 120
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$5;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/android/music/PlaylistBrowserActivity;->-wrap3(Lcom/android/music/PlaylistBrowserActivity;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string/jumbo v0, "PlaylistBrowserActivity"

    const-string/jumbo v1, "Playlist id missing or broken"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_3
    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$5;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/android/music/PlaylistBrowserActivity;->-wrap2(Lcom/android/music/PlaylistBrowserActivity;)V

    goto :goto_0

    .line 123
    :cond_4
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 125
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$5;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    .line 124
    invoke-static {v0}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$5;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    .line 129
    const/4 v2, 0x0

    .line 127
    invoke-static {v1, v0, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 133
    :cond_5
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity$5;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    .line 132
    invoke-static {v2, v0, v1}, Lcom/android/music/MusicUtils;->playPlaylist(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 150
    :cond_6
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$5;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 151
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
