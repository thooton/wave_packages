.class Lcom/android/music/MediaPlaybackService$9;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackService;->registerA2dpServiceListener()V
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
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$9;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 1145
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v5, 0x7f

    .line 1148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1149
    const-string/jumbo v1, "command"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1150
    const-string/jumbo v2, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerA2dpServiceListener action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const-string/jumbo v2, "com.music.setaddressedplayer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$9;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    const-string/jumbo v2, "com.android.music.playstatusrequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1154
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$9;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v1, "com.android.music.playstatusresponse"

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-wrap4(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_2
    const-string/jumbo v2, "org.codeaurora.music.playersettingsrequest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    const-string/jumbo v0, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1157
    const-string/jumbo v0, "commandExtra"

    .line 1158
    const/16 v1, 0xff

    .line 1157
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1161
    packed-switch v0, :pswitch_data_0

    .line 1190
    const-string/jumbo v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid getCommand"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1163
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$9;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v1, "org.codeaurora.music.playersettingsresponse"

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->-wrap0(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 1167
    :pswitch_1
    const-string/jumbo v0, "Attribute"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    .line 1169
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$9;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v2, "org.codeaurora.music.playersettingsresponse"

    invoke-static {v1, v2, v0}, Lcom/android/music/MediaPlaybackService;->-wrap5(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;B)V

    goto :goto_0

    .line 1173
    :pswitch_2
    const-string/jumbo v0, "Attributes"

    .line 1172
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1174
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$9;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v2, "org.codeaurora.music.playersettingsresponse"

    invoke-static {v1, v2, v0}, Lcom/android/music/MediaPlaybackService;->-wrap3(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;[B)V

    goto :goto_0

    .line 1178
    :pswitch_3
    const-string/jumbo v0, "Attribute"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    .line 1181
    const-string/jumbo v1, "Values"

    .line 1180
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 1182
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$9;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 1183
    const-string/jumbo v3, "org.codeaurora.music.playersettingsresponse"

    .line 1182
    invoke-static {v2, v3, v0, v1}, Lcom/android/music/MediaPlaybackService;->-wrap1(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;I[B)V

    goto/16 :goto_0

    .line 1186
    :pswitch_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$9;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string/jumbo v1, "org.codeaurora.music.playersettingsresponse"

    .line 1187
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$9;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->-get1(Lcom/android/music/MediaPlaybackService;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x4

    .line 1186
    invoke-static {v0, v1, v2, v3}, Lcom/android/music/MediaPlaybackService;->-wrap2(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_0

    .line 1193
    :cond_3
    const-string/jumbo v0, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    const-string/jumbo v0, "AttribValuePairs"

    .line 1194
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1196
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$9;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1, v0}, Lcom/android/music/MediaPlaybackService;->-wrap9(Lcom/android/music/MediaPlaybackService;[B)V

    goto/16 :goto_0

    .line 1161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
