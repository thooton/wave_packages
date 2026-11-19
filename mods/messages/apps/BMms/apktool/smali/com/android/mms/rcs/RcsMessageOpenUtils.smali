.class public Lcom/android/mms/rcs/RcsMessageOpenUtils;
.super Ljava/lang/Object;
.source "RcsMessageOpenUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->mergeVcardDetail(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->resendOrOpenRcsMessage(Lcom/android/mms/ui/MessageListItem;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNumberTextView(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 556
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 557
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 558
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 561
    :cond_0
    return-void
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
    .line 391
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
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

    .line 395
    const-string/jumbo v4, "FN"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 397
    const-string/jumbo v4, "name"

    .line 398
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 397
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 400
    :cond_1
    const-string/jumbo v4, "TEL"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 401
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 402
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 403
    const-string/jumbo v5, "mimetype"

    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string/jumbo v5, "data2"

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->getVcardNumberType(Lcom/suntek/rcs/ui/common/PropertyNode;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    const-string/jumbo v5, "data1"

    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    :cond_2
    const-string/jumbo v4, "ADR"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 409
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 410
    const-string/jumbo v4, "postal"

    .line 411
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 410
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string/jumbo v0, "postal_type"

    .line 413
    const/4 v4, 0x2

    .line 412
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 415
    :cond_3
    const-string/jumbo v4, "ORG"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 416
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 417
    const-string/jumbo v4, "company"

    .line 418
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 417
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 420
    :cond_4
    const-string/jumbo v4, "TITLE"

    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 421
    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 422
    const-string/jumbo v4, "job_title"

    .line 423
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 422
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 427
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 428
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 430
    :cond_6
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 431
    invoke-static {p0, v1}, Lcom/android/mms/rcs/RcsUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 432
    return-void
.end method

.method private static openRcsAudioMessage(Lcom/android/mms/ui/MessageListItem;)V
    .locals 4

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getRcsContentType()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070046

    .line 269
    const/4 v2, 0x1

    .line 268
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    return-void

    .line 272
    :cond_0
    new-instance v0, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method private static openRcsCaiYunFile(Lcom/android/mms/ui/MessageListItem;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    .line 190
    const/4 v2, 0x0

    .line 191
    sget-object v3, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/TransNode$TransOper;->NEW:Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/TransNode$TransOper;

    .line 192
    const-string/jumbo v0, ""

    .line 194
    :try_start_0
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->parseCloudFileMessage(Ljava/lang/String;)Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;

    move-result-object v7

    .line 195
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;->getInstance()Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;

    move-result-object v0

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;->getLocalRootPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    if-eqz v7, :cond_5

    .line 198
    invoke-static {v7}, Lcom/android/mms/rcs/RcsUtils;->isCloudFileDownLoadOk(Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;)Z

    move-result v1

    move v6, v1

    .line 200
    :goto_0
    invoke-virtual {v7}, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;->getFileSize()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/android/mms/rcs/RcsUtils;->isFileDownBeginButNotEnd(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    sget-object v3, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/TransNode$TransOper;->RESUME:Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/TransNode$TransOper;

    .line 203
    :cond_0
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    if-nez v6, :cond_3

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgDownlaodState()I

    move-result v1

    if-ne v1, v10, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 207
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v4

    const/4 v3, 0x2

    .line 206
    invoke-static {v1, v4, v5, v3}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 208
    invoke-interface {v2}, Lcom/suntek/mway/rcs/client/aidl/plugin/callback/ICloudOperationCtrl;->pause()V

    .line 209
    const v1, 0x7f070097

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setDateViewText(I)V

    .line 221
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;->getLocalRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->OpenFile(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 233
    :cond_2
    :goto_2
    return-void

    .line 210
    :cond_3
    if-nez v6, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 212
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v8

    const/4 v2, 0x4

    .line 211
    invoke-static {v1, v8, v9, v2}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 213
    invoke-virtual {v7}, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v7}, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v4

    .line 213
    invoke-virtual/range {v0 .. v5}, Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;->downloadFileFromUrl(Ljava/lang/String;Ljava/lang/String;Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/TransNode$TransOper;J)Lcom/suntek/mway/rcs/client/aidl/plugin/callback/ICloudOperationCtrl;

    .line 215
    const v1, 0x7f070083

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListItem;->setDateViewText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    instance-of v0, v0, Landroid/content/ActivityNotFoundException;

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700b9

    .line 229
    const/4 v2, 0x1

    .line 228
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 218
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070098

    .line 219
    const/4 v3, 0x0

    .line 218
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move v6, v1

    goto/16 :goto_0
.end method

.method private static openRcsEmojiMessage(Lcom/android/mms/ui/MessageListItem;)V
    .locals 6

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/emoticon/EmoticonApi;->getInstance()Lcom/suntek/mway/rcs/client/api/emoticon/EmoticonApi;

    move-result-object v2

    .line 241
    :try_start_0
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgDownlaodState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 242
    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/suntek/mway/rcs/client/api/emoticon/EmoticonApi;->downloadEmoticon(Ljava/lang/String;J)V

    .line 243
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Lcom/suntek/mway/rcs/client/api/emoticon/EmoticonApi;->decrypt2Bytes(Ljava/lang/String;I)[B
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_2

    .line 254
    :cond_1
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    .line 251
    return-void

    .line 246
    :catch_1
    move-exception v0

    .line 247
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    .line 248
    return-void

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 257
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 259
    const v3, 0x7f0200ed

    .line 258
    invoke-static {v1, v2, v0, v3}, Lcom/suntek/rcs/ui/common/utils/RcsUtils;->openPopupWindow(Landroid/content/Context;Landroid/view/View;[BI)V

    .line 260
    return-void
.end method

.method private static openRcsImageMessage(Lcom/android/mms/ui/MessageListItem;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v3

    .line 281
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    new-instance v5, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getRcsMimeType()Ljava/lang/String;

    move-result-object v6

    .line 285
    if-eqz v6, :cond_1

    const-string/jumbo v7, "image/bmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 286
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v7, "image/bmp"

    invoke-virtual {v5, v4, v7}, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    :goto_0
    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getRcsMsgFileSize()I

    move-result v0

    int-to-long v8, v0

    .line 294
    invoke-static {v3, v8, v9}, Lcom/android/mms/rcs/RcsChatMessageUtils;->isFileDownload(Ljava/lang/String;J)Z

    move-result v0

    .line 296
    :cond_0
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v3

    if-nez v3, :cond_5

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_5

    .line 298
    :try_start_0
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v0

    .line 300
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgDownlaodState()I

    move-result v1

    if-ne v1, v10, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 302
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v4

    const/4 v3, 0x2

    .line 301
    invoke-static {v1, v4, v5, v3}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 303
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->pauseDownload(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_1
    return-void

    .line 287
    :cond_1
    if-eqz v6, :cond_2

    const-string/jumbo v7, "image/gif"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 288
    invoke-static {v4}, Lcom/android/mms/rcs/RcsUtils;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v1

    goto :goto_0

    .line 290
    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v7, "image/*"

    invoke-virtual {v5, v4, v7}, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 305
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 306
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v4

    const/4 v3, 0x4

    .line 305
    invoke-static {v1, v4, v5, v3}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 307
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->download(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 310
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070098

    .line 311
    const/4 v2, 0x0

    .line 310
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 318
    :cond_5
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v0, :cond_8

    .line 319
    :cond_6
    if-eqz v6, :cond_7

    const-string/jumbo v0, "image/gif"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 320
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 321
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 323
    const v3, 0x7f0200ed

    .line 322
    invoke-static {v0, v2, v1, v3}, Lcom/suntek/rcs/ui/common/utils/RcsUtils;->openPopupWindow(Landroid/content/Context;Landroid/view/View;[BI)V

    .line 324
    return-void

    .line 326
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/mms/rcs/RcsUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 329
    :cond_8
    return-void
.end method

.method private static openRcsLocationMessage(Lcom/android/mms/ui/MessageListItem;)V
    .locals 4

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgBody()Ljava/lang/String;

    .line 568
    :try_start_0
    invoke-static {v1}, Lcom/android/mms/rcs/RcsUtils;->readMapXml(Ljava/lang/String;)Lcom/suntek/rcs/ui/common/mms/GeoLocation;

    move-result-object v0

    .line 569
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

    const-string/jumbo v2, "?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/mms/GeoLocation;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    new-instance v1, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    .line 571
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 570
    invoke-direct {v1, v2, v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 572
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 575
    :catch_1
    move-exception v0

    .line 576
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 577
    const v1, 0x7f070082

    const/4 v2, 0x0

    .line 576
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 573
    :catch_2
    move-exception v0

    .line 574
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static openRcsMessage(Lcom/android/mms/ui/MessageListItem;)V
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    :pswitch_0
    return-void

    .line 163
    :pswitch_1
    invoke-static {p0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsAudioMessage(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-static {p0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsImageMessage(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    .line 169
    :pswitch_3
    invoke-static {p0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsVCardMessage(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    .line 172
    :pswitch_4
    invoke-static {p0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsLocationMessage(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    .line 175
    :pswitch_5
    invoke-static {p0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsEmojiMessage(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    .line 178
    :pswitch_6
    invoke-static {p0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsCaiYunFile(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static openRcsSlideShowMessage(Lcom/android/mms/ui/MessageListItem;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 93
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgState()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->retransmisMessage(Lcom/android/mms/ui/MessageItem;)V

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v2

    .line 101
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v2, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 104
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getRcsContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v2, v3, v4}, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->isFileDownLoadoK(Lcom/android/mms/ui/MessageItem;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 107
    :try_start_0
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgDownlaodState()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 110
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v4

    const/4 v3, 0x2

    .line 109
    invoke-static {v2, v4, v5, v3}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 111
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->pauseDownload(J)V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v4

    const/4 v3, 0x4

    .line 113
    invoke-static {v2, v4, v5, v3}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 115
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->download(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070098

    .line 119
    const/4 v2, 0x0

    .line 118
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->isFileDownLoadoK(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/mms/rcs/RcsUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static openRcsVCardMessage(Lcom/android/mms/ui/MessageListItem;)V
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 333
    invoke-static {v0, p0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->showOpenRcsVcardDialog(Landroid/content/Context;Lcom/android/mms/ui/MessageListItem;)V

    .line 334
    return-void
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

    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    return-object v3

    .line 439
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 442
    new-instance v0, Lcom/suntek/rcs/ui/common/VNodeBuilder;

    invoke-direct {v0}, Lcom/suntek/rcs/ui/common/VNodeBuilder;-><init>()V

    .line 443
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 444
    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 445
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V

    .line 446
    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/VNodeBuilder;->getVNodeList()Ljava/util/List;

    move-result-object v0

    .line 447
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/suntek/rcs/ui/common/VNode;

    iget-object v0, v0, Lcom/suntek/rcs/ui/common/VNode;->propList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    return-object v0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    .line 451
    return-object v3
.end method

.method public static rcsVcardContactList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/suntek/rcs/ui/common/VNode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    return-object v3

    .line 460
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 463
    new-instance v0, Lcom/suntek/rcs/ui/common/VNodeBuilder;

    invoke-direct {v0}, Lcom/suntek/rcs/ui/common/VNodeBuilder;-><init>()V

    .line 464
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 465
    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 466
    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V

    .line 467
    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/VNodeBuilder;->getVNodeList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 468
    return-object v0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    .line 471
    return-object v3
.end method

.method private static resendOrOpenRcsMessage(Lcom/android/mms/ui/MessageListItem;)V
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgState()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->retransmisMessage(Lcom/android/mms/ui/MessageItem;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsMessage(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0
.end method

.method public static retransmisMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 4

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->resend(J)V
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    .line 133
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setRcsImageViewClickListener(Landroid/widget/ImageView;Lcom/android/mms/ui/MessageListItem;)V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/android/mms/rcs/RcsMessageOpenUtils$1;

    invoke-direct {v0, p1}, Lcom/android/mms/rcs/RcsMessageOpenUtils$1;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method public static showDetailVcard(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 13
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
    .line 477
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 478
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 479
    const v1, 0x7f04004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 482
    const v0, 0x7f0f0142

    .line 481
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 484
    const v1, 0x7f0f00ee

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 485
    const v2, 0x7f0f0141

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 486
    const v3, 0x7f0f0148

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 487
    const v4, 0x7f0f014a

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 488
    const v5, 0x7f0f0149

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 490
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 491
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/suntek/rcs/ui/common/PropertyNode;

    .line 492
    const-string/jumbo v11, "FN"

    iget-object v12, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 493
    iget-object v11, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 494
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f07009e

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 495
    iget-object v6, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 494
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 497
    :cond_1
    const-string/jumbo v11, "TEL"

    iget-object v12, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 498
    iget-object v11, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 500
    invoke-static {p0, v6}, Lcom/android/mms/rcs/RcsUtils;->getPhoneNumberTypeStr(Landroid/content/Context;Lcom/suntek/rcs/ui/common/PropertyNode;)Ljava/lang/String;

    move-result-object v6

    .line 501
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 502
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    :cond_2
    const-string/jumbo v11, "ADR"

    iget-object v12, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 506
    iget-object v11, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 507
    iget-object v6, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 508
    const-string/jumbo v11, ";"

    const-string/jumbo v12, ""

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 509
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    const v12, 0x7f0700b1

    .line 509
    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 511
    const-string/jumbo v12, ":"

    .line 509
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 514
    :cond_3
    const-string/jumbo v11, "ORG"

    iget-object v12, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 515
    iget-object v11, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 516
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    const v12, 0x7f0700b4

    .line 516
    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 518
    const-string/jumbo v12, ":"

    .line 516
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 519
    iget-object v6, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 516
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 521
    :cond_4
    const-string/jumbo v11, "TITLE"

    iget-object v12, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 522
    iget-object v11, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 523
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    const v12, 0x7f0700b2

    .line 523
    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 525
    const-string/jumbo v12, ":"

    .line 523
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 526
    iget-object v6, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 523
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 528
    :cond_5
    const-string/jumbo v11, "PHOTO"

    iget-object v12, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 529
    iget-object v11, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue_bytes:[B

    if-eqz v11, :cond_0

    .line 530
    iget-object v6, v6, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue_bytes:[B

    .line 532
    array-length v11, v6

    const/4 v12, 0x0

    .line 531
    invoke-static {v6, v12, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 533
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 537
    :cond_6
    const v0, 0x7f0f0143

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 539
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 542
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 543
    const v0, 0x7f0f0143

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 544
    const/4 v1, 0x0

    .line 543
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    const v0, 0x7f0f0145

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 546
    invoke-static {p0, v9, v0}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->addNumberTextView(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 548
    :cond_8
    const v0, 0x7f0700b5

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 550
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 551
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 552
    return-void
.end method

.method private static showOpenRcsVcardDialog(Landroid/content/Context;Lcom/android/mms/ui/MessageListItem;)V
    .locals 4

    .prologue
    .line 337
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 338
    const v1, 0x7f0700b5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 339
    const v1, 0x7f0700b6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 340
    const v1, 0x7f0700d0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 342
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 343
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 344
    new-instance v3, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;

    invoke-direct {v3, v1, p0, p1}, Lcom/android/mms/rcs/RcsMessageOpenUtils$2;-><init>(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 387
    return-void
.end method
