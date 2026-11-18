.class Lcom/android/music/AudioPreview$2;
.super Landroid/telephony/PhoneStateListener;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    .line 334
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 338
    return-void

    .line 340
    :cond_0
    if-eq p1, v2, :cond_1

    .line 341
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get4(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 344
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0, v2}, Lcom/android/music/AudioPreview;->-set2(Lcom/android/music/AudioPreview;Z)Z

    .line 352
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-wrap2(Lcom/android/music/AudioPreview;)V

    .line 353
    return-void

    .line 346
    :cond_3
    if-nez p1, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-get6(Lcom/android/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0}, Lcom/android/music/AudioPreview;->-wrap1(Lcom/android/music/AudioPreview;)V

    .line 349
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->-set2(Lcom/android/music/AudioPreview;Z)Z

    goto :goto_0
.end method
