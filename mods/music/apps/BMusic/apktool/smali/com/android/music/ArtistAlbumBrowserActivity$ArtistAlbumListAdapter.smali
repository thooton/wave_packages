.class Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArtistAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;,
        Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private final mBuffer:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mContext:Landroid/content/Context;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private final mFormatArgs3:[Ljava/lang/Object;

.field private mGroupAlbumIdx:I

.field private mGroupArtistIdIdx:I

.field private mGroupArtistIdx:I

.field private mGroupSongIdx:I

.field private mIndexer:Lcom/android/music/MusicAlphabetIndexer;

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/android/music/ArtistAlbumBrowserActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 730
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 697
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 698
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    .line 731
    iput-object p2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    .line 732
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 733
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 735
    const v1, 0x7f020025

    .line 734
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 737
    const v1, 0x7f020024

    .line 736
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 740
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 741
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 743
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mContext:Landroid/content/Context;

    .line 744
    invoke-direct {p0, p3}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 745
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 747
    const v0, 0x7f070066

    .line 746
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 748
    const v0, 0x7f070038

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 749
    const v0, 0x7f070037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 750
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 753
    if-eqz p1, :cond_0

    .line 756
    :try_start_0
    const-string/jumbo v0, "_id"

    .line 755
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdIdx:I

    .line 758
    const-string/jumbo v0, "artist"

    .line 757
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    .line 760
    const-string/jumbo v0, "number_of_albums"

    .line 759
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupAlbumIdx:I

    .line 762
    const-string/jumbo v0, "number_of_tracks"

    .line 761
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupSongIdx:I

    .line 763
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/android/music/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    new-instance v0, Lcom/android/music/MusicAlphabetIndexer;

    .line 767
    iget v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    .line 768
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 766
    invoke-direct {v0, p1, v1, v2}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 874
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 877
    const-string/jumbo v1, "album"

    .line 876
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 879
    if-eqz v1, :cond_3

    .line 880
    const-string/jumbo v2, "<unknown>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v3, v2

    .line 881
    :goto_0
    if-eqz v3, :cond_0

    .line 882
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 884
    :cond_0
    iget-object v2, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    const-string/jumbo v1, "numsongs"

    .line 887
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 886
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 891
    const-string/jumbo v2, "numsongs_by_artist"

    .line 890
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 889
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 893
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 895
    if-eqz v3, :cond_1

    move v1, v2

    .line 899
    :cond_1
    if-ne v1, v4, :cond_4

    .line 900
    const/high16 v1, 0x7f070000

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    :goto_1
    iget-object v1, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v1, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 924
    const-string/jumbo v2, "album_art"

    .line 923
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 925
    if-nez v3, :cond_2

    if-nez v2, :cond_6

    .line 926
    :cond_2
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 927
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 935
    :goto_2
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v2

    .line 936
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 937
    iget-object v1, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 938
    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    .line 939
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 940
    iget-object v1, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 941
    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v0, v9, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 947
    :goto_3
    return-void

    :cond_3
    move v3, v4

    .line 879
    goto :goto_0

    .line 902
    :cond_4
    if-ne v1, v2, :cond_5

    .line 903
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 904
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v8

    .line 905
    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 906
    const/high16 v7, 0x7f080000

    .line 905
    invoke-virtual {v6, v7, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 908
    :cond_5
    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    .line 909
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 910
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    .line 913
    const-string/jumbo v2, "artist"

    .line 912
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 911
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v6, v7

    .line 914
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 915
    const v7, 0x7f080001

    .line 914
    invoke-virtual {v2, v7, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 925
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 929
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 931
    iget-object v5, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 930
    invoke-static {p2, v2, v3, v5}, Lcom/android/music/MusicUtils;->getCachedArtwork(Landroid/content/Context;JLandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 932
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 943
    :cond_7
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 944
    iget-object v1, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 945
    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v0, v9, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 824
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 825
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->-get2(Lcom/android/music/ArtistAlbumBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    iget-object v1, v1, Lcom/android/music/ArtistAlbumBrowserActivity;->genericHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 827
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    iget-object v1, v1, Lcom/android/music/ArtistAlbumBrowserActivity;->genericHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 829
    :cond_0
    iget v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 831
    if-eqz v2, :cond_6

    .line 832
    const-string/jumbo v1, "Your recordings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 834
    const v1, 0x7f070073

    .line 833
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 842
    :goto_0
    if-eqz v2, :cond_4

    .line 843
    const-string/jumbo v4, "<unknown>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 844
    :goto_1
    if-eqz v2, :cond_1

    .line 845
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 847
    :cond_1
    iget-object v4, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    iget v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupAlbumIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 850
    iget v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupSongIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 852
    invoke-static {p2, v1, v4, v2}, Lcom/android/music/MusicUtils;->makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v1

    .line 855
    iget-object v2, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentArtistId()J

    move-result-wide v4

    .line 858
    iget v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 859
    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    xor-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    .line 860
    iget-object v1, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 861
    iget-object v1, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 862
    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 868
    :goto_2
    return-void

    .line 835
    :cond_2
    const-string/jumbo v1, "My FM recordings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 837
    const v1, 0x7f07007d

    .line 836
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 839
    goto :goto_0

    :cond_4
    move v2, v3

    .line 842
    goto :goto_1

    .line 864
    :cond_5
    iget-object v1, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 865
    iget-object v1, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 866
    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1015
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1016
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    .line 1019
    :cond_0
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->-get1(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 1020
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v0, p1}, Lcom/android/music/ArtistAlbumBrowserActivity;->-set0(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1023
    invoke-direct {p0, p1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1024
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1026
    :cond_2
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 953
    const-string/jumbo v0, "_id"

    .line 952
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 955
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 956
    const-string/jumbo v0, "album"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 957
    const-string/jumbo v0, "numsongs"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 958
    const-string/jumbo v0, "numsongs_by_artist"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    .line 959
    const-string/jumbo v0, "album_art"

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 960
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    .line 961
    const-string/jumbo v1, "external"

    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 963
    const-string/jumbo v5, "album_key"

    move-object v4, v3

    .line 960
    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1009
    new-instance v1, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;

    .line 1010
    iget v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mGroupArtistIdx:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1009
    invoke-direct {v1, p0, v0, v2}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/database/Cursor;Ljava/lang/String;)V

    return-object v1
.end method

.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/android/music/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0

    .line 1053
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1043
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/android/music/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1046
    :cond_0
    return-object v1
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 809
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 810
    new-instance v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>()V

    .line 811
    const v0, 0x7f0b0013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 812
    const v0, 0x7f0b0014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 813
    const v0, 0x7f0b002a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 814
    const v0, 0x7f0b0020

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 815
    iget-object v0, v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 816
    iget-object v0, v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 817
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 818
    return-object v1
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0b0020

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 787
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->-get2(Lcom/android/music/ArtistAlbumBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity;->genericHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    iget-object v0, v0, Lcom/android/music/ArtistAlbumBrowserActivity;->genericHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 791
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 792
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 793
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 794
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 795
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 796
    new-instance v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>()V

    .line 797
    const v0, 0x7f0b0013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 798
    const v0, 0x7f0b0014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 799
    const v0, 0x7f0b002a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 800
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 801
    iget-object v0, v2, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v4, v5, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 802
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 803
    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1030
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1031
    iget-boolean v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v1, :cond_2

    .line 1032
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1034
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1032
    :cond_1
    if-eqz v0, :cond_2

    .line 1033
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1031
    if-nez v1, :cond_0

    .line 1036
    :cond_2
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v1, v2, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->-wrap0(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1037
    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 1038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    .line 1039
    return-object v1
.end method

.method public setActivity(Lcom/android/music/ArtistAlbumBrowserActivity;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/android/music/ArtistAlbumBrowserActivity;

    .line 778
    return-void
.end method
