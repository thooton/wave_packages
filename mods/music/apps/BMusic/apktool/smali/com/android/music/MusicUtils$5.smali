.class final Lcom/android/music/MusicUtils$5;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MusicUtils;->showDeleteDialog(Landroid/content/Context;[JZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isPlaylist:Z

.field final synthetic val$list:[J


# direct methods
.method constructor <init>(ZLandroid/content/Context;[J)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/music/MusicUtils$5;->val$isPlaylist:Z

    iput-object p2, p0, Lcom/android/music/MusicUtils$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/music/MusicUtils$5;->val$list:[J

    .line 1887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1890
    iget-boolean v0, p0, Lcom/android/music/MusicUtils$5;->val$isPlaylist:Z

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/android/music/MusicUtils$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/music/MusicUtils$5;->val$list:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/android/music/MusicUtils;->deletePlaylist(Landroid/content/Context;I)V

    .line 1895
    :goto_0
    return-void

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/android/music/MusicUtils$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/music/MusicUtils$5;->val$list:[J

    invoke-static {v0, v1}, Lcom/android/music/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    goto :goto_0
.end method
