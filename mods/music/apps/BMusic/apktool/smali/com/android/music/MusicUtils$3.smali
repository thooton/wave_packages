.class final Lcom/android/music/MusicUtils$3;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Lcom/android/music/RenameDialogBuilder$OnPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MusicUtils;->createPlayList(Landroid/content/Context;[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$list:[J


# direct methods
.method constructor <init>(Landroid/content/Context;[J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/MusicUtils$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/music/MusicUtils$3;->val$list:[J

    .line 1780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/music/MusicUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1785
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1786
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1787
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1790
    if-eqz v0, :cond_0

    .line 1791
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1792
    iget-object v1, p0, Lcom/android/music/MusicUtils$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/music/MusicUtils$3;->val$list:[J

    int-to-long v4, v0

    invoke-static {v1, v2, v4, v5}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    .line 1794
    :cond_0
    return-void
.end method
