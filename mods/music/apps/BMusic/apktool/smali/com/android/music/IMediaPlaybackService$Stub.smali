.class public abstract Lcom/android/music/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/android/music/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/music/IMediaPlaybackService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/music/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/music/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    .line 47
    :sswitch_1
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->openFile(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    return v1

    .line 56
    :sswitch_2
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->open([JI)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v1

    .line 67
    :sswitch_3
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v1

    .line 75
    :sswitch_4
    const-string/jumbo v2, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v2

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return v1

    .line 83
    :sswitch_5
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->stop()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v1

    .line 90
    :sswitch_6
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->pause()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    return v1

    .line 97
    :sswitch_7
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->play()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v1

    .line 104
    :sswitch_8
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->prev()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    return v1

    .line 111
    :sswitch_9
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->next()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v1

    .line 118
    :sswitch_a
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v2

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    return v1

    .line 126
    :sswitch_b
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->position()J

    move-result-wide v2

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    return v1

    .line 134
    :sswitch_c
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 137
    invoke-virtual {p0, v2, v3}, Lcom/android/music/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v2

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    return v1

    .line 144
    :sswitch_d
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v1

    .line 152
    :sswitch_e
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    return v1

    .line 160
    :sswitch_f
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAlbumId()J

    move-result-wide v2

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    return v1

    .line 168
    :sswitch_10
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    return v1

    .line 176
    :sswitch_11
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getArtistId()J

    move-result-wide v2

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    return v1

    .line 184
    :sswitch_12
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->enqueue([JI)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    return v1

    .line 195
    :sswitch_13
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getQueue()[J

    move-result-object v0

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 199
    return v1

    .line 203
    :sswitch_14
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    return v1

    .line 214
    :sswitch_15
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    return v1

    .line 223
    :sswitch_16
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    return v1

    .line 231
    :sswitch_17
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAudioId()J

    move-result-wide v2

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    return v1

    .line 239
    :sswitch_18
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    return v1

    .line 248
    :sswitch_19
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v0

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    return v1

    .line 256
    :sswitch_1a
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 261
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v0

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    return v1

    .line 268
    :sswitch_1b
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 271
    invoke-virtual {p0, v2, v3}, Lcom/android/music/IMediaPlaybackService$Stub;->removeTrack(J)I

    move-result v0

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    return v1

    .line 278
    :sswitch_1c
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    return v1

    .line 287
    :sswitch_1d
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v0

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    return v1

    .line 295
    :sswitch_1e
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v0

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    return v1

    .line 303
    :sswitch_1f
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAudioSessionId()I

    move-result v0

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    return v1

    .line 311
    :sswitch_20
    const-string/jumbo v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->setExtDisplayPlay()V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    return v1

    .line 318
    :sswitch_21
    const-string/jumbo v2, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->isComplete()Z

    move-result v2

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    return v1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
