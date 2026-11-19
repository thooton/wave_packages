.class Lcom/android/music/ScanningProgress$1;
.super Landroid/os/Handler;
.source "ScanningProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/ScanningProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/ScanningProgress;


# direct methods
.method constructor <init>(Lcom/android/music/ScanningProgress;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/ScanningProgress$1;->this$0:Lcom/android/music/ScanningProgress;

    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/music/ScanningProgress$1;->this$0:Lcom/android/music/ScanningProgress;

    invoke-virtual {v0}, Lcom/android/music/ScanningProgress;->finish()V

    .line 44
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/music/ScanningProgress$1;->this$0:Lcom/android/music/ScanningProgress;

    .line 47
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 46
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 52
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 53
    iget-object v0, p0, Lcom/android/music/ScanningProgress$1;->this$0:Lcom/android/music/ScanningProgress;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/music/ScanningProgress;->setResult(I)V

    .line 54
    iget-object v0, p0, Lcom/android/music/ScanningProgress$1;->this$0:Lcom/android/music/ScanningProgress;

    invoke-virtual {v0}, Lcom/android/music/ScanningProgress;->finish()V

    .line 55
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/android/music/ScanningProgress;->-get0()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_3

    .line 62
    invoke-static {}, Lcom/android/music/ScanningProgress;->-get0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/music/ScanningProgress;->-set0(I)I

    .line 63
    invoke-virtual {p0, v6}, Lcom/android/music/ScanningProgress$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 64
    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/music/ScanningProgress$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 71
    :cond_2
    return-void

    .line 66
    :cond_3
    invoke-static {v6}, Lcom/android/music/ScanningProgress;->-set0(I)I

    .line 67
    iget-object v0, p0, Lcom/android/music/ScanningProgress$1;->this$0:Lcom/android/music/ScanningProgress;

    invoke-virtual {v0}, Lcom/android/music/ScanningProgress;->finish()V

    .line 68
    return-void
.end method
