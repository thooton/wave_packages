.class public Lcom/android/mms/rcs/FavoriteDetailAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FavoriteDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/FavoriteDetailAdapter$1;
    }
.end annotation


# instance fields
.field private RCS_TAG:Ljava/lang/String;

.field private mBodyFontSize:F

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMsgType:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mScaleTextList:Ljava/util/ArrayList;
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
.method static synthetic -get0(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/rcs/FavoriteDetailAdapter;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/rcs/FavoriteDetailAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mMsgType:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mergeVcardDetail(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/rcs/FavoriteDetailAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->openMapMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/rcs/FavoriteDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->showOpenRcsVcardDialog()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 80
    const-string/jumbo v0, "RCS_UI"

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->RCS_TAG:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContentType:Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mMsgType:I

    .line 275
    new-instance v0, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/FavoriteDetailAdapter$1;-><init>(Lcom/android/mms/rcs/FavoriteDetailAdapter;)V

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 94
    iput-object p1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getTextFontSize(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mBodyFontSize:F

    .line 98
    return-void
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 466
    const v2, 0x7f070200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string/jumbo v2, "chat_type"

    .line 467
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 469
    invoke-static {v2}, Lcom/android/mms/rcs/RcsUtils;->isRcsMessage(I)Z

    move-result v2

    .line 470
    if-eqz v2, :cond_1

    .line 471
    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :goto_0
    if-eqz p2, :cond_0

    .line 476
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 477
    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string/jumbo v2, "msg_type"

    .line 478
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 480
    if-ne v2, v4, :cond_2

    .line 481
    const v2, 0x7f07008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_0
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 498
    const-string/jumbo v2, "direction"

    .line 497
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 500
    const-string/jumbo v3, "chat_type"

    .line 499
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 501
    if-eq v2, v4, :cond_8

    .line 502
    if-eq v3, v6, :cond_8

    .line 503
    const v2, 0x7f070205

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :goto_2
    const-string/jumbo v1, ""

    .line 510
    const-string/jumbo v1, "number"

    .line 509
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    const-string/jumbo v1, "date"

    .line 514
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 516
    invoke-static {p0, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 473
    :cond_1
    const v2, 0x7f070201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 482
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 483
    const v2, 0x7f070089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 484
    :cond_3
    if-ne v2, v6, :cond_4

    .line 485
    const v2, 0x7f07008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 486
    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 487
    const v2, 0x7f07008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 488
    :cond_5
    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 489
    const v2, 0x7f07008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 490
    :cond_6
    const/16 v3, 0x9

    if-ne v2, v3, :cond_7

    .line 491
    const v2, 0x7f0700cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 493
    :cond_7
    const v2, 0x7f070088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 505
    :cond_8
    const v2, 0x7f070204

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private initImageMsgView(Landroid/widget/LinearLayout;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 228
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v3, "thumbnail"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 227
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 230
    iget-object v3, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "filename"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 229
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->formatFilePathIfExisted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-static {v2}, Lcom/android/mms/rcs/RcsUtils;->formatFilePathIfExisted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    const v0, 0x7f0f00ca

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 236
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 237
    invoke-static {v3}, Lcom/android/mms/rcs/RcsUtils;->decodeInSampleSizeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 241
    :goto_0
    if-eqz v2, :cond_1

    .line 242
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :goto_1
    return-void

    .line 238
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 239
    invoke-static {v2}, Lcom/android/mms/rcs/RcsUtils;->decodeInSampleSizeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    .line 243
    :cond_1
    if-eqz v1, :cond_2

    .line 244
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 246
    :cond_2
    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method

.method private initTextMsgView(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 214
    const-string/jumbo v2, "body"

    .line 213
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mBodyFontSize:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 218
    new-instance v0, Lcom/android/mms/rcs/FavoriteDetailAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/rcs/FavoriteDetailAdapter$2;-><init>(Lcom/android/mms/rcs/FavoriteDetailAdapter;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method private initVcardMagView(Landroid/widget/LinearLayout;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 251
    const v0, 0x7f0f00ca

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 252
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 253
    iget-object v3, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "filename"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 252
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v3, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {v3, v1}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsVcardDetail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 258
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/suntek/rcs/ui/common/PropertyNode;

    .line 259
    const-string/jumbo v4, "PHOTO"

    iget-object v5, v1, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    iget-object v4, v1, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue_bytes:[B

    if-eqz v4, :cond_0

    .line 261
    iget-object v1, v1, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue_bytes:[B

    .line 262
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 263
    invoke-static {v1}, Lcom/android/mms/rcs/RcsUtils;->decodeInSampleSizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 268
    :goto_0
    if-eqz v1, :cond_1

    .line 269
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    :goto_1
    return-void

    .line 271
    :cond_1
    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method private static mergeVcardDetail(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/suntek/rcs/ui/common/PropertyNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    const-string/jumbo v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/suntek/rcs/ui/common/PropertyNode;

    .line 420
    const-string/jumbo v4, "FN"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 421
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 422
    const-string/jumbo v4, "name"

    .line 423
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 422
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 425
    :cond_1
    const-string/jumbo v4, "TEL"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 427
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 428
    const-string/jumbo v5, "mimetype"

    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string/jumbo v5, "data2"

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->getVcardNumberType(Lcom/suntek/rcs/ui/common/PropertyNode;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string/jumbo v5, "data1"

    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    :cond_2
    const-string/jumbo v4, "ADR"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 434
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 435
    const-string/jumbo v4, "postal"

    .line 436
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 435
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string/jumbo v0, "postal_type"

    .line 438
    const/4 v4, 0x2

    .line 437
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 440
    :cond_3
    const-string/jumbo v4, "ORG"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 441
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 442
    const-string/jumbo v4, "company"

    .line 443
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 442
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 445
    :cond_4
    const-string/jumbo v4, "TITLE"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 447
    const-string/jumbo v4, "job_title"

    .line 448
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 447
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 452
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 453
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 455
    :cond_6
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 456
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 457
    return-void
.end method

.method private openMapMessage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 335
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 336
    invoke-static {p1}, Lcom/android/mms/rcs/RcsUtils;->readMapXml(Ljava/lang/String;)Lcom/suntek/rcs/ui/common/mms/GeoLocation;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "geo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/mms/GeoLocation;->getLat()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/mms/GeoLocation;->getLng()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    const-string/jumbo v2, "?q="

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/mms/GeoLocation;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 340
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 341
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 344
    :catch_1
    move-exception v0

    .line 345
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f070082

    .line 346
    const/4 v2, 0x0

    .line 345
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 342
    :catch_2
    move-exception v0

    .line 343
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static openRcsVcardDetail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/suntek/rcs/ui/common/PropertyNode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    return-object v3

    .line 399
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 401
    new-instance v0, Lcom/suntek/rcs/ui/common/VNodeBuilder;

    invoke-direct {v0}, Lcom/suntek/rcs/ui/common/VNodeBuilder;-><init>()V

    .line 402
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 403
    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 404
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V

    .line 405
    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/VNodeBuilder;->getVNodeList()Ljava/util/List;

    move-result-object v0

    .line 406
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/suntek/rcs/ui/common/VNode;

    iget-object v0, v0, Lcom/suntek/rcs/ui/common/VNode;->propList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    return-object v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    .line 410
    return-object v3
.end method

.method private showContentFileSize(Landroid/widget/TextView;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 166
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 167
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "filesize"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 166
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 168
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showOpenRcsVcardDialog()V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 354
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "filename"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 353
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 356
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0700b5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 357
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0700b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 358
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0700d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 360
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    new-instance v3, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter$3;-><init>(Lcom/android/mms/rcs/FavoriteDetailAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 392
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 177
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 182
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 103
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04002a

    invoke-virtual {v0, v1, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 105
    const v0, 0x7f0f00c8

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    const v1, 0x7f0f00c9

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 108
    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 109
    const-string/jumbo v5, "msg_type"

    .line 108
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mMsgType:I

    .line 110
    iget v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mMsgType:I

    if-nez v2, :cond_0

    .line 111
    invoke-direct {p0, v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->initTextMsgView(Landroid/widget/TextView;)V

    .line 158
    :goto_0
    const v0, 0x7f0f00cd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v1, v2, v9}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    return-object v4

    .line 113
    :cond_0
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    const v2, 0x7f0f00ca

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 116
    const v3, 0x7f0f00cb

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 117
    iget v5, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mMsgType:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    .line 118
    iget-object v5, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_1
    iget v5, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mMsgType:I

    if-ne v5, v9, :cond_2

    .line 121
    invoke-direct {p0, v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->initImageMsgView(Landroid/widget/LinearLayout;)V

    .line 122
    invoke-direct {p0, v3}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->showContentFileSize(Landroid/widget/TextView;)V

    .line 123
    const-string/jumbo v0, "image/*"

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_2
    iget v5, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mMsgType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 125
    const v0, 0x7f0200f7

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    invoke-direct {p0, v3}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->showContentFileSize(Landroid/widget/TextView;)V

    .line 127
    const-string/jumbo v0, "audio/*"

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_3
    iget v5, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mMsgType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 130
    const-string/jumbo v5, "thumbnail"

    .line 129
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    invoke-direct {p0, v3}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->showContentFileSize(Landroid/widget/TextView;)V

    .line 134
    const-string/jumbo v0, "video/*"

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 135
    :cond_4
    iget v5, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mMsgType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 136
    const v0, 0x7f0200f6

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 138
    const-string/jumbo v2, "body"

    .line 137
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const-string/jumbo v0, "map/*"

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 141
    :cond_5
    iget v5, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mMsgType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 142
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    invoke-direct {p0, v1}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->initVcardMagView(Landroid/widget/LinearLayout;)V

    .line 144
    const-string/jumbo v0, "text/x-vCard"

    iput-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mContentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 145
    :cond_6
    iget v3, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mMsgType:I

    if-ne v3, v8, :cond_7

    .line 146
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 147
    const-string/jumbo v3, "filename"

    .line 146
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/suntek/rcs/ui/common/RcsEmojiStoreUtil;->getInstance()Lcom/suntek/rcs/ui/common/RcsEmojiStoreUtil;

    move-result-object v1

    aget-object v0, v0, v7

    invoke-virtual {v1, v2, v0, v9}, Lcom/suntek/rcs/ui/common/RcsEmojiStoreUtil;->loadImageAsynById(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 152
    :cond_7
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    invoke-direct {p0, v0}, Lcom/android/mms/rcs/FavoriteDetailAdapter;->initTextMsgView(Landroid/widget/TextView;)V

    goto/16 :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBodyFontSize(F)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mBodyFontSize:F

    .line 206
    return-void
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 197
    const v0, 0x7f0f00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mScaleTextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mScaleTextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mScaleTextList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public setScaleTextList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/mms/rcs/FavoriteDetailAdapter;->mScaleTextList:Ljava/util/ArrayList;

    .line 210
    return-void
.end method
