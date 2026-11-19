.class Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/QueryBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method static synthetic -get0(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;)Lcom/android/music/QueryBrowserActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 482
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 463
    iput-object v6, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    .line 465
    iput-object v6, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    .line 483
    iput-object p2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    .line 484
    new-instance v0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;-><init>(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 485
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const v6, 0x7f070038

    const/4 v4, -0x2

    const v5, 0x7f070037

    .line 497
    const v0, 0x7f0b0013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 498
    const v1, 0x7f0b0014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 499
    const v2, 0x7f0b0020

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 500
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 501
    if-nez v3, :cond_0

    .line 503
    invoke-static {p3}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;)V

    .line 504
    return-void

    .line 506
    :cond_0
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 507
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 510
    const-string/jumbo v3, "mime_type"

    .line 509
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 512
    if-nez v3, :cond_1

    .line 513
    const-string/jumbo v3, "audio/"

    .line 515
    :cond_1
    const-string/jumbo v4, "artist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 516
    const v3, 0x7f02001f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 519
    const-string/jumbo v2, "artist"

    .line 518
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 517
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 521
    const/4 v2, 0x0

    .line 522
    if-eqz v3, :cond_2

    const-string/jumbo v4, "<unknown>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 523
    :cond_2
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 525
    const/4 v2, 0x1

    .line 527
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    const-string/jumbo v0, "data1"

    .line 529
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 532
    const-string/jumbo v3, "data2"

    .line 531
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 534
    invoke-static {p2, v0, v3, v2}, Lcom/android/music/MusicUtils;->makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    :cond_4
    :goto_0
    return-void

    .line 539
    :cond_5
    const-string/jumbo v4, "album"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 540
    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    const-string/jumbo v2, "album"

    .line 541
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 544
    if-eqz v2, :cond_6

    const-string/jumbo v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 545
    :cond_6
    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 548
    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    const-string/jumbo v0, "artist"

    .line 551
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 550
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_8

    const-string/jumbo v2, "<unknown>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 555
    :cond_8
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    :cond_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 560
    :cond_a
    const-string/jumbo v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 561
    const-string/jumbo v4, "application/ogg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 560
    if-nez v4, :cond_b

    .line 562
    const-string/jumbo v4, "application/x-ogg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 560
    if-eqz v3, :cond_4

    .line 563
    :cond_b
    const v3, 0x7f020022

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 565
    const-string/jumbo v2, "title"

    .line 564
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    const-string/jumbo v0, "artist"

    .line 569
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 568
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_c

    .line 572
    const-string/jumbo v2, "<unknown>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 571
    if-eqz v2, :cond_d

    .line 573
    :cond_c
    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    :cond_d
    const-string/jumbo v2, "album"

    .line 576
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 578
    if-eqz v2, :cond_e

    const-string/jumbo v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 579
    :cond_e
    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 581
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 587
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/QueryBrowserActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 588
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    invoke-static {v1}, Lcom/android/music/QueryBrowserActivity;->-get1(Lcom/android/music/QueryBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 592
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    invoke-static {v0, p1}, Lcom/android/music/QueryBrowserActivity;->-set0(Lcom/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 596
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 598
    :cond_2
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 602
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    iget-boolean v1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    if-eqz v1, :cond_2

    .line 604
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 604
    :cond_1
    if-eqz v0, :cond_2

    .line 605
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 603
    if-nez v1, :cond_0

    .line 608
    :cond_2
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    invoke-static {v1, v2, v0}, Lcom/android/music/QueryBrowserActivity;->-wrap0(Lcom/android/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 609
    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    .line 611
    return-object v1
.end method

.method public setActivity(Lcom/android/music/QueryBrowserActivity;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    .line 489
    return-void
.end method
