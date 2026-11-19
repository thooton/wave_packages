.class Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCursorWrapper"
.end annotation


# instance fields
.field mArtistName:Ljava/lang/String;

.field mMagicColumnIdx:I

.field final synthetic this$1:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->this$1:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 970
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 967
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    .line 971
    iput-object p3, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    .line 972
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    const-string/jumbo v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 972
    if-eqz v0, :cond_1

    .line 974
    :cond_0
    invoke-static {p1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->-get1(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    .line 976
    :cond_1
    if-eqz p2, :cond_2

    .line 977
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    .line 978
    :cond_2
    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 1006
    invoke-super {p0}, Landroid/database/CursorWrapper;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 990
    const-string/jumbo v0, "artist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    return v0

    .line 993
    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    if-eq p1, v0, :cond_0

    .line 999
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1001
    :cond_0
    const-string/jumbo v0, "artist"

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 982
    iget v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    if-eq p1, v0, :cond_0

    .line 983
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    return-object v0
.end method
