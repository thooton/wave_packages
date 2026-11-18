.class Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;,
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/TrackBrowserActivity;

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mDisableNowPlayingIndicator:Z

.field mDurationIdx:I

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field mIsNowPlaying:Z

.field private mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1659
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1587
    iput-object v6, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1589
    iput-object v6, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 1660
    iput-object p2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1661
    invoke-direct {p0, p4}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1662
    iput-boolean p7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    .line 1663
    iput-boolean p8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 1664
    const v0, 0x7f070037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1665
    const v0, 0x7f070038

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1667
    new-instance v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;-><init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    .line 1668
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 1679
    if-eqz p1, :cond_0

    .line 1681
    const-string/jumbo v0, "title"

    .line 1680
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    .line 1683
    const-string/jumbo v0, "artist"

    .line 1682
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    .line 1685
    const-string/jumbo v0, "duration"

    .line 1684
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    .line 1688
    :try_start_0
    const-string/jumbo v0, "audio_id"

    .line 1687
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    :goto_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 1704
    :cond_0
    :goto_1
    return-void

    .line 1689
    :catch_0
    move-exception v0

    .line 1691
    const-string/jumbo v0, "_id"

    .line 1690
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0

    .line 1696
    :cond_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->-get5(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->-get1(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1698
    const v1, 0x7f070064

    .line 1697
    invoke-virtual {v0, v1}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1700
    new-instance v1, Lcom/android/music/MusicAlphabetIndexer;

    iget v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    invoke-direct {v1, p1, v2, v0}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1726
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 1728
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->-get2(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1729
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    iget-object v1, v1, Lcom/android/music/TrackBrowserActivity;->genericHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1730
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    iget-object v1, v1, Lcom/android/music/TrackBrowserActivity;->genericHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1732
    :cond_0
    iget v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    iget-object v2, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1733
    iget-object v1, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v3, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v1, v2, v6, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 1735
    iget v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    .line 1736
    if-nez v1, :cond_6

    .line 1737
    iget-object v1, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1742
    :goto_0
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1743
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v6, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1745
    iget v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1746
    if-eqz v1, :cond_7

    const-string/jumbo v3, "Your recordings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1747
    const v1, 0x7f070073

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1753
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const-string/jumbo v3, "<unknown>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1754
    :cond_2
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1759
    iget-object v3, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v3, v3

    if-ge v3, v1, :cond_3

    .line 1760
    new-array v3, v1, [C

    iput-object v3, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 1762
    :cond_3
    iget-object v3, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v2, v6, v1, v3, v6}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 1763
    iget-object v2, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v2, v3, v6, v1}, Landroid/widget/TextView;->setText([CII)V

    .line 1765
    iget-object v1, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 1766
    const-wide/16 v2, -0x1

    .line 1767
    sget-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v4, :cond_4

    .line 1770
    :try_start_0
    iget-boolean v4, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v4, :cond_9

    .line 1771
    sget-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    .line 1796
    :cond_4
    :goto_3
    iget-boolean v4, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v4, :cond_a

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_a

    .line 1799
    :cond_5
    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1800
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1801
    iget-object v1, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1802
    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1808
    :goto_4
    return-void

    .line 1739
    :cond_6
    iget-object v2, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    int-to-long v4, v1

    invoke-static {p2, v4, v5}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1748
    :cond_7
    if-eqz v1, :cond_1

    .line 1749
    const-string/jumbo v3, "My FM recordings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 1748
    if-eqz v3, :cond_1

    .line 1750
    const v1, 0x7f07007d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1756
    :cond_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1773
    :cond_9
    :try_start_1
    sget-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_3

    .line 1797
    :cond_a
    iget-boolean v4, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    .line 1798
    iget v4, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    .line 1797
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_5

    .line 1804
    :cond_b
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1805
    iget-object v1, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1806
    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    .line 1775
    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1812
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/TrackBrowserActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1813
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    .line 1816
    :cond_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->-get9(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 1817
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 1820
    :cond_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0, p1}, Lcom/android/music/TrackBrowserActivity;->-set3(Lcom/android/music/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1821
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1822
    invoke-direct {p0, p1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1824
    :cond_2
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0

    .line 1854
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 1858
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 1844
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1846
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, " "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 1708
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1709
    const v0, 0x7f0b0020

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1710
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1712
    new-instance v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;-><init>()V

    .line 1713
    const v0, 0x7f0b0013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 1714
    const v0, 0x7f0b0014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 1715
    const v0, 0x7f0b0029

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 1716
    const v0, 0x7f0b002a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 1717
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v0, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 1718
    const/16 v0, 0xc8

    new-array v0, v0, [C

    iput-object v0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 1719
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1720
    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 1828
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1829
    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v1, :cond_2

    .line 1830
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1832
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1830
    :cond_1
    if-eqz v0, :cond_2

    .line 1831
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1830
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1829
    if-nez v1, :cond_0

    .line 1834
    :cond_2
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/android/music/TrackBrowserActivity;->-wrap0(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    .line 1835
    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 1837
    return-object v1
.end method

.method public setActivity(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1672
    return-void
.end method
