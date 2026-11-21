.class public Lcom/nuance/flext9_OEM/input/SoundEffects;
.super Ljava/lang/Object;
.source "SoundEffects.java"


# instance fields
.field protected context:Landroid/content/Context;

.field public released:Z

.field private final soundPool:Landroid/media/SoundPool;

.field private final soundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final volume:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->released:Z

    .line 20
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->context:Landroid/content/Context;

    .line 21
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x28

    invoke-direct {v0, p1, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    .line 23
    const-string/jumbo v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 24
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->volume:I

    .line 25
    return-void
.end method


# virtual methods
.method public addLoopSound(I)V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 37
    return-void
.end method

.method public addSound(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 28
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 29
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v4}, Landroid/media/SoundPool;->setLoop(II)V

    .line 31
    return-void
.end method

.method public play(I)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 40
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 41
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v1, v4}, Landroid/media/SoundPool;->setLoop(II)V

    .line 42
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->volume:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->volume:I

    int-to-float v3, v3

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 43
    return-void
.end method

.method public playLoop(I)V
    .locals 7

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 47
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 48
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->volume:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->volume:I

    int-to-float v3, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 49
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->released:Z

    .line 59
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 60
    return-void
.end method

.method public stop(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 54
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v3, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 55
    return-void
.end method
