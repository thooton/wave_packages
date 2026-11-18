.class Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaylistListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/PlaylistBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mIdIdx:I

.field mPathIndex:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mTitleIdx:I


# direct methods
.method static synthetic -get0(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/android/music/PlaylistBrowserActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/music/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 727
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 702
    iput-object v6, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    .line 704
    iput-object v6, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    .line 728
    iput-object p2, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    .line 729
    invoke-direct {p0, p4}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 730
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;-><init>(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 731
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 734
    if-eqz p1, :cond_0

    .line 736
    const-string/jumbo v0, "name"

    .line 735
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    .line 738
    const-string/jumbo v0, "_id"

    .line 737
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    .line 740
    const-string/jumbo v0, "_data"

    .line 739
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mPathIndex:I

    .line 742
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v6, -0x2

    .line 754
    const v0, 0x7f0b0013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 755
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v1}, Lcom/android/music/PlaylistBrowserActivity;->-get1(Lcom/android/music/PlaylistBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    iget-object v1, v1, Lcom/android/music/PlaylistBrowserActivity;->genericHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 757
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    iget-object v1, v1, Lcom/android/music/PlaylistBrowserActivity;->genericHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 759
    :cond_0
    iget v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 760
    if-eqz v1, :cond_2

    const-string/jumbo v2, "My recordings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 761
    const v1, 0x7f070071

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 767
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 771
    const v0, 0x7f0b0020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 772
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 773
    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 783
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 784
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 785
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 787
    const v0, 0x7f0b002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 788
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 790
    const v0, 0x7f0b0014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 791
    return-void

    .line 762
    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v2, "FM recordings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 763
    const v1, 0x7f070072

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 764
    :cond_3
    if-eqz v1, :cond_1

    const-string/jumbo v2, "Recently added"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 765
    const v1, 0x7f070028

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 775
    :cond_4
    iget v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mPathIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 776
    if-eqz v1, :cond_5

    const-string/jumbo v2, "external_sd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 777
    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 779
    :cond_5
    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 795
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/PlaylistBrowserActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 796
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v1}, Lcom/android/music/PlaylistBrowserActivity;->-get3(Lcom/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 800
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v0, p1}, Lcom/android/music/PlaylistBrowserActivity;->-set2(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 803
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 804
    invoke-direct {p0, p1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 806
    :cond_2
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 810
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    iget-boolean v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    if-eqz v1, :cond_2

    .line 812
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 812
    :cond_1
    if-eqz v0, :cond_2

    .line 813
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 811
    if-nez v1, :cond_0

    .line 816
    :cond_2
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v1, v2, v0}, Lcom/android/music/PlaylistBrowserActivity;->-wrap0(Lcom/android/music/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 817
    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    .line 819
    return-object v1
.end method

.method public setActivity(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/android/music/PlaylistBrowserActivity;

    .line 746
    return-void
.end method
