.class Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "MultiPickContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiPickContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mContactIdIndex:I

.field private mContactLookupIndex:I

.field private mDisplayNameIndex:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSortedIndex:I

.field final synthetic this$0:Lcom/android/mms/ui/MultiPickContactsActivity;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;)Lcom/android/mms/ui/MultiPickContactsActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/content/Context;Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 9

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 338
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraint:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraintIsValid:Z

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactIdIndex:I

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactLookupIndex:I

    .line 320
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mDisplayNameIndex:I

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mSortedIndex:I

    .line 340
    iput-object p3, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    .line 341
    new-instance v0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 342
    invoke-direct {p0, p4}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->getColumnIndex(Landroid/database/Cursor;)V

    .line 343
    return-void
.end method

.method private getColumnIndex(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 476
    const-string/jumbo v0, "MultiPickContactsActivity"

    const-string/jumbo v1, "getColumnsIndex, the cursor is null, couldn\'t get the index."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void

    .line 479
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactIdIndex:I

    .line 481
    const-string/jumbo v0, "lookup"

    .line 480
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactLookupIndex:I

    .line 483
    const-string/jumbo v0, "display_name"

    .line 482
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mDisplayNameIndex:I

    .line 484
    const-string/jumbo v0, "sort_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mSortedIndex:I

    .line 486
    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v9, 0x0

    .line 394
    const v0, 0x7f0f0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 395
    const v1, 0x7f0f0125

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 397
    const/4 v3, -0x1

    .line 400
    const-string/jumbo v4, "mimetype"

    .line 399
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 401
    if-nez v4, :cond_0

    .line 402
    const-string/jumbo v0, "MultiPickContactsActivity"

    const-string/jumbo v1, "bindChildView, the mimetype is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void

    .line 404
    :cond_0
    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 406
    const v3, 0x1080036

    .line 407
    const-string/jumbo v2, "data1"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const v0, 0x7f0f0126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 417
    const v1, 0x7f0f0127

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 418
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 422
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 439
    :goto_1
    return-void

    .line 408
    :cond_2
    const-string/jumbo v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 410
    const v3, 0x7f020072

    .line 411
    const-string/jumbo v2, "data1"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 424
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 426
    const-string/jumbo v3, "contact_id"

    .line 425
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 427
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 429
    new-instance v5, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    iget-object v8, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-direct {v5, v8, v6, v7, v3}, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity;JI)V

    .line 430
    iput v1, v5, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    .line 431
    iput-object v4, v5, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mMimeType:Ljava/lang/String;

    .line 432
    iput-object v2, v5, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mValue:Ljava/lang/String;

    .line 433
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 435
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get4(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->isSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 436
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 437
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setFocusable(Z)V

    goto :goto_1
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 352
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 354
    const v0, 0x7f0f0125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 355
    iget v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mDisplayNameIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v2, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const v0, 0x7f0f0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 370
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    const v0, 0x7f0f0126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 373
    const v1, 0x7f0f0127

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 374
    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 375
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 377
    iget v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactIdIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 378
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 379
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get4(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->isSelected(J)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 380
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 384
    iget v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactLookupIndex:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 386
    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get4(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->isSelected(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 449
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 450
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get1(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MultiPickContactsActivity;->-set0(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 455
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->getColumnIndex(Landroid/database/Cursor;)V

    .line 456
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 458
    :cond_1
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 443
    iget v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mContactIdIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-wrap1(Lcom/android/mms/ui/MultiPickContactsActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    iget-boolean v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraintIsValid:Z

    if-eqz v1, :cond_2

    .line 464
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraint:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 465
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 463
    if-nez v1, :cond_0

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mActivity:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v1, v2, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-wrap0(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 469
    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraint:Ljava/lang/String;

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->mConstraintIsValid:Z

    .line 471
    return-object v1
.end method
