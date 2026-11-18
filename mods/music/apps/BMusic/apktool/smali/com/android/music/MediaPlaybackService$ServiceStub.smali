.class Lcom/android/music/MediaPlaybackService$ServiceStub;
.super Lcom/android/music/IMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/music/MediaPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 1

    .prologue
    .line 2846
    invoke-direct {p0}, Lcom/android/music/IMediaPlaybackService$Stub;-><init>()V

    .line 2847
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    .line 2848
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueue([JI)V
    .locals 1

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->enqueue([JI)V

    .line 2920
    return-void
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getArtistId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getMediaMountedCount()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .locals 1

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getQueue()[J

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2955
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isComplete()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 1

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->moveQueueItem(II)V

    .line 2928
    return-void
.end method

.method public next()V
    .locals 2

    .prologue
    .line 2891
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 2892
    return-void
.end method

.method public open([JI)V
    .locals 1

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->open([JI)V

    .line 2856
    return-void
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/android/music/MediaPlaybackService;->open(Ljava/lang/String;)V

    .line 2852
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 2876
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 2880
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 2884
    return-void
.end method

.method public removeTrack(J)I
    .locals 1

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTrack(J)I

    move-result v0

    return v0
.end method

.method public removeTracks(II)I
    .locals 1

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTracks(II)I

    move-result v0

    return v0
.end method

.method public seek(J)J
    .locals 3

    .prologue
    .line 2947
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setExtDisplayPlay()V
    .locals 1

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->setExtDisplayPlay()V

    .line 2888
    return-void
.end method

.method public setQueuePosition(I)V
    .locals 1

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/android/music/MediaPlaybackService;->setQueuePosition(I)V

    .line 2864
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 2968
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1

    .prologue
    .line 2951
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 2952
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2871
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->stop()V

    .line 2872
    return-void
.end method
