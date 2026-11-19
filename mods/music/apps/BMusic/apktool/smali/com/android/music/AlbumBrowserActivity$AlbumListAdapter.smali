.class Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;,
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/AlbumBrowserActivity;

.field private mAlbumArtIndex:I

.field private mAlbumIdx:I

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private mArtistIdx:I

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mResources:Landroid/content/res/Resources;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Lcom/android/music/AlbumBrowserActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 622
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 594
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 599
    iput-boolean v6, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    .line 623
    iput-object p2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    .line 624
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;-><init>(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 626
    const v0, 0x7f070038

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 627
    const v0, 0x7f070037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 629
    const v0, 0x7f070066

    .line 628
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 631
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 633
    const v1, 0x7f020025

    .line 632
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 636
    const v1, 0x7f020024

    .line 635
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 637
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 640
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 641
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 642
    invoke-direct {p0, p4}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 643
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 644
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 647
    if-eqz p1, :cond_0

    .line 649
    const-string/jumbo v0, "album"

    .line 648
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    .line 651
    const-string/jumbo v0, "artist"

    .line 650
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    .line 653
    const-string/jumbo v0, "album_art"

    .line 652
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    .line 655
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    new-instance v0, Lcom/android/music/MusicAlphabetIndexer;

    iget v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    .line 659
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 658
    invoke-direct {v0, p1, v1, v2}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 690
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/android/music/AlbumBrowserActivity;->-get2(Lcom/android/music/AlbumBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    iget-object v1, v1, Lcom/android/music/AlbumBrowserActivity;->genericHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 692
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    iget-object v1, v1, Lcom/android/music/AlbumBrowserActivity;->genericHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 694
    :cond_0
    iget v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 696
    if-eqz v2, :cond_d

    .line 697
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "My recordings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 699
    const v1, 0x7f070071

    .line 698
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 707
    :goto_0
    if-eqz v2, :cond_7

    .line 708
    const-string/jumbo v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v3, v2

    .line 709
    :goto_1
    if-eqz v3, :cond_1

    .line 710
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 712
    :cond_1
    iget-object v2, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget-object v2, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 718
    if-eqz v2, :cond_c

    .line 719
    const-string/jumbo v1, "Your recordings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 721
    const v1, 0x7f070073

    .line 720
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 729
    :goto_2
    if-eqz v2, :cond_2

    const-string/jumbo v5, "<unknown>"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 730
    :cond_2
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 732
    :cond_3
    iget-object v2, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v1, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 737
    iget v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 738
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 739
    if-nez v3, :cond_4

    if-nez v2, :cond_a

    .line 740
    :cond_4
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    :goto_3
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v2

    .line 748
    iget-object v1, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 749
    cmp-long v2, v2, v6

    if-nez v2, :cond_b

    .line 750
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 751
    iget-object v1, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 752
    iget-object v0, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 759
    :goto_4
    return-void

    .line 700
    :cond_5
    const-string/jumbo v1, "FM recordings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 702
    const v1, 0x7f070072

    .line 701
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    move-object v1, v2

    .line 704
    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 707
    goto :goto_1

    .line 722
    :cond_8
    const-string/jumbo v1, "My FM recordings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 724
    const v1, 0x7f07007d

    .line 723
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    move-object v1, v2

    .line 726
    goto :goto_2

    .line 739
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 743
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 742
    invoke-static {p2, v6, v7, v2}, Lcom/android/music/MusicUtils;->getCachedArtwork(Landroid/content/Context;JLandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 744
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 755
    :cond_b
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 756
    iget-object v1, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 757
    iget-object v0, v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    :cond_c
    move-object v1, v2

    goto/16 :goto_2

    :cond_d
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 763
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/AlbumBrowserActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 764
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/android/music/AlbumBrowserActivity;->-get1(Lcom/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 768
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v0, p1}, Lcom/android/music/AlbumBrowserActivity;->-set0(Lcom/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 771
    invoke-direct {p0, p1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 772
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 774
    :cond_2
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0

    .line 801
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 791
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 794
    :cond_0
    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 674
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 675
    new-instance v2, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;-><init>()V

    .line 676
    const v0, 0x7f0b0013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 677
    const v0, 0x7f0b0014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 678
    const v0, 0x7f0b002a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 679
    const v0, 0x7f0b0020

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 680
    iget-object v0, v2, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 681
    iget-object v0, v2, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 682
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 683
    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 778
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    iget-boolean v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v1, :cond_2

    .line 780
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 782
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 780
    :cond_1
    if-eqz v0, :cond_2

    .line 781
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 779
    if-nez v1, :cond_0

    .line 784
    :cond_2
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    invoke-static {v1, v2, v0}, Lcom/android/music/AlbumBrowserActivity;->-wrap0(Lcom/android/music/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 785
    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    .line 787
    return-object v1
.end method

.method public setActivity(Lcom/android/music/AlbumBrowserActivity;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/android/music/AlbumBrowserActivity;

    .line 666
    return-void
.end method
