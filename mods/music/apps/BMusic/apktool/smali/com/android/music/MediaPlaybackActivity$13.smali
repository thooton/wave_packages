.class Lcom/android/music/MediaPlaybackActivity$13;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/android/music/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0, p4, p2, p3}, Lcom/android/music/MediaPlaybackActivity;->-wrap5(Lcom/android/music/MediaPlaybackActivity;IJ)V

    .line 547
    return-void
.end method
