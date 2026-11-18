.class Lcom/android/music/MusicPicker$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "MusicPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumIdx:I

.field private mArtistIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDurationIdx:I

.field private mIdIdx:I

.field private mIndexer:Lcom/android/music/MusicAlphabetIndexer;

.field private mIndexerSortMode:I

.field final mListView:Landroid/widget/ListView;

.field private mLoading:Z

.field private mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/MusicPicker;


# direct methods
.method constructor <init>(Lcom/android/music/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V
    .locals 6

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    .line 206
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 207
    iput-object p3, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    .line 208
    const v0, 0x7f070037

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 209
    const v0, 0x7f070038

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 210
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    invoke-static {v0}, Lcom/android/music/MusicPicker;->-get0(Lcom/android/music/MusicPicker;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    invoke-static {v0, v1}, Lcom/android/music/MusicPicker;->-set0(Lcom/android/music/MusicPicker;Z)Z

    .line 250
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    invoke-static {v0}, Lcom/android/music/MusicPicker;->-get1(Lcom/android/music/MusicPicker;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;

    .line 259
    iget v3, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    iget-object v4, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v3, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 260
    iget-object v3, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v4, v4, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v5, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/widget/TextView;->setText([CII)V

    .line 262
    iget v3, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mDurationIdx:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 263
    if-nez v3, :cond_5

    .line 264
    iget-object v3, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_0
    iget-object v3, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 272
    iget v4, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    if-eqz v4, :cond_2

    const-string/jumbo v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 274
    :cond_2
    iget-object v4, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    iget v4, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 280
    if-eqz v4, :cond_3

    const-string/jumbo v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 281
    :cond_3
    iget-object v4, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 286
    iget-object v5, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v5, v5

    if-ge v5, v4, :cond_4

    .line 287
    new-array v5, v4, [C

    iput-object v5, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 289
    :cond_4
    iget-object v5, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v3, v2, v4, v5, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 290
    iget-object v3, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v3, v5, v2, v4}, Landroid/widget/TextView;->setText([CII)V

    .line 296
    iget v3, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIdIdx:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 297
    iget-object v3, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget-wide v6, v6, Lcom/android/music/MusicPicker;->mSelectedId:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_8

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 304
    iget-object v0, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 305
    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget-wide v6, v1, Lcom/android/music/MusicPicker;->mPlayingId:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_9

    .line 306
    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    :goto_4
    return-void

    .line 266
    :cond_5
    iget-object v4, v0, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    int-to-long v6, v3

    invoke-static {p2, v6, v7}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 276
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 283
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    move v1, v2

    .line 297
    goto :goto_3

    .line 309
    :cond_9
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 325
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iput-object p1, v0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    .line 327
    if-eqz p1, :cond_1

    .line 329
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIdIdx:I

    .line 330
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    .line 332
    const-string/jumbo v0, "artist"

    .line 331
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    .line 333
    const-string/jumbo v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    .line 335
    const-string/jumbo v0, "duration"

    .line 334
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mDurationIdx:I

    .line 340
    iget v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    iget-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget v1, v1, Lcom/android/music/MusicPicker;->mSortMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-nez v0, :cond_2

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    iget v0, v0, Lcom/android/music/MusicPicker;->mSortMode:I

    iput v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    .line 342
    iget v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mTitleIdx:I

    .line 343
    iget v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexerSortMode:I

    packed-switch v1, :pswitch_data_0

    .line 351
    :goto_0
    new-instance v1, Lcom/android/music/MusicAlphabetIndexer;

    .line 352
    iget-object v2, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v2}, Lcom/android/music/MusicPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 353
    const v3, 0x7f070064

    .line 352
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-direct {v1, p1, v0, v2}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    .line 365
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    invoke-virtual {v0}, Lcom/android/music/MusicPicker;->makeListShown()V

    .line 366
    return-void

    .line 345
    :pswitch_0
    iget v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mArtistIdx:I

    goto :goto_0

    .line 348
    :pswitch_1
    iget v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    goto :goto_0

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/android/music/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPositionForSection(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/android/music/MusicPicker$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 383
    if-nez v0, :cond_0

    .line 385
    return v1

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/android/music/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0

    .line 390
    :cond_1
    return v1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mIndexer:Lcom/android/music/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/android/music/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 401
    :cond_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x0

    return v0

    .line 226
    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 232
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 233
    new-instance v2, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;-><init>(Lcom/android/music/MusicPicker$TrackListAdapter;)V

    .line 234
    const v0, 0x7f0b0013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 235
    const v0, 0x7f0b0014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f0b0029

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 237
    const v0, 0x7f0b0028

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v2, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 238
    const v0, 0x7f0b002a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 239
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v0, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, v2, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 240
    const/16 v0, 0xc8

    new-array v0, v0, [C

    iput-object v0, v2, Lcom/android/music/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 241
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 242
    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->this$0:Lcom/android/music/MusicPicker;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)V
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/music/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 218
    return-void
.end method
