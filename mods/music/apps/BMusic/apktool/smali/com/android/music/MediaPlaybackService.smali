.class public Lcom/android/music/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPlaybackService$1;,
        Lcom/android/music/MediaPlaybackService$2;,
        Lcom/android/music/MediaPlaybackService$3;,
        Lcom/android/music/MediaPlaybackService$4;,
        Lcom/android/music/MediaPlaybackService$5;,
        Lcom/android/music/MediaPlaybackService$6;,
        Lcom/android/music/MediaPlaybackService$7;,
        Lcom/android/music/MediaPlaybackService$MultiPlayer;,
        Lcom/android/music/MediaPlaybackService$MyContentObserver;,
        Lcom/android/music/MediaPlaybackService$ServiceStub;,
        Lcom/android/music/MediaPlaybackService$Shuffler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mInternalPause:Z

.field public static mPauseReason:I

.field private static mPlayPrev:Z


# instance fields
.field AttrStr:[Ljava/lang/String;

.field contentObserver:Lcom/android/music/MediaPlaybackService$MyContentObserver;

.field private final hexdigits:[C

.field private mA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private mA2dpUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

.field private mAttributePairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[J

.field private final mBinder:Landroid/os/IBinder;

.field private mCardId:I

.field private mCursor:Landroid/database/Cursor;

.field mCursorCols:[Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mExternalDisplay:Landroid/app/ExternalDisplay;

.field private mFileToPlay:Ljava/lang/String;

.field mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsReadGranted:Z

.field private mIsSupposedToBePlaying:Z

.field private mMediaButtonEventReceiver:Landroid/content/ComponentName;

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mOpenFailedCounter:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayList:[J

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQueueIsSaveable:Z

.field private mQuietMode:Z

.field private final mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mRepeatMode:I

.field private mResumeAfterCall:Z

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private supportedAttributes:[B

.field private supportedRepeatValues:[B

.field private supportedShuffleValues:[B

.field private unsupportedList:[B


# direct methods
.method static synthetic -get0(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/MediaPlaybackService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/music/MediaPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/music/MediaPlaybackService;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/music/MediaPlaybackService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/music/MediaPlaybackService;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/music/MediaPlaybackService;)I
    .locals 1

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/music/MediaPlaybackService;I)I
    .locals 0

    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/music/MediaPlaybackService;I)I
    .locals 0

    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/music/MediaPlaybackService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->notifyAttributeIDs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/MediaPlaybackService;->notifyAttributeValuesText(Ljava/lang/String;I[B)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->updatePlaybackState(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;Ljava/util/HashMap;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/MediaPlaybackService;->notifyAttributeValues(Ljava/lang/String;Ljava/util/HashMap;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->notifyAttributesText(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->notifyValueIDs(Ljava/lang/String;B)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/music/MediaPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->reloadQueue()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/music/MediaPlaybackService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/music/MediaPlaybackService;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackService;->setValidAttributes([B)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const-string/jumbo v0, "MediaPlaybackService"

    sput-object v0, Lcom/android/music/MediaPlaybackService;->TAG:Ljava/lang/String;

    .line 175
    sput-boolean v1, Lcom/android/music/MediaPlaybackService;->mPlayPrev:Z

    .line 203
    sput-boolean v1, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    .line 258
    sput v1, Lcom/android/music/MediaPlaybackService;->mPauseReason:I

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 567
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    .line 163
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 164
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 165
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    .line 166
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    .line 167
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    .line 168
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 169
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 173
    new-instance v0, Lcom/android/music/MediaPlaybackService$Shuffler;

    invoke-direct {v0, v4}, Lcom/android/music/MediaPlaybackService$Shuffler;-><init>(Lcom/android/music/MediaPlaybackService$Shuffler;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    .line 174
    iput v3, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 176
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 177
    const-string/jumbo v1, "audio._id AS _id"

    aput-object v1, v0, v3

    .line 178
    const-string/jumbo v1, "artist"

    aput-object v1, v0, v5

    .line 179
    const-string/jumbo v1, "album"

    aput-object v1, v0, v6

    .line 180
    const-string/jumbo v1, "title"

    aput-object v1, v0, v7

    .line 181
    const-string/jumbo v1, "_data"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 182
    const-string/jumbo v1, "mime_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 183
    const-string/jumbo v1, "album_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 184
    const-string/jumbo v1, "artist_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "is_podcast"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 186
    const-string/jumbo v1, "bookmark"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 176
    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 191
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    iput-object v4, p0, Lcom/android/music/MediaPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    .line 196
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 197
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 198
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 200
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z

    .line 201
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    .line 211
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->supportedAttributes:[B

    .line 221
    new-array v0, v7, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->supportedRepeatValues:[B

    .line 237
    new-array v0, v6, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->supportedShuffleValues:[B

    .line 242
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 243
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 244
    const-string/jumbo v1, "Equalizer"

    aput-object v1, v0, v5

    .line 245
    const-string/jumbo v1, "Repeat Mode"

    aput-object v1, v0, v6

    .line 246
    const-string/jumbo v1, "Shuffle Mode"

    aput-object v1, v0, v7

    .line 247
    const-string/jumbo v1, "Scan Mode"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 242
    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->AttrStr:[Ljava/lang/String;

    .line 250
    new-array v0, v5, [B

    .line 251
    aput-byte v3, v0, v3

    .line 250
    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->unsupportedList:[B

    .line 290
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService;->mIsReadGranted:Z

    .line 300
    invoke-static {}, Lcom/android/music/MediaAppWidgetProvider;->getInstance()Lcom/android/music/MediaAppWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    .line 309
    new-instance v0, Lcom/android/music/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$1;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 352
    new-instance v0, Lcom/android/music/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$2;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 469
    new-instance v0, Lcom/android/music/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$3;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 532
    new-instance v0, Lcom/android/music/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$4;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mA2dpUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 560
    new-instance v0, Lcom/android/music/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$5;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 713
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    .line 1072
    new-instance v0, Lcom/android/music/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$6;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 1555
    new-instance v0, Lcom/android/music/MediaPlaybackService$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MyContentObserver;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->contentObserver:Lcom/android/music/MediaPlaybackService$MyContentObserver;

    .line 2998
    new-instance v0, Lcom/android/music/MediaPlaybackService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$ServiceStub;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 3015
    new-instance v0, Lcom/android/music/MediaPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$7;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 568
    return-void

    .line 211
    :array_0
    .array-data 1
        0x2t
        0x3t
    .end array-data

    .line 221
    nop

    :array_1
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data

    .line 237
    :array_2
    .array-data 1
        0x1t
        0x2t
    .end array-data

    .line 713
    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private addToPlayList([JI)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 1316
    array-length v2, p1

    .line 1317
    if-gez p2, :cond_0

    .line 1318
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    move p2, v0

    .line 1321
    :cond_0
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1322
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v1, :cond_1

    .line 1323
    iget p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1327
    :cond_1
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v1, p2

    .line 1328
    :goto_0
    if-lez v1, :cond_2

    .line 1329
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v6, p2, v1

    sub-int/2addr v6, v2

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    .line 1328
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1333
    :cond_2
    :goto_1
    if-ge v0, v2, :cond_3

    .line 1334
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v3, p2, v0

    aget-wide v4, p1, v0

    aput-wide v4, v1, v3

    .line 1333
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1336
    :cond_3
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1337
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 1338
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1339
    iput-object v8, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1340
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1342
    :cond_4
    return-void
.end method

.method private doAutoShuffleUpdate()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2000
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    const/16 v4, 0xa

    if-le v0, v4, :cond_5

    .line 2001
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, -0x9

    invoke-virtual {p0, v2, v0}, Lcom/android/music/MediaPlaybackService;->removeTracks(II)I

    move v0, v1

    .line 2005
    :goto_0
    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gez v5, :cond_1

    :goto_1
    sub-int v3, v4, v3

    rsub-int/lit8 v4, v3, 0x7

    move v3, v2

    .line 2006
    :goto_2
    if-ge v3, v4, :cond_3

    .line 2009
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2012
    :goto_3
    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v5

    .line 2013
    invoke-direct {p0, v5, v0}, Lcom/android/music/MediaPlaybackService;->wasRecentlyUsed(II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2018
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2019
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v6, 0x64

    if-le v0, v6, :cond_0

    .line 2020
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 2022
    :cond_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 2023
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    iget-object v7, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J

    aget-wide v8, v7, v5

    aput-wide v8, v0, v6

    .line 2006
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_2

    .line 2005
    :cond_1
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 2016
    :cond_2
    div-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 2026
    :cond_3
    if-eqz v0, :cond_4

    .line 2027
    const-string/jumbo v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2029
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method private ensurePlayListCapacity(I)V
    .locals 6

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    array-length v0, v0

    if-le p1, v0, :cond_3

    .line 1303
    :cond_0
    mul-int/lit8 v0, p1, 0x2

    new-array v2, v0, [J

    .line 1304
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    array-length v0, v0

    .line 1305
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1306
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v3, v1

    aput-wide v4, v2, v1

    .line 1305
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1304
    :cond_1
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    goto :goto_0

    .line 1308
    :cond_2
    iput-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    .line 1312
    :cond_3
    return-void
.end method

.method private getBookmark()J
    .locals 2

    .prologue
    .line 2358
    monitor-enter p0

    .line 2359
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2360
    const-wide/16 v0, 0x0

    monitor-exit p0

    return-wide v0

    .line 2362
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 2358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private gotoIdleState()V
    .locals 4

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1955
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1956
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1957
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->stopForeground(Z)V

    .line 1958
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1959
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1960
    const-string/jumbo v1, "music.mode"

    const-string/jumbo v2, "music.stop"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1961
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mExternalDisplay:Landroid/app/ExternalDisplay;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/app/ExternalDisplay;->notifyClient(ILandroid/os/Bundle;)V

    .line 1963
    :cond_0
    return-void
.end method

.method private isPodcast()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2349
    monitor-enter p0

    .line 2350
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    monitor-exit p0

    .line 2351
    return v0

    .line 2353
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit p0

    return v0

    .line 2349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isValidRepeatMode(B)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2654
    if-nez p1, :cond_0

    .line 2655
    return v2

    .line 2657
    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-byte v0, v0

    .line 2658
    if-ltz v0, :cond_1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 2659
    const/4 v0, 0x1

    return v0

    .line 2661
    :cond_1
    return v2
.end method

.method private isValidShuffleMode(B)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2668
    if-nez p1, :cond_0

    .line 2669
    return v2

    .line 2671
    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-byte v0, v0

    .line 2673
    if-ltz v0, :cond_1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 2674
    const/4 v0, 0x1

    return v0

    .line 2676
    :cond_1
    return v2
.end method

.method private makeAutoShuffleList()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2073
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2077
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2078
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2079
    const-string/jumbo v3, "is_music=1"

    # FEAT(whitelist)
    invoke-static {p0, v1, v3}, Lcom/android/music/ArgonLibrary;->selection(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2077
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2085
    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 2098
    :cond_0
    if-eqz v0, :cond_1

    .line 2099
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2086
    :cond_1
    return v7

    .line 2080
    :catch_0
    move-exception v0

    .line 2082
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v6

    .line 2083
    goto :goto_0

    .line 2088
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 2089
    new-array v3, v2, [J

    move v1, v7

    .line 2090
    :goto_1
    if-ge v1, v2, :cond_3

    .line 2091
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2092
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 2090
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2094
    :cond_3
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mAutoShuffleList:[J
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2098
    if-eqz v0, :cond_4

    .line 2099
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2095
    :cond_4
    return v8

    .line 2096
    :catch_1
    move-exception v0

    move-object v0, v6

    .line 2098
    :goto_2
    if-eqz v0, :cond_5

    .line 2099
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2102
    :cond_5
    return v7

    .line 2097
    :catchall_0
    move-exception v0

    .line 2098
    :goto_3
    if-eqz v6, :cond_6

    .line 2099
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2097
    :cond_6
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    .line 2096
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private notifyAttributeIDs(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2437
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2438
    const-string/jumbo v1, "Response"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2439
    const-string/jumbo v1, "Attributes"

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->supportedAttributes:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2440
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2441
    return-void
.end method

.method private notifyAttributeValues(Ljava/lang/String;Ljava/util/HashMap;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2528
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2529
    const-string/jumbo v0, "Response"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2531
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    move v0, v1

    .line 2532
    :goto_0
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 2533
    aput-byte v1, v4, v0

    .line 2532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2536
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 2537
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2538
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, v4, v2

    .line 2539
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 2540
    add-int/lit8 v0, v2, 0x1

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->getMappingRepeatVal(I)B

    move-result v1

    aput-byte v1, v4, v0

    .line 2544
    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x2

    :goto_3
    move v2, v1

    goto :goto_1

    .line 2541
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2542
    add-int/lit8 v0, v2, 0x1

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->getMappingShuffleVal(I)B

    move-result v1

    aput-byte v1, v4, v0

    goto :goto_2

    .line 2546
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v4, v2

    .line 2547
    add-int/lit8 v0, v2, 0x1

    const/4 v1, -0x1

    aput-byte v1, v4, v0

    .line 2548
    add-int/lit8 v1, v2, 0x2

    goto :goto_3

    .line 2551
    :cond_4
    const-string/jumbo v0, "AttribValuePairs"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2552
    invoke-virtual {p0, v3}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2553
    return-void
.end method

.method private notifyAttributeValuesText(Ljava/lang/String;I[B)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 2489
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2490
    array-length v3, p3

    new-array v3, v3, [Ljava/lang/String;

    .line 2491
    const-string/jumbo v4, "Response"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2492
    const-string/jumbo v4, "Attribute"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2494
    packed-switch p2, :pswitch_data_0

    .line 2511
    :goto_0
    array-length v4, p3

    if-ge v1, v4, :cond_2

    .line 2512
    if-eqz v0, :cond_0

    .line 2513
    aget-byte v4, p3, v1

    array-length v5, v0

    if-lt v4, v5, :cond_1

    .line 2514
    :cond_0
    const-string/jumbo v4, "MediaPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "value id is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "which is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    const-string/jumbo v4, ""

    aput-object v4, v3, v1

    .line 2511
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2496
    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 2497
    const-string/jumbo v4, ""

    aput-object v4, v0, v1

    .line 2498
    const v4, 0x7f07003b

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 2499
    const v4, 0x7f07003c

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 2500
    const v4, 0x7f07003d

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    goto :goto_0

    .line 2504
    :pswitch_1
    new-array v0, v5, [Ljava/lang/String;

    .line 2505
    const-string/jumbo v4, ""

    aput-object v4, v0, v1

    .line 2506
    const v4, 0x7f07003a

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 2507
    const v4, 0x7f070039

    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    goto :goto_0

    .line 2517
    :cond_1
    aget-byte v4, p3, v1

    aget-object v4, v0, v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 2520
    :cond_2
    const-string/jumbo v0, "ValueStrings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2521
    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2522
    return-void

    .line 2494
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyAttributesText(Ljava/lang/String;[B)V
    .locals 6

    .prologue
    .line 2469
    array-length v0, p2

    new-array v1, v0, [Ljava/lang/String;

    .line 2470
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2471
    const-string/jumbo v0, "Response"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2472
    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 2473
    aget-byte v3, p2, v0

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->AttrStr:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 2474
    const-string/jumbo v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attrib id is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "which is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    const-string/jumbo v3, ""

    aput-object v3, v1, v0

    .line 2472
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2477
    :cond_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->AttrStr:[Ljava/lang/String;

    aget-byte v4, p2, v0

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    goto :goto_1

    .line 2480
    :cond_1
    const-string/jumbo v0, "AttributeStrings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2481
    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2482
    return-void
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1222
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1224
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 1225
    const-string/jumbo v0, "id"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    :goto_0
    const-string/jumbo v0, "artist"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1246
    const-string/jumbo v0, "album"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1247
    const-string/jumbo v0, "track"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1248
    const-string/jumbo v0, "playing"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1249
    const-string/jumbo v0, "duration"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1250
    const-string/jumbo v0, "position"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1251
    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1253
    const-string/jumbo v0, "com.android.music.playstatechanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1254
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1255
    const/4 v0, 0x3

    .line 1256
    :goto_1
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1254
    invoke-virtual {v2, v0, v4, v5, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 1287
    :cond_0
    :goto_2
    const-string/jumbo v0, "com.android.music.queuechanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1288
    invoke-direct {p0, v8}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 1292
    :goto_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    if-eqz v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAppWidgetProvider:Lcom/android/music/MediaAppWidgetProvider;

    invoke-virtual {v0, p0, p1}, Lcom/android/music/MediaAppWidgetProvider;->notifyChange(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1296
    :cond_1
    return-void

    .line 1227
    :cond_2
    :try_start_1
    const-string/jumbo v0, "id"

    .line 1228
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1227
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    const-string/jumbo v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 1256
    goto :goto_1

    .line 1257
    :cond_4
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v8}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v7

    .line 1261
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 1260
    const/4 v2, 0x7

    invoke-virtual {v7, v2, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1263
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 1262
    invoke-virtual {v7, v8, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1266
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 1265
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1268
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 1267
    invoke-virtual {v7, v1, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1270
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    .line 1269
    const/16 v2, 0x9

    invoke-virtual {v7, v2, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1272
    :try_start_2
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-virtual {v7, v2, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1276
    :goto_4
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v2

    .line 1277
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumId()J

    move-result-wide v4

    move-object v1, p0

    .line 1276
    invoke-static/range {v1 .. v6}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1278
    if-eqz v0, :cond_5

    .line 1279
    invoke-virtual {v7, v9, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1284
    :goto_5
    invoke-virtual {v7}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto/16 :goto_2

    .line 1273
    :catch_1
    move-exception v0

    .line 1274
    const-string/jumbo v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "METADATA_KEY_NUM_TRACKS: failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1281
    :cond_5
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1282
    invoke-virtual {v7, v9, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto :goto_5

    .line 1290
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    goto/16 :goto_3
.end method

.method private notifyValueIDs(Ljava/lang/String;B)V
    .locals 4

    .prologue
    .line 2447
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2448
    const-string/jumbo v1, "Response"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2449
    const-string/jumbo v1, "Attribute"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 2450
    packed-switch p2, :pswitch_data_0

    .line 2458
    const-string/jumbo v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const-string/jumbo v1, "Values"

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->unsupportedList:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2462
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2463
    return-void

    .line 2452
    :pswitch_0
    const-string/jumbo v1, "Values"

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->supportedRepeatValues:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 2455
    :pswitch_1
    const-string/jumbo v1, "Values"

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->supportedShuffleValues:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 2450
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openCurrent()V
    .locals 7

    .prologue
    .line 1483
    monitor-enter p0

    .line 1484
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1489
    :cond_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_2

    :cond_1
    monitor-exit p0

    .line 1490
    return-void

    .line 1492
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->updatePlaybackState(Z)V

    .line 1493
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1495
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 1498
    :try_start_2
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1499
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1500
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1498
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1505
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 1506
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->contentObserver:Lcom/android/music/MediaPlaybackService$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1507
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 1508
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->open(Ljava/lang/String;)V

    .line 1511
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1512
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 1515
    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackService;->seek(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    monitor-exit p0

    .line 1519
    return-void

    .line 1501
    :catch_0
    move-exception v0

    .line 1503
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reloadQueue()V
    .locals 9

    .prologue
    .line 794
    const/4 v1, 0x0

    .line 797
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    .line 798
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "cardid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "cardid"

    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    not-int v3, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 802
    :cond_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    if-ne v0, v2, :cond_18

    .line 805
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "queue"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 807
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    move v4, v0

    .line 808
    :goto_1
    const/4 v0, 0x1

    if-le v4, v0, :cond_10

    .line 810
    const/4 v3, 0x0

    .line 811
    const/4 v2, 0x0

    .line 812
    const/4 v1, 0x0

    .line 813
    const/4 v0, 0x0

    move v8, v0

    move v0, v2

    move v2, v3

    move v3, v8

    :goto_2
    if-ge v3, v4, :cond_5

    .line 814
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 815
    const/16 v7, 0x3b

    if-ne v6, v7, :cond_2

    .line 816
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 817
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    int-to-long v6, v0

    aput-wide v6, v1, v2

    .line 818
    add-int/lit8 v2, v2, 0x1

    .line 819
    const/4 v1, 0x0

    .line 820
    const/4 v0, 0x0

    .line 813
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_2

    .line 807
    :cond_1
    const/4 v0, 0x0

    move v4, v0

    goto :goto_1

    .line 822
    :cond_2
    const/16 v7, 0x30

    if-lt v6, v7, :cond_3

    const/16 v7, 0x39

    if-gt v6, v7, :cond_3

    .line 823
    add-int/lit8 v6, v6, -0x30

    shl-int/2addr v6, v1

    add-int/2addr v0, v6

    .line 831
    :goto_4
    add-int/lit8 v1, v1, 0x4

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_3

    .line 824
    :cond_3
    const/16 v7, 0x61

    if-lt v6, v7, :cond_4

    const/16 v7, 0x66

    if-gt v6, v7, :cond_4

    .line 825
    add-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, -0x61

    shl-int/2addr v6, v1

    add-int/2addr v0, v6

    .line 824
    goto :goto_4

    .line 828
    :cond_4
    const/4 v2, 0x0

    .line 834
    :cond_5
    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 836
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "curpos"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 837
    if-ltz v0, :cond_6

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_7

    .line 839
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 840
    return-void

    .line 842
    :cond_7
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 850
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 851
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v4, v3, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 849
    # FEAT(whitelist)
    invoke-static/range {v0 .. v5}, Lcom/android/music/ArgonLibrary;->queryUnfiltered(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 852
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    .line 854
    :cond_8
    if-eqz v0, :cond_9

    .line 855
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 858
    :cond_9
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 860
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 861
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 862
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 863
    const/4 v5, 0x0

    .line 860
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 870
    :cond_a
    :goto_5
    if-eqz v0, :cond_b

    .line 871
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 886
    :cond_b
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 888
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    .line 890
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_c

    .line 892
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 893
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 866
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 867
    const/4 v0, 0x0

    goto :goto_5

    .line 896
    :cond_c
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "seekpos"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 897
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_11

    move-wide v0, v2

    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 898
    const-string/jumbo v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restored queue, currently at position "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 899
    const-string/jumbo v4, "/"

    .line 898
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 899
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v4

    .line 898
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 899
    const-string/jumbo v4, " (requested "

    .line 898
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 899
    const-string/jumbo v2, ")"

    .line 898
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "repeatmode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 902
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 903
    const/4 v0, 0x0

    .line 905
    :cond_d
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 907
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "shufflemode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 908
    const/4 v0, 0x2

    if-eq v2, v0, :cond_e

    const/4 v0, 0x1

    if-eq v2, v0, :cond_e

    .line 909
    const/4 v2, 0x0

    .line 911
    :cond_e
    if-eqz v2, :cond_f

    .line 913
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "history"

    const-string/jumbo v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 914
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    move v4, v0

    .line 915
    :goto_7
    const/4 v0, 0x1

    if-le v4, v0, :cond_f

    .line 917
    const/4 v3, 0x0

    .line 918
    const/4 v1, 0x0

    .line 919
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 920
    const/4 v0, 0x0

    move v8, v0

    move v0, v3

    move v3, v8

    :goto_8
    if-ge v3, v4, :cond_f

    .line 921
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 922
    const/16 v7, 0x3b

    if-ne v6, v7, :cond_14

    .line 923
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_13

    .line 925
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 946
    :cond_f
    :goto_9
    const/4 v0, 0x2

    if-ne v2, v0, :cond_17

    .line 947
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v0

    if-nez v0, :cond_17

    .line 948
    const/4 v0, 0x0

    .line 951
    :goto_a
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 953
    :cond_10
    return-void

    .line 897
    :cond_11
    const-wide/16 v0, 0x0

    goto/16 :goto_6

    .line 914
    :cond_12
    const/4 v0, 0x0

    move v4, v0

    goto :goto_7

    .line 928
    :cond_13
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 929
    const/4 v1, 0x0

    .line 930
    const/4 v0, 0x0

    .line 920
    :goto_b
    add-int/lit8 v3, v3, 0x1

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_8

    .line 932
    :cond_14
    const/16 v7, 0x30

    if-lt v6, v7, :cond_15

    const/16 v7, 0x39

    if-gt v6, v7, :cond_15

    .line 933
    add-int/lit8 v6, v6, -0x30

    shl-int/2addr v6, v1

    add-int/2addr v0, v6

    .line 941
    :goto_c
    add-int/lit8 v1, v1, 0x4

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_b

    .line 934
    :cond_15
    const/16 v7, 0x61

    if-lt v6, v7, :cond_16

    const/16 v7, 0x66

    if-gt v6, v7, :cond_16

    .line 935
    add-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, -0x61

    shl-int/2addr v6, v1

    add-int/2addr v0, v6

    .line 934
    goto :goto_c

    .line 938
    :cond_16
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_9

    :cond_17
    move v0, v2

    goto :goto_a

    :cond_18
    move-object v5, v1

    goto/16 :goto_0
.end method

.method private removeTracksInternal(II)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2122
    monitor-enter p0

    .line 2123
    if-ge p2, p1, :cond_0

    monitor-exit p0

    return v0

    .line 2124
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 2125
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v2, :cond_2

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v2, -0x1

    .line 2128
    :cond_2
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v2, :cond_3

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p2, :cond_3

    .line 2129
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2134
    :goto_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    .line 2135
    :goto_1
    if-ge v0, v2, :cond_4

    .line 2136
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int v4, p1, v0

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v6, p2, 0x1

    add-int/2addr v6, v0

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    .line 2135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2131
    :cond_3
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-le v1, p2, :cond_9

    .line 2132
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    move v1, v0

    goto :goto_0

    .line 2138
    :cond_4
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 2140
    if-eqz v1, :cond_6

    .line 2141
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_7

    .line 2142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 2143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2144
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 2145
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2159
    :cond_5
    :goto_2
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2161
    :cond_6
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 2149
    :cond_7
    :try_start_1
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v1, :cond_8

    .line 2150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2152
    :cond_8
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    .line 2153
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 2154
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 2155
    if-eqz v0, :cond_5

    .line 2156
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9
    move v1, v0

    goto :goto_0
.end method

.method private saveBookmarkIfNeeded()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    .line 1967
    :try_start_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1968
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    .line 1969
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->getBookmark()J

    move-result-wide v2

    .line 1970
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v4

    .line 1971
    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    add-long v6, v0, v8

    cmp-long v6, v6, v2

    if-lez v6, :cond_1

    .line 1975
    :cond_0
    return-void

    .line 1972
    :cond_1
    cmp-long v6, v0, v2

    if-lez v6, :cond_2

    sub-long v6, v0, v8

    cmp-long v2, v6, v2

    if-ltz v2, :cond_0

    .line 1977
    :cond_2
    const-wide/16 v2, 0x3a98

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    add-long v2, v0, v8

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 1979
    :cond_3
    const-wide/16 v0, 0x0

    .line 1983
    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1984
    const-string/jumbo v3, "bookmark"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1986
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1987
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1985
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1988
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1992
    :cond_5
    :goto_0
    return-void

    .line 1990
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private saveQueue(Z)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 721
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mQueueIsSaveable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 722
    :cond_0
    return-void

    .line 725
    :cond_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 727
    if-eqz p1, :cond_9

    .line 728
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    iget v6, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    move v1, v0

    .line 737
    :goto_0
    if-ge v1, v6, :cond_5

    .line 738
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v2, v1

    .line 739
    cmp-long v7, v2, v10

    if-gez v7, :cond_2

    .line 737
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    :cond_2
    cmp-long v7, v2, v10

    if-nez v7, :cond_3

    .line 742
    const-string/jumbo v2, "0;"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 744
    :cond_3
    :goto_2
    cmp-long v7, v2, v10

    if-eqz v7, :cond_4

    .line 745
    const-wide/16 v8, 0xf

    and-long/2addr v8, v2

    long-to-int v7, v8

    .line 746
    const/4 v8, 0x4

    ushr-long/2addr v2, v8

    .line 747
    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    aget-char v7, v8, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 749
    :cond_4
    const-string/jumbo v2, ";"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 754
    :cond_5
    const-string/jumbo v1, "queue"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 755
    const-string/jumbo v1, "cardid"

    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 756
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-eqz v1, :cond_9

    .line 758
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 759
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v1, v0

    .line 760
    :goto_3
    if-ge v1, v2, :cond_8

    .line 761
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 762
    if-nez v0, :cond_6

    .line 763
    const-string/jumbo v0, "0;"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 765
    :cond_6
    :goto_5
    if-eqz v0, :cond_7

    .line 766
    and-int/lit8 v3, v0, 0xf

    .line 767
    ushr-int/lit8 v0, v0, 0x4

    .line 768
    iget-object v6, p0, Lcom/android/music/MediaPlaybackService;->hexdigits:[C

    aget-char v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 770
    :cond_7
    const-string/jumbo v0, ";"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 773
    :cond_8
    const-string/jumbo v0, "history"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 776
    :cond_9
    const-string/jumbo v0, "curpos"

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 777
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 778
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 779
    const-string/jumbo v0, "seekpos"

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v2

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 784
    :cond_a
    :goto_6
    const-string/jumbo v0, "repeatmode"

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 785
    const-string/jumbo v0, "shufflemode"

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 786
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 787
    invoke-static {v4}, Lcom/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 791
    return-void

    .line 781
    :cond_b
    const-string/jumbo v0, "seekpos"

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v2

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_6
.end method

.method private setValidAttributes([B)V
    .locals 5

    .prologue
    .line 2561
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2562
    aget-byte v1, p1, v0

    .line 2563
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    .line 2564
    packed-switch v1, :pswitch_data_0

    .line 2576
    const-string/jumbo v2, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown attribute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    const-string/jumbo v1, "org.codeaurora.music.playersettingsresponse"

    .line 2578
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    const/4 v3, 0x6

    .line 2577
    invoke-direct {p0, v1, v2, v3}, Lcom/android/music/MediaPlaybackService;->notifyAttributeValues(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 2561
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2566
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->isValidRepeatMode(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2567
    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->getMappingRepeatMode(B)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    goto :goto_1

    .line 2571
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/music/MediaPlaybackService;->isValidShuffleMode(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2572
    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackService;->getMappingShuffleMode(B)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_1

    .line 2582
    :cond_1
    return-void

    .line 2564
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 339
    return-void
.end method

.method private stop(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1724
    if-eqz p1, :cond_0

    .line 1725
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1726
    const-string/jumbo v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1728
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1729
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1731
    :cond_1
    iput-object v1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1732
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1733
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1734
    iput-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1736
    :cond_2
    if-eqz p1, :cond_3

    .line 1737
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1738
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1739
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1743
    :cond_3
    return-void
.end method

.method private updatePlaybackState(Z)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x2

    .line 3001
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v4

    .line 3002
    :goto_0
    cmp-long v1, v4, v2

    if-gez v1, :cond_3

    .line 3005
    :goto_1
    if-eqz p1, :cond_2

    .line 3012
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 3013
    return-void

    :cond_1
    move-wide v4, v2

    .line 3001
    goto :goto_0

    .line 3008
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3009
    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    move-wide v2, v4

    goto :goto_1
.end method

.method private wasRecentlyUsed(II)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2036
    if-nez p2, :cond_0

    .line 2037
    return v2

    .line 2040
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2041
    if-ge v0, p2, :cond_1

    .line 2042
    const-string/jumbo v1, "MediaPlaybackService"

    const-string/jumbo v3, "lookback too big"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    .line 2045
    :cond_1
    add-int/lit8 v3, v0, -0x1

    move v1, v2

    .line 2046
    :goto_0
    if-ge v1, p2, :cond_3

    .line 2047
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    sub-int v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 2048
    int-to-long v6, p1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 2049
    const/4 v0, 0x1

    return v0

    .line 2046
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2052
    :cond_3
    return v2
.end method


# virtual methods
.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1097
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1098
    const-string/jumbo v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1099
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2986
    const-string/jumbo v1, " items in queue, currently at index "

    .line 2985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2986
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2987
    const-string/jumbo v0, "Currently loaded:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2990
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->-get1(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shuffle mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    invoke-static {p2}, Lcom/android/music/MusicUtils;->debugDump(Ljava/io/PrintWriter;)V

    .line 2996
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2372
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    return-wide v0

    .line 2374
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public enqueue([JI)V
    .locals 2

    .prologue
    .line 1354
    monitor-enter p0

    .line 1355
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_2

    .line 1356
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1357
    const-string/jumbo v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1371
    :cond_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_1

    .line 1372
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1373
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1374
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1375
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1378
    return-void

    .line 1361
    :cond_2
    const v0, 0x7fffffff

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1362
    const-string/jumbo v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1363
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1364
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1365
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1366
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1367
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1368
    return-void

    .line 1354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAlbumId()J
    .locals 3

    .prologue
    .line 2329
    monitor-enter p0

    .line 2330
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 2331
    :cond_0
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 2333
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2334
    const-string/jumbo v2, "album_id"

    .line 2333
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 2329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2319
    monitor-enter p0

    .line 2320
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    monitor-exit p0

    .line 2321
    return-object v1

    .line 2323
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2324
    const-string/jumbo v2, "album"

    .line 2323
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getArtistId()J
    .locals 3

    .prologue
    .line 2309
    monitor-enter p0

    .line 2310
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 2311
    :cond_0
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 2313
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2314
    const-string/jumbo v2, "artist_id"

    .line 2313
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 2309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2299
    monitor-enter p0

    .line 2300
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    monitor-exit p0

    .line 2301
    return-object v1

    .line 2303
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2304
    const-string/jumbo v2, "artist"

    .line 2303
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 2263
    monitor-enter p0

    .line 2264
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    monitor-exit p0

    .line 2268
    const-wide/16 v0, -0x1

    return-wide v0

    .line 2263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2428
    monitor-enter p0

    .line 2429
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->getAudioSessionId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 2428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getMappingRepeatMode(B)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2625
    packed-switch p1, :pswitch_data_0

    .line 2634
    return v0

    .line 2627
    :pswitch_0
    return v0

    .line 2629
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2632
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2625
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method getMappingRepeatVal(I)B
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2585
    packed-switch p1, :pswitch_data_0

    .line 2593
    return v0

    .line 2587
    :pswitch_0
    return v0

    .line 2589
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2591
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getMappingShuffleMode(B)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2639
    packed-switch p1, :pswitch_data_0

    .line 2646
    return v0

    .line 2641
    :pswitch_0
    return v0

    .line 2644
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getMappingShuffleVal(I)B
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2598
    packed-switch p1, :pswitch_data_0

    .line 2620
    return v1

    .line 2600
    :pswitch_0
    return v1

    .line 2606
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2607
    return v1

    .line 2609
    :cond_0
    return v2

    .line 2615
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2616
    return v1

    .line 2618
    :cond_1
    return v2

    .line 2598
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 2247
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getQueue()[J
    .locals 6

    .prologue
    .line 1472
    monitor-enter p0

    .line 1473
    :try_start_0
    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1474
    new-array v2, v1, [J

    .line 1475
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1476
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 1478
    return-object v2

    .line 1472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 2276
    monitor-enter p0

    .line 2277
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2243
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2223
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2339
    monitor-enter p0

    .line 2340
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    monitor-exit p0

    .line 2341
    return-object v1

    .line 2343
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2344
    const-string/jumbo v2, "title"

    .line 2343
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isComplete()Z

    move-result v0

    return v0

    .line 2381
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1775
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 8

    .prologue
    .line 1431
    monitor-enter p0

    .line 1432
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v0, :cond_7

    .line 1433
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v0, -0x1

    .line 1435
    :goto_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v0, :cond_0

    .line 1436
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v0, -0x1

    .line 1438
    :cond_0
    if-ge v1, p2, :cond_4

    .line 1439
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v0, v1

    move v0, v1

    .line 1440
    :goto_1
    if-ge v0, p2, :cond_1

    .line 1441
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v6, v5, v6

    aput-wide v6, v4, v0

    .line 1440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1443
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aput-wide v2, v0, p2

    .line 1444
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ne v0, v1, :cond_3

    .line 1445
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1461
    :cond_2
    :goto_2
    const-string/jumbo v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1463
    return-void

    .line 1446
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v0, p2, :cond_2

    .line 1447
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1449
    :cond_4
    if-ge p2, v1, :cond_2

    .line 1450
    :try_start_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v0, v1

    move v0, v1

    .line 1451
    :goto_3
    if-le v0, p2, :cond_5

    .line 1452
    iget-object v4, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v6, v5, v6

    aput-wide v6, v4, v0

    .line 1451
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1454
    :cond_5
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aput-wide v2, v0, p2

    .line 1455
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ne v0, v1, :cond_6

    .line 1456
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto :goto_2

    .line 1457
    :cond_6
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lt v0, p2, :cond_2

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-gt v0, v1, :cond_2

    .line 1458
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_7
    move v1, p1

    goto :goto_0
.end method

.method public next(Z)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v9, 0x2

    const/4 v4, 0x0

    .line 1849
    monitor-enter p0

    .line 1850
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    monitor-exit p0

    .line 1851
    return-void

    .line 1853
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/android/music/MediaPlaybackService;->mPlayPrev:Z

    .line 1854
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v1, :cond_6

    .line 1855
    if-nez p1, :cond_1

    monitor-exit p0

    .line 1856
    return-void

    .line 1857
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    :cond_2
    monitor-exit p0

    .line 1858
    return-void

    .line 1860
    :cond_3
    :try_start_3
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1943
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1944
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1945
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1946
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    if-nez v0, :cond_5

    .line 1947
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1949
    :cond_5
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 1951
    return-void

    .line 1863
    :cond_6
    :try_start_4
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, v1, :cond_12

    .line 1869
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_7

    .line 1870
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1872
    :cond_7
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_8

    .line 1873
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1876
    :cond_8
    iget v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1877
    new-array v6, v3, [I

    move v0, v4

    .line 1878
    :goto_1
    if-ge v0, v3, :cond_9

    .line 1879
    aput v0, v6, v0

    .line 1878
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1882
    :cond_9
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    move v5, v4

    move v1, v3

    .line 1884
    :goto_2
    if-ge v5, v7, :cond_b

    .line 1885
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1886
    if-ge v8, v3, :cond_a

    aget v0, v6, v8

    if-ltz v0, :cond_a

    .line 1887
    add-int/lit8 v0, v1, -0x1

    .line 1888
    const/4 v1, -0x1

    aput v1, v6, v8

    .line 1884
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_2

    :cond_a
    move v0, v1

    .line 1886
    goto :goto_3

    .line 1895
    :cond_b
    if-gtz v1, :cond_10

    .line 1897
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v0, v9, :cond_c

    if-eqz p1, :cond_d

    :cond_c
    move v0, v4

    .line 1900
    :goto_4
    if-ge v0, v3, :cond_f

    .line 1901
    aput v0, v6, v0

    .line 1900
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1905
    :cond_d
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1906
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_e

    .line 1907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1908
    const-string/jumbo v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_e
    monitor-exit p0

    .line 1910
    return-void

    :cond_f
    move v1, v3

    .line 1913
    :cond_10
    :try_start_5
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v0

    move v1, v0

    move v0, v2

    .line 1916
    :cond_11
    add-int/lit8 v0, v0, 0x1

    aget v2, v6, v0

    if-ltz v2, :cond_11

    .line 1918
    add-int/lit8 v1, v1, -0x1

    .line 1919
    if-gez v1, :cond_11

    .line 1923
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1849
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1924
    :cond_12
    :try_start_6
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, v9, :cond_13

    .line 1925
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 1926
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto/16 :goto_0

    .line 1928
    :cond_13
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_16

    .line 1930
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-nez v0, :cond_14

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_14

    .line 1932
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1933
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1934
    const-string/jumbo v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 1935
    return-void

    .line 1936
    :cond_14
    :try_start_7
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v0, v9, :cond_15

    if-eqz p1, :cond_4

    .line 1937
    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    goto/16 :goto_0

    .line 1940
    :cond_16
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 959
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 572
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 575
    invoke-virtual {p0, v4}, Lcom/android/music/MediaPlaybackService;->stopForeground(Z)V

    .line 577
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const-string/jumbo v0, "extdisplay"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ExternalDisplay;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mExternalDisplay:Landroid/app/ExternalDisplay;

    .line 581
    :cond_0
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 582
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 583
    const-class v2, Lcom/android/music/MediaButtonIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 582
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaButtonEventReceiver:Landroid/content/ComponentName;

    .line 584
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaButtonEventReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaButtonEventReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 587
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 589
    new-instance v1, Landroid/media/RemoteControlClient;

    invoke-direct {v1, v0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/android/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 590
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 592
    const/16 v0, 0x1ff

    .line 601
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 602
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p0}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 603
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p0}, Landroid/media/RemoteControlClient;->setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V

    .line 605
    const-string/jumbo v0, "Music"

    invoke-virtual {p0, v0, v3}, Lcom/android/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 606
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "repeatmode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 607
    invoke-static {p0}, Lcom/android/music/MusicUtils;->getCardId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mCardId:I

    .line 609
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->registerExternalStorageListener()V

    .line 610
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->registerA2dpServiceListener()V

    .line 614
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 615
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 617
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->reloadQueue()V

    .line 618
    const-string/jumbo v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 619
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 625
    const-string/jumbo v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string/jumbo v1, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string/jumbo v1, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    const-string/jumbo v1, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    const-string/jumbo v1, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    const-string/jumbo v1, "com.android.music.playstatusrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    const-string/jumbo v1, "rewind"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    const-string/jumbo v1, "fastforward"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 636
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 637
    const-string/jumbo v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mA2dpUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 640
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 641
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 646
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 647
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 648
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 649
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 651
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 657
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 663
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    const-string/jumbo v0, "MediaPlaybackService"

    const-string/jumbo v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 669
    const-string/jumbo v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 668
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    const-string/jumbo v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    const-string/jumbo v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 673
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->release()V

    .line 674
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    .line 676
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 677
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 678
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaButtonEventReceiver:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mMediaButtonEventReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 680
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mMediaButtonEventReceiver:Landroid/content/ComponentName;

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 685
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 687
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 689
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 692
    :cond_2
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 693
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 695
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mA2dpUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 696
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 697
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 698
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 699
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 700
    iput-object v3, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 702
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 703
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 704
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 705
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 706
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 708
    :cond_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 709
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 711
    :cond_5
    return-void
.end method

.method public onGetPlaybackPosition()J
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public onPlaybackPositionUpdate(J)V
    .locals 5

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 343
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x3

    .line 345
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 343
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 346
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 966
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    .prologue
    const-wide/16 v10, 0x7d0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 970
    iput p3, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    .line 971
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 973
    if-eqz p1, :cond_3

    .line 974
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 975
    const-string/jumbo v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 976
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    const-string/jumbo v0, "pause"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 980
    return v5

    :cond_0
    move v0, v1

    .line 979
    goto :goto_0

    .line 984
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartCommand "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 986
    const-string/jumbo v0, "next"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 987
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 1037
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1039
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1040
    return v1

    .line 988
    :cond_4
    const-string/jumbo v0, "previous"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 989
    const-string/jumbo v0, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 988
    if-eqz v0, :cond_7

    .line 990
    :cond_5
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v2

    cmp-long v0, v2, v10

    if-gez v0, :cond_6

    .line 991
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto :goto_1

    .line 993
    :cond_6
    invoke-virtual {p0, v8, v9}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 994
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 995
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_1

    .line 997
    :cond_7
    const-string/jumbo v0, "togglepause"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 998
    const-string/jumbo v0, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 997
    if-eqz v0, :cond_a

    .line 999
    :cond_8
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1000
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 1001
    sput-boolean v5, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    goto :goto_1

    .line 1003
    :cond_9
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_1

    .line 1005
    :cond_a
    const-string/jumbo v0, "pause"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1006
    :cond_b
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 1007
    sput-boolean v5, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    goto :goto_1

    .line 1008
    :cond_c
    const-string/jumbo v0, "play"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1009
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_1

    .line 1010
    :cond_d
    const-string/jumbo v0, "stop"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1011
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 1012
    sput-boolean v5, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    .line 1013
    invoke-virtual {p0, v8, v9}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_1

    .line 1014
    :cond_e
    const-string/jumbo v0, "com.android.music.playstatusrequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1015
    const-string/jumbo v0, "com.android.music.playstatusresponse"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1016
    :cond_f
    const-string/jumbo v0, "fastforward"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1017
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v2

    .line 1018
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 1019
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_10

    .line 1020
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_1

    .line 1022
    :cond_10
    invoke-virtual {p0, v2, v3}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_1

    .line 1024
    :cond_11
    const-string/jumbo v0, "rewind"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1025
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v2

    .line 1026
    const-wide/16 v4, 0x2710

    sub-long/2addr v2, v4

    .line 1027
    cmp-long v0, v2, v10

    if-gtz v0, :cond_12

    .line 1028
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto/16 :goto_1

    .line 1030
    :cond_12
    invoke-virtual {p0, v2, v3}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto/16 :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1045
    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceInUse:Z

    .line 1048
    invoke-direct {p0, v4}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V

    .line 1050
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/music/MediaPlaybackService;->mInternalPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    if-eqz v0, :cond_1

    .line 1054
    :cond_0
    return v4

    .line 1061
    :cond_1
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1063
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1064
    return v4

    .line 1068
    :cond_3
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->stopSelf(I)V

    .line 1069
    return v4
.end method

.method public open(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1563
    monitor-enter p0

    .line 1564
    if-nez p1, :cond_0

    monitor-exit p0

    .line 1565
    return-void

    .line 1568
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 1569
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1573
    const-string/jumbo v1, "content://media/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1574
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v3, v4

    .line 1583
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 1584
    const/4 v5, 0x0

    .line 1583
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1585
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1586
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 1587
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1603
    :cond_1
    :goto_1
    :try_start_2
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1604
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1605
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1606
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1607
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-le v0, v6, :cond_2

    .line 1610
    sget-boolean v0, Lcom/android/music/MediaPlaybackService;->mPlayPrev:Z

    if-eqz v0, :cond_7

    .line 1611
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 1616
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    if-eqz v0, :cond_4

    .line 1618
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1619
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mQuietMode:Z

    if-nez v0, :cond_3

    .line 1620
    const v0, 0x7f070054

    .line 1621
    const/4 v1, 0x0

    .line 1620
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1623
    :cond_3
    const-string/jumbo v0, "MediaPlaybackService"

    const-string/jumbo v1, "Failed to open file for playback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_3
    monitor-exit p0

    .line 1629
    return-void

    .line 1578
    :cond_5
    :try_start_3
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1579
    const-string/jumbo v3, "_data=?"

    .line 1580
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1590
    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1591
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1592
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 1593
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    .line 1594
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1597
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 1598
    :catch_1
    move-exception v0

    .line 1600
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_1

    .line 1613
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto :goto_2

    .line 1626
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mOpenFailedCounter:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public open([JI)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1388
    monitor-enter p0

    .line 1389
    :try_start_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1390
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 1392
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v4

    .line 1393
    array-length v3, p1

    .line 1395
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 1398
    :goto_0
    if-ge v2, v3, :cond_6

    .line 1399
    aget-wide v6, p1, v2

    iget-object v8, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v8, v8, v2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1405
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 1406
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/music/MediaPlaybackService;->addToPlayList([JI)V

    .line 1407
    const-string/jumbo v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1409
    :cond_2
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1410
    if-ltz p2, :cond_5

    .line 1411
    iput p2, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1415
    :goto_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1417
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1418
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1419
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_3

    .line 1420
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    .line 1423
    return-void

    .line 1398
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1413
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1756
    monitor-enter p0

    .line 1757
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1758
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->pause()V

    .line 1760
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->gotoIdleState()V

    .line 1761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1762
    const-string/jumbo v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1763
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1766
    return-void

    .line 1756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public play()V
    .locals 11

    .prologue
    const v10, 0x7f020035

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1635
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1636
    const/4 v2, 0x3

    .line 1635
    invoke-virtual {v0, v1, v2, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1638
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1640
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 1641
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v2, v6, :cond_0

    .line 1642
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    if-eq v2, v8, :cond_0

    .line 1643
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1644
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 1645
    invoke-virtual {p0, v6}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->start()V

    .line 1651
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1652
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1654
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1655
    const v1, 0x7f030012

    .line 1654
    invoke-direct {v2, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1656
    const v0, 0x7f0b0020

    invoke-virtual {v2, v0, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1660
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1661
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    .line 1663
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1664
    const v0, 0x7f0b0035

    invoke-virtual {v2, v0, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1665
    const-string/jumbo v0, "android.title"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1685
    :goto_0
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1687
    const-string/jumbo v1, "music_notification_channel"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 1688
    if-nez v1, :cond_1

    .line 1689
    const-string/jumbo v1, "MediaPlaybackService"

    const-string/jumbo v4, "channel == null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    new-instance v1, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "music_notification_channel"

    .line 1691
    const v5, 0x7f070050

    invoke-virtual {p0, v5}, Lcom/android/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1690
    invoke-direct {v1, v4, v5, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1695
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1697
    new-instance v0, Landroid/app/Notification$Builder;

    const-string/jumbo v1, "music_notification_channel"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1699
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1700
    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1701
    iput-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1702
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1703
    iput v10, v0, Landroid/app/Notification;->icon:I

    .line 1705
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1706
    const/high16 v2, 0x10000000

    .line 1705
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1704
    invoke-static {p0, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1707
    invoke-virtual {p0, v6, v0}, Lcom/android/music/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1708
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_2

    .line 1709
    iput-boolean v6, p0, Lcom/android/music/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1710
    const-string/jumbo v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1712
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->setExtDisplayPlay()V

    .line 1720
    :cond_3
    :goto_1
    invoke-direct {p0, v7}, Lcom/android/music/MediaPlaybackService;->updatePlaybackState(Z)V

    .line 1721
    return-void

    .line 1667
    :cond_4
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 1668
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0b0007

    invoke-virtual {v2, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1669
    const-string/jumbo v1, "android.title"

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1670
    if-eqz v0, :cond_5

    const-string/jumbo v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1671
    :cond_5
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1673
    :cond_6
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 1674
    if-eqz v1, :cond_7

    const-string/jumbo v4, "<unknown>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1675
    :cond_7
    const v1, 0x7f070038

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1676
    const-string/jumbo v4, "android.text"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1681
    :cond_8
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    .line 1682
    aput-object v1, v4, v6

    .line 1681
    const v0, 0x7f070067

    invoke-virtual {p0, v0, v4}, Lcom/android/music/MediaPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1680
    const v1, 0x7f0b0035

    .line 1679
    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1713
    :cond_9
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_3

    .line 1717
    invoke-virtual {p0, v8}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    goto :goto_1
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v0

    return-wide v0

    .line 2391
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public prev()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1802
    monitor-enter p0

    .line 1803
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/music/MediaPlaybackService;->mPlayPrev:Z

    .line 1804
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, v1, :cond_3

    .line 1806
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1807
    if-nez v0, :cond_0

    monitor-exit p0

    .line 1809
    return-void

    .line 1811
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1812
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1813
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1814
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mRand:Lcom/android/music/MediaPlaybackService$Shuffler;

    iget v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 1815
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1824
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->saveBookmarkIfNeeded()V

    .line 1825
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1826
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 1827
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService;->mResumeAfterCall:Z

    if-nez v0, :cond_2

    .line 1828
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1830
    :cond_2
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1831
    const-string/jumbo v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1833
    return-void

    .line 1818
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    if-lez v0, :cond_4

    .line 1819
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1802
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1821
    :cond_4
    :try_start_3
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public registerA2dpServiceListener()V
    .locals 2

    .prologue
    .line 1145
    new-instance v0, Lcom/android/music/MediaPlaybackService$9;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$9;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 1201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1202
    const-string/jumbo v1, "com.music.setaddressedplayer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1203
    const-string/jumbo v1, "com.android.music.playstatusrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1204
    const-string/jumbo v1, "org.codeaurora.music.playersettingsrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1205
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1206
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1110
    new-instance v0, Lcom/android/music/MediaPlaybackService$8;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$8;-><init>(Lcom/android/music/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1137
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1138
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1139
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1140
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1142
    :cond_0
    return-void
.end method

.method public removeTrack(J)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2173
    monitor-enter p0

    move v1, v0

    .line 2174
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 2175
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 2176
    invoke-direct {p0, v0, v0}, Lcom/android/music/MediaPlaybackService;->removeTracksInternal(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/2addr v1, v2

    .line 2177
    add-int/lit8 v0, v0, -0x1

    .line 2174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 2181
    if-lez v1, :cond_2

    .line 2182
    const-string/jumbo v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2184
    :cond_2
    return v1

    .line 2173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeTracks(II)I
    .locals 2

    .prologue
    .line 2114
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 2115
    if-lez v0, :cond_0

    .line 2116
    const-string/jumbo v1, "com.android.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2118
    :cond_0
    return v0
.end method

.method public seek(J)J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 2401
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2402
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 2403
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 2405
    :cond_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2406
    const/4 v0, 0x3

    .line 2407
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2405
    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 2408
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    move-result-wide v0

    return-wide v0

    .line 2406
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2410
    :cond_3
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setExtDisplayPlay()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1836
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1838
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->duration()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1839
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService;->mPlayer:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 1840
    const-string/jumbo v3, "music.mode"

    const-string/jumbo v4, "music.play"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1841
    const-string/jumbo v3, "music.duration"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1842
    const-string/jumbo v1, "music.position"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1843
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mExternalDisplay:Landroid/app/ExternalDisplay;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/app/ExternalDisplay;->notifyClient(ILandroid/os/Bundle;)V

    .line 1846
    :cond_0
    return-void
.end method

.method public setQueuePosition(I)V
    .locals 2

    .prologue
    .line 2286
    monitor-enter p0

    .line 2287
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 2288
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2289
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 2290
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 2291
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2292
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2293
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 2296
    return-void

    .line 2286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 3

    .prologue
    .line 2227
    monitor-enter p0

    .line 2229
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayList:[J

    if-nez v0, :cond_0

    .line 2230
    const-string/jumbo v0, "MediaPlaybackService"

    const-string/jumbo v1, "mPlayList not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2231
    return-void

    .line 2233
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mRepeatMode:I

    .line 2235
    const-string/jumbo v0, "org.codeaurora.music.playersettingsresponse"

    .line 2236
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    const/4 v2, 0x6

    .line 2235
    invoke-direct {p0, v0, v1, v2}, Lcom/android/music/MediaPlaybackService;->notifyAttributeValues(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 2237
    const-string/jumbo v0, "com.android.music.repeat"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 2240
    return-void

    .line 2227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 3

    .prologue
    .line 2188
    monitor-enter p0

    .line 2189
    :try_start_0
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    if-lez v0, :cond_0

    .line 2194
    const-string/jumbo v0, "org.codeaurora.music.playersettingsresponse"

    .line 2195
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    const/4 v2, 0x6

    .line 2194
    invoke-direct {p0, v0, v1, v2}, Lcom/android/music/MediaPlaybackService;->notifyAttributeValues(Ljava/lang/String;Ljava/util/HashMap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2196
    return-void

    .line 2198
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 2199
    iget v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2200
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->makeAutoShuffleList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2201
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayListLen:I

    .line 2202
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->doAutoShuffleUpdate()V

    .line 2203
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mPlayPos:I

    .line 2204
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackService;->openCurrent()V

    .line 2205
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 2206
    const-string/jumbo v0, "com.android.music.metadatachanged"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2207
    const-string/jumbo v0, "org.codeaurora.music.playersettingsresponse"

    .line 2208
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    const/4 v2, 0x6

    .line 2207
    invoke-direct {p0, v0, v1, v2}, Lcom/android/music/MediaPlaybackService;->notifyAttributeValues(Ljava/lang/String;Ljava/util/HashMap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 2209
    return-void

    .line 2212
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/music/MediaPlaybackService;->mShuffleMode:I

    .line 2215
    :cond_2
    const-string/jumbo v0, "org.codeaurora.music.playersettingsresponse"

    .line 2216
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    const/4 v2, 0x6

    .line 2215
    invoke-direct {p0, v0, v1, v2}, Lcom/android/music/MediaPlaybackService;->notifyAttributeValues(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 2217
    const-string/jumbo v0, "com.android.music.shuffle"

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->saveQueue(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 2220
    return-void

    .line 2188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1749
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/music/MediaPlaybackService;->stop(Z)V

    .line 1750
    return-void
.end method
