.class public Lcom/android/mms/rcs/FavoriteDetailActivity;
.super Landroid/app/Activity;
.source "FavoriteDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;,
        Lcom/android/mms/rcs/FavoriteDetailActivity$ForwardClickListener;,
        Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;
    }
.end annotation


# instance fields
.field private mBackgroundHandler:Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;

.field private mContentPager:Landroid/support/v4/view/ViewPager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mFontSizeForSave:F

.field private mMessageApi:Lcom/suntek/mway/rcs/client/api/message/MessageApi;

.field private mMessageUri:Landroid/net/Uri;

.field private mMsgFrom:Ljava/lang/String;

.field private mMsgId:J

.field private mMsgText:Ljava/lang/String;

.field private mPagerAdapter:Lcom/android/mms/rcs/FavoriteDetailAdapter;

.field private mRcsChatType:I

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field private mSlidePaperItemTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/mms/rcs/FavoriteDetailActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mFontSizeForSave:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/mms/rcs/FavoriteDetailActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/rcs/FavoriteDetailActivity;)Lcom/android/mms/rcs/FavoriteDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mPagerAdapter:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/rcs/FavoriteDetailActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mSlidePaperItemTextViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/rcs/FavoriteDetailActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/mms/rcs/FavoriteDetailActivity;F)F
    .locals 0

    iput p1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mFontSizeForSave:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/rcs/FavoriteDetailActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/FavoriteDetailActivity;->forwardRcsMessage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/rcs/FavoriteDetailActivity;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/FavoriteDetailActivity;->getCurosrData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/rcs/FavoriteDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->initUi()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/rcs/FavoriteDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->inputNumberForwarMessage()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/rcs/FavoriteDetailActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/FavoriteDetailActivity;->launchRcsContactGroupPicker(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/mms/rcs/FavoriteDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->launchRcsPhonePicker()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMessageApi:Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mCursor:Landroid/database/Cursor;

    .line 98
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mScaleFactor:F

    .line 121
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mFontSizeForSave:F

    .line 82
    return-void
.end method

.method private buildUris(Ljava/util/Set;I)[Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)[",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 470
    new-array v3, p2, [Landroid/net/Uri;

    .line 471
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 472
    const/4 v0, 0x0

    move v1, v0

    .line 473
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    add-int/lit8 v2, v1, 0x1

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v3, v1

    .line 476
    if-ne v2, p2, :cond_1

    .line 480
    :cond_0
    return-object v3

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private forwardRcsMessage(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v4, 0x7f070054

    const/4 v3, 0x0

    .line 292
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    .line 297
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgId:J

    const/4 v2, 0x0

    .line 295
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/mms/rcs/RcsChatMessageUtils;->sendRcsForwardMessage(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/Intent;J)Z

    move-result v0

    .line 298
    if-eqz v0, :cond_0

    .line 300
    const v0, 0x7f070053

    const/4 v1, 0x0

    .line 299
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    :goto_0
    return-void

    .line 303
    :cond_0
    const v0, 0x7f070054

    const/4 v1, 0x0

    .line 302
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getCurosrData(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    return-void

    .line 387
    :cond_0
    const-string/jumbo v0, "number"

    .line 386
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgFrom:Ljava/lang/String;

    .line 389
    const-string/jumbo v0, "body"

    .line 388
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgText:Ljava/lang/String;

    .line 391
    const-string/jumbo v0, "msg_id"

    .line 390
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgId:J

    .line 393
    const-string/jumbo v0, "chat_type"

    .line 392
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mRcsChatType:I

    .line 394
    return-void
.end method

.method private initUi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 404
    invoke-virtual {p0, v2}, Lcom/android/mms/rcs/FavoriteDetailActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 406
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;-><init>(Lcom/android/mms/rcs/FavoriteDetailActivity;Lcom/android/mms/rcs/FavoriteDetailActivity$MyScaleListener;)V

    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 408
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Lcom/android/mms/rcs/FavoriteDetailAdapter;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mPagerAdapter:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    .line 410
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mPagerAdapter:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mSlidePaperItemTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->setScaleTextList(Ljava/util/ArrayList;)V

    .line 411
    const v0, 0x7f0f00cf

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mContentPager:Landroid/support/v4/view/ViewPager;

    .line 412
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mContentPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mPagerAdapter:Lcom/android/mms/rcs/FavoriteDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 413
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mContentPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 418
    return-void
.end method

.method private inputNumberForwarMessage()V
    .locals 4

    .prologue
    .line 260
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 261
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 262
    const/4 v2, -0x1

    .line 263
    const/4 v3, -0x2

    .line 261
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 266
    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 267
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    const v2, 0x7f070059

    .line 267
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 270
    new-instance v2, Lcom/android/mms/rcs/FavoriteDetailActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/rcs/FavoriteDetailActivity$1;-><init>(Lcom/android/mms/rcs/FavoriteDetailActivity;Landroid/widget/EditText;)V

    const v0, 0x104000a

    .line 267
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 287
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 289
    return-void
.end method

.method private isRcsMessage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 461
    iget v1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mRcsChatType:I

    if-lez v1, :cond_0

    .line 462
    iget v1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mRcsChatType:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 461
    :cond_0
    return v0
.end method

.method private launchRcsContactGroupPicker(I)V
    .locals 2

    .prologue
    .line 484
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    invoke-virtual {p0, v0, p1}, Lcom/android/mms/rcs/FavoriteDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 486
    return-void
.end method

.method private launchRcsPhonePicker()V
    .locals 3

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.action.MULTI_PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 355
    const/16 v1, 0x73

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/rcs/FavoriteDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    const v0, 0x7f0702b9

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private startQuerySmsContent()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMessageUri:Landroid/net/Uri;

    .line 398
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "message_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgId:J

    .line 399
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mBackgroundHandler:Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 400
    iget-object v3, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMessageUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg_id = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgId:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "_id ASC"

    .line 399
    const/16 v1, 0x1a2e

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method private toast(I)V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 467
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const v6, 0x7f070054

    const v5, 0x7f070053

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 312
    const-string/jumbo v0, "RCS_UI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 314
    return-void

    .line 317
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 320
    :pswitch_0
    if-eqz p3, :cond_1

    .line 321
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 323
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 325
    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->buildUris(Ljava/util/Set;I)[Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/ContactList;->blockingGetByUris([Landroid/net/Uri;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 326
    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    .line 328
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 329
    iget-wide v2, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgId:J

    .line 327
    invoke-static {p0, v0, v4, v2, v3}, Lcom/android/mms/rcs/RcsChatMessageUtils;->sendRcsForwardMessage(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;J)Z

    move-result v0

    .line 330
    if-eqz v0, :cond_3

    .line 331
    invoke-direct {p0, v5}, Lcom/android/mms/rcs/FavoriteDetailActivity;->toast(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 323
    goto :goto_1

    .line 333
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/mms/rcs/FavoriteDetailActivity;->toast(I)V

    goto :goto_0

    .line 339
    :pswitch_1
    iget-wide v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgId:J

    .line 338
    invoke-static {p0, v4, p3, v0, v1}, Lcom/android/mms/rcs/RcsChatMessageUtils;->sendRcsForwardMessage(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/Intent;J)Z

    move-result v0

    .line 340
    if-eqz v0, :cond_4

    .line 341
    invoke-direct {p0, v5}, Lcom/android/mms/rcs/FavoriteDetailActivity;->toast(I)V

    goto :goto_0

    .line 343
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/mms/rcs/FavoriteDetailActivity;->toast(I)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->requestWindowFeature(I)Z

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 154
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->setContentView(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 156
    new-instance v0, Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;-><init>(Lcom/android/mms/rcs/FavoriteDetailActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mBackgroundHandler:Lcom/android/mms/rcs/FavoriteDetailActivity$BackgroundHandler;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mSlidePaperItemTextViews:Ljava/util/ArrayList;

    .line 158
    invoke-direct {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->startQuerySmsContent()V

    .line 159
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 170
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mContentPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mContentPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 229
    return v4

    .line 207
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->isRcsMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcom/android/mms/rcs/FavoriteDetailActivity$ForwardClickListener;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/FavoriteDetailActivity$ForwardClickListener;-><init>(Lcom/android/mms/rcs/FavoriteDetailActivity;)V

    .line 208
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsChatMessageUtils;->forwardContactOrConversation(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 232
    :goto_0
    return v4

    .line 211
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    const-string/jumbo v1, "sms_body"

    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string/jumbo v1, "exit_on_sent"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    const-string/jumbo v1, "forwarded_message"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->saveToContact()V

    goto :goto_0

    .line 222
    :sswitch_2
    iget-wide v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgId:J

    invoke-direct {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->isRcsMessage()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/mms/rcs/RcsChatMessageUtils;->favoritedOneMessage(Landroid/content/Context;JZZ)V

    .line 223
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->finish()V

    goto :goto_0

    .line 226
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->finish()V

    goto :goto_0

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 193
    invoke-static {p0}, Lcom/android/mms/rcs/RcsDualSimMananger;->getUserIsUseRcsPolicy(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const v0, 0x7f07013a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgFrom:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    const/4 v0, 0x2

    const v1, 0x7f0701aa

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 199
    :cond_1
    const/4 v0, 0x3

    const v1, 0x7f070042

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 200
    return v3
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 164
    iget v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mFontSizeForSave:F

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->saveTextFontSize(Landroid/content/Context;F)V

    .line 165
    return-void
.end method

.method public saveToContact()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 362
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity;->mMsgFrom:Ljava/lang/String;

    .line 363
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v0, "FavoriteDetailActivity"

    const-string/jumbo v1, "  saveToContact fail for null address! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    return-void

    .line 371
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    const-string/jumbo v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string/jumbo v0, "phone_type"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/mms/rcs/FavoriteDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 378
    return-void
.end method
