.class Lcom/android/music/MusicPicker$1;
.super Ljava/lang/Object;
.source "MusicPicker.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicPicker;


# direct methods
.method constructor <init>(Lcom/android/music/MusicPicker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MusicPicker$1;->this$0:Lcom/android/music/MusicPicker;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 615
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 617
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
