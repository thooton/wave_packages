.class Lcom/android/music/MediaPlaybackService$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 1

    .prologue
    .line 1523
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MyContentObserver;->this$0:Lcom/android/music/MediaPlaybackService;

    .line 1524
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1525
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 1550
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1531
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MyContentObserver;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1532
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1533
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MyContentObserver;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v2, v2, Lcom/android/music/MediaPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 1534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$MyContentObserver;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v4}, Lcom/android/music/MediaPlaybackService;->-get7(Lcom/android/music/MediaPlaybackService;)[J

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackService$MyContentObserver;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v5}, Lcom/android/music/MediaPlaybackService;->-get8(Lcom/android/music/MediaPlaybackService;)I

    move-result v5

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1535
    const/4 v5, 0x0

    .line 1531
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1540
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MyContentObserver;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1542
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MyContentObserver;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 1545
    :cond_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1546
    return-void

    .line 1536
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 1538
    goto :goto_0
.end method
