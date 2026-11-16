.class public Lcom/android/mms/ui/MessageDetailAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MessageDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageDetailAdapter$1;
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
.method static synthetic -get0(Lcom/android/mms/ui/MessageDetailAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->RCS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MessageDetailAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/MessageDetailAdapter;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/MessageDetailAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mMsgType:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageDetailAdapter;->mergeVcardDetail(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/MessageDetailAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageDetailAdapter;->openMapMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/MessageDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageDetailAdapter;->showOpenRcsVcardDialog()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 105
    const-string/jumbo v0, "RCS_UI"

    iput-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->RCS_TAG:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContentType:Ljava/lang/String;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mMsgType:I

    .line 300
    new-instance v0, Lcom/android/mms/ui/MessageDetailAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageDetailAdapter$1;-><init>(Lcom/android/mms/ui/MessageDetailAdapter;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 114
    iput-object p1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 116
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 117
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getTextFontSize(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mBodyFontSize:F

    .line 118
    return-void
.end method

.method private initImageMsgView(Landroid/widget/LinearLayout;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 253
    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v3, "rcs_thumb_path"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 252
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 255
    iget-object v3, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "rcs_file_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 254
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->formatFilePathIfExisted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-static {v2}, Lcom/android/mms/rcs/RcsUtils;->formatFilePathIfExisted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    const v0, 0x7f0f00ca

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 261
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    invoke-static {v3}, Lcom/android/mms/rcs/RcsUtils;->decodeInSampleSizeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 266
    :goto_0
    if-eqz v2, :cond_1

    .line 267
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    :goto_1
    return-void

    .line 263
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 264
    invoke-static {v2}, Lcom/android/mms/rcs/RcsUtils;->decodeInSampleSizeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    .line 268
    :cond_1
    if-eqz v1, :cond_2

    .line 269
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 271
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
    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "body"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mBodyFontSize:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 241
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 243
    new-instance v0, Lcom/android/mms/ui/MessageDetailAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/MessageDetailAdapter$3;-><init>(Lcom/android/mms/ui/MessageDetailAdapter;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method

.method private initVcardMagView(Landroid/widget/LinearLayout;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 276
    const v0, 0x7f0f00ca

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 277
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 278
    iget-object v3, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v4, "rcs_file_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 277
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-object v3, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContext:Landroid/content/Context;

    .line 280
    invoke-static {v3, v1}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsVcardDetail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 283
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/suntek/rcs/ui/common/PropertyNode;

    .line 284
    const-string/jumbo v4, "PHOTO"

    iget-object v5, v1, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    iget-object v4, v1, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue_bytes:[B

    if-eqz v4, :cond_0

    .line 286
    iget-object v1, v1, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue_bytes:[B

    .line 287
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 288
    invoke-static {v1}, Lcom/android/mms/rcs/RcsUtils;->decodeInSampleSizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 293
    :goto_0
    if-eqz v1, :cond_1

    .line 294
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :goto_1
    return-void

    .line 296
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
    .line 441
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    const-string/jumbo v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 444
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

    .line 445
    const-string/jumbo v4, "FN"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 446
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 447
    const-string/jumbo v4, "name"

    .line 448
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 447
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 450
    :cond_1
    const-string/jumbo v4, "TEL"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 451
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 452
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 453
    const-string/jumbo v5, "mimetype"

    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string/jumbo v5, "data2"

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->getVcardNumberType(Lcom/suntek/rcs/ui/common/PropertyNode;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    const-string/jumbo v5, "data1"

    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    :cond_2
    const-string/jumbo v4, "ADR"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 460
    const-string/jumbo v4, "postal"

    .line 461
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 460
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string/jumbo v0, "postal_type"

    .line 463
    const/4 v4, 0x2

    .line 462
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 465
    :cond_3
    const-string/jumbo v4, "ORG"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 466
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 467
    const-string/jumbo v4, "company"

    .line 468
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 467
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 470
    :cond_4
    const-string/jumbo v4, "TITLE"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 472
    const-string/jumbo v4, "job_title"

    .line 473
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 472
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 477
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 478
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 480
    :cond_6
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 482
    return-void
.end method

.method private openMapMessage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 360
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 361
    invoke-static {p1}, Lcom/android/mms/rcs/RcsUtils;->readMapXml(Ljava/lang/String;)Lcom/suntek/rcs/ui/common/mms/GeoLocation;

    move-result-object v0

    .line 362
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

    .line 363
    const-string/jumbo v2, "?q="

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/mms/GeoLocation;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 365
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->RCS_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 369
    :catch_1
    move-exception v0

    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f070082

    .line 371
    const/4 v2, 0x0

    .line 370
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 367
    :catch_2
    move-exception v0

    .line 368
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->RCS_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

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

    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    return-object v3

    .line 424
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 426
    new-instance v0, Lcom/suntek/rcs/ui/common/VNodeBuilder;

    invoke-direct {v0}, Lcom/suntek/rcs/ui/common/VNodeBuilder;-><init>()V

    .line 427
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 428
    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 429
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V

    .line 430
    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/VNodeBuilder;->getVNodeList()Ljava/util/List;

    move-result-object v0

    .line 431
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/suntek/rcs/ui/common/VNode;

    iget-object v0, v0, Lcom/suntek/rcs/ui/common/VNode;->propList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    return-object v0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    .line 435
    return-object v3
.end method

.method private showContentFileSize(Landroid/widget/TextView;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 485
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 486
    const-string/jumbo v2, "rcs_file_size"

    .line 485
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 487
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 488
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

    .line 492
    :goto_0
    return-void

    .line 490
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
    .line 378
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 379
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "rcs_file_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 378
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 381
    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0700b5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 382
    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0700b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 383
    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0700d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 385
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    new-instance v3, Lcom/android/mms/ui/MessageDetailAdapter$4;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/MessageDetailAdapter$4;-><init>(Lcom/android/mms/ui/MessageDetailAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 417
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 202
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

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
    .line 207
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04002a

    invoke-virtual {v0, v1, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 125
    const v0, 0x7f0f00c8

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 127
    const v1, 0x7f0f00c9

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 129
    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v5, "rcs_msg_type"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mMsgType:I

    .line 130
    iget v2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mMsgType:I

    if-nez v2, :cond_0

    .line 131
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageDetailAdapter;->initTextMsgView(Landroid/widget/TextView;)V

    .line 189
    :goto_0
    const v0, 0x7f0f00cd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 191
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v1, v2, v8}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_1
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    return-object v4

    .line 133
    :cond_0
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    const v2, 0x7f0f00ca

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 136
    const v3, 0x7f0f00cb

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 137
    iget v5, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mMsgType:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    .line 138
    iget-object v5, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_1
    iget v5, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mMsgType:I

    if-ne v5, v8, :cond_2

    .line 141
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageDetailAdapter;->initImageMsgView(Landroid/widget/LinearLayout;)V

    .line 142
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageDetailAdapter;->showContentFileSize(Landroid/widget/TextView;)V

    .line 143
    const-string/jumbo v0, "image/*"

    iput-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_2
    iget v5, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mMsgType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 145
    const v0, 0x7f0200f7

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageDetailAdapter;->showContentFileSize(Landroid/widget/TextView;)V

    .line 147
    const-string/jumbo v0, "audio/*"

    iput-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_3
    iget v5, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mMsgType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 150
    const-string/jumbo v5, "rcs_thumb_path"

    .line 149
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageDetailAdapter;->showContentFileSize(Landroid/widget/TextView;)V

    .line 154
    const-string/jumbo v0, "video/*"

    iput-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 155
    :cond_4
    iget v5, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mMsgType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 156
    const v0, 0x7f0200f6

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "body"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const-string/jumbo v0, "map/*"

    iput-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 160
    :cond_5
    iget v5, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mMsgType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 161
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageDetailAdapter;->initVcardMagView(Landroid/widget/LinearLayout;)V

    .line 163
    const-string/jumbo v0, "text/x-vCard"

    iput-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 164
    :cond_6
    iget v3, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mMsgType:I

    if-ne v3, v9, :cond_7

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    .line 166
    const-string/jumbo v3, "rcs_file_name"

    .line 165
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/suntek/rcs/ui/common/RcsEmojiStoreUtil;->getInstance()Lcom/suntek/rcs/ui/common/RcsEmojiStoreUtil;

    move-result-object v1

    aget-object v0, v0, v7

    invoke-virtual {v1, v2, v0, v8}, Lcom/suntek/rcs/ui/common/RcsEmojiStoreUtil;->loadImageAsynById(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 171
    :cond_7
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageDetailAdapter;->initTextMsgView(Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 177
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v3, "body"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mBodyFontSize:F

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 179
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 180
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 181
    new-instance v1, Lcom/android/mms/ui/MessageDetailAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/MessageDetailAdapter$2;-><init>(Lcom/android/mms/ui/MessageDetailAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 193
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v1, v2, v7}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p1, p2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBodyFontSize(F)V
    .locals 0

    .prologue
    .line 230
    iput p1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mBodyFontSize:F

    .line 231
    return-void
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 222
    const v0, 0x7f0f00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mScaleTextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mScaleTextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mScaleTextList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
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
    .line 234
    iput-object p1, p0, Lcom/android/mms/ui/MessageDetailAdapter;->mScaleTextList:Ljava/util/ArrayList;

    .line 235
    return-void
.end method
