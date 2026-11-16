.class Lcom/android/mms/ui/multipleviews/AudioViewFragment$3;
.super Ljava/lang/Object;
.source "AudioViewFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/multipleviews/AudioViewFragment;->initializeMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$3;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/AudioViewFragment$3;->this$0:Lcom/android/mms/ui/multipleviews/AudioViewFragment;

    invoke-static {v0}, Lcom/android/mms/ui/multipleviews/AudioViewFragment;->-wrap1(Lcom/android/mms/ui/multipleviews/AudioViewFragment;)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method
