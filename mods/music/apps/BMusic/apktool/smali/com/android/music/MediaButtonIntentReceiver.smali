.class public Lcom/android/music/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaButtonIntentReceiver$1;
    }
.end annotation


# static fields
.field private static mDown:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mLastClickTime:J

.field private static mLaunched:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 36
    sput-boolean v2, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    .line 37
    sput-boolean v2, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 39
    new-instance v0, Lcom/android/music/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/android/music/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string/jumbo v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/MediaPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    const-string/jumbo v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string/jumbo v1, "command"

    .line 66
    const-string/jumbo v2, "pause"

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "android.intent.extra.KEY_EVENT"

    .line 69
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 72
    if-nez v0, :cond_2

    .line 73
    return-void

    .line 76
    :cond_2
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 77
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 78
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 85
    sparse-switch v2, :sswitch_data_0

    .line 113
    :goto_1
    if-eqz v1, :cond_0

    .line 114
    if-nez v3, :cond_7

    .line 115
    sget-boolean v3, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    if-eqz v3, :cond_5

    .line 116
    const-string/jumbo v0, "togglepause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    const-string/jumbo v0, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_4

    .line 119
    :cond_3
    sget-wide v0, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_4

    .line 120
    sget-wide v0, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 121
    sget-object v0, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/music/MediaButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/music/MediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_0

    .line 87
    :sswitch_0
    const-string/jumbo v1, "stop"

    goto :goto_1

    .line 91
    :sswitch_1
    const-string/jumbo v1, "togglepause"

    goto :goto_1

    .line 94
    :sswitch_2
    const-string/jumbo v1, "next"

    goto :goto_1

    .line 97
    :sswitch_3
    const-string/jumbo v1, "previous"

    goto :goto_1

    .line 100
    :sswitch_4
    const-string/jumbo v1, "pause"

    goto :goto_1

    .line 103
    :sswitch_5
    const-string/jumbo v1, "play"

    goto :goto_1

    .line 106
    :sswitch_6
    const-string/jumbo v1, "rewind"

    goto :goto_1

    .line 109
    :sswitch_7
    const-string/jumbo v1, "fastforward"

    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 136
    new-instance v0, Landroid/content/Intent;

    .line 137
    const-class v3, Lcom/android/music/MediaPlaybackService;

    .line 136
    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const-string/jumbo v3, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const/16 v3, 0x4f

    if-ne v2, v3, :cond_6

    .line 140
    sget-wide v2, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v2, v4, v2

    const-wide/16 v6, 0x12c

    cmp-long v2, v2, v6

    if-gez v2, :cond_6

    .line 141
    const-string/jumbo v1, "command"

    .line 142
    const-string/jumbo v2, "next"

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 144
    sput-wide v10, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    .line 151
    :goto_3
    sput-boolean v8, Lcom/android/music/MediaButtonIntentReceiver;->mLaunched:Z

    .line 152
    sput-boolean v9, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_2

    .line 146
    :cond_6
    const-string/jumbo v2, "command"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 148
    sput-wide v4, Lcom/android/music/MediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_3

    .line 155
    :cond_7
    sget-object v0, Lcom/android/music/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    sput-boolean v8, Lcom/android/music/MediaButtonIntentReceiver;->mDown:Z

    goto :goto_2

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x59 -> :sswitch_6
        0x5a -> :sswitch_7
        0x7e -> :sswitch_5
        0x7f -> :sswitch_4
    .end sparse-switch
.end method
