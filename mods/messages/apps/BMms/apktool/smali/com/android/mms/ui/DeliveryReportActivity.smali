.class public Lcom/android/mms/ui/DeliveryReportActivity;
.super Landroid/app/ListActivity;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;,
        Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    }
.end annotation


# static fields
.field static final MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

.field static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field static final SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mMessageId:J

.field private mMessageType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-array v0, v5, [Ljava/lang/String;

    .line 64
    const-string/jumbo v1, "address"

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "d_rpt"

    aput-object v1, v0, v3

    .line 66
    const-string/jumbo v1, "rr"

    aput-object v1, v0, v4

    .line 63
    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    .line 69
    new-array v0, v5, [Ljava/lang/String;

    .line 70
    const-string/jumbo v1, "address"

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "delivery_status"

    aput-object v1, v0, v3

    .line 72
    const-string/jumbo v1, "read_status"

    aput-object v1, v0, v4

    .line 69
    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 76
    const-string/jumbo v1, "address"

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "status"

    aput-object v1, v0, v3

    .line 78
    const-string/jumbo v1, "date_sent"

    aput-object v1, v0, v4

    .line 79
    const-string/jumbo v1, "type"

    aput-object v1, v0, v5

    .line 75
    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private getMessageId(Landroid/os/Bundle;Landroid/content/Intent;)J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 145
    if-eqz p1, :cond_1

    .line 146
    const-string/jumbo v0, "message_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 149
    :goto_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 150
    const-string/jumbo v0, "message_id"

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 153
    :cond_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private getMessageType(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 159
    if-eqz p1, :cond_0

    .line 160
    const-string/jumbo v0, "message_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    if-nez v0, :cond_1

    .line 164
    const-string/jumbo v0, "message_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_1
    return-object v0
.end method

.method private getMmsReportItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 277
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportRequests()Ljava/util/List;

    move-result-object v0

    .line 278
    if-nez v0, :cond_0

    .line 279
    return-object v6

    .line 282
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 283
    return-object v6

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatus()Ljava/util/Map;

    move-result-object v1

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070226

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 290
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatusText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    new-instance v5, Lcom/android/mms/ui/DeliveryReportItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4, v6}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_2
    return-object v2
.end method

.method private getMmsReportRequests()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 328
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    .line 329
    iget-wide v2, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 330
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 331
    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    .line 330
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 333
    if-nez v1, :cond_0

    .line 334
    return-object v4

    .line 338
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 351
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 339
    return-object v4

    .line 342
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    new-instance v2, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;

    .line 345
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 346
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 347
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 344
    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    .line 351
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 350
    throw v0

    .line 351
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 349
    return-object v0
.end method

.method private getMmsReportStatus()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 298
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    .line 299
    iget-wide v2, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 300
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 301
    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    .line 300
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 303
    if-nez v1, :cond_0

    .line 304
    return-object v4

    .line 309
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 311
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_1
    new-instance v3, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    .line 317
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 318
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 316
    invoke-direct {v3, v4, v5}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;-><init>(II)V

    .line 319
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    .line 323
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 322
    throw v0

    .line 315
    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 323
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 321
    return-object v2
.end method

.method private getMmsReportStatusText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const v2, 0x7f07021e

    .line 218
    if-nez p2, :cond_0

    .line 220
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    invoke-static {p2, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-result-object v0

    .line 227
    if-nez v0, :cond_2

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->isReadReportRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    iget v1, v0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    if-eqz v1, :cond_3

    .line 234
    iget v1, v0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    packed-switch v1, :pswitch_data_0

    .line 243
    :cond_3
    iget v0, v0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    sparse-switch v0, :sswitch_data_0

    .line 254
    const v0, 0x7f070221

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_0
    const v0, 0x7f07021f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :pswitch_1
    const v0, 0x7f070223

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :sswitch_1
    const v0, 0x7f070220

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :sswitch_2
    const v0, 0x7f070224

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :sswitch_3
    const v0, 0x7f07030c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80 -> :sswitch_3
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method private getReportItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getSmsReportItems()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSmsReportItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 181
    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    .line 180
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 182
    if-nez v1, :cond_0

    .line 183
    return-object v5

    .line 187
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 211
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 188
    return-object v5

    .line 191
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 197
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 198
    if-ne v0, v10, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070227

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    const/4 v3, 0x1

    .line 200
    invoke-static {p0, v6, v7, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_1
    new-instance v3, Lcom/android/mms/ui/DeliveryReportItem;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f070226

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 206
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/DeliveryReportActivity;->getSmsStatusText(I)Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 204
    invoke-direct {v3, v4, v6, v0}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    .line 211
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 210
    throw v0

    :cond_2
    move-object v0, v5

    .line 198
    goto :goto_1

    .line 211
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 209
    return-object v2
.end method

.method private getSmsStatusText(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    shr-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_0

    .line 358
    shr-int/lit8 p1, p1, 0x10

    .line 360
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 362
    const v0, 0x7f07021d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 363
    :cond_1
    const/16 v0, 0x40

    if-lt p1, v0, :cond_2

    .line 365
    const v0, 0x7f070221

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 366
    :cond_2
    const/16 v0, 0x20

    if-lt p1, v0, :cond_3

    .line 368
    const v0, 0x7f07021e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 371
    :cond_3
    const v0, 0x7f070220

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initListAdapter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getReportItems()Ljava/util/List;

    move-result-object v0

    .line 122
    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    new-instance v1, Lcom/android/mms/ui/DeliveryReportItem;

    const-string/jumbo v2, ""

    const v3, 0x7f07021d

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "cursor == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    new-instance v1, Lcom/android/mms/ui/DeliveryReportAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/DeliveryReportAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    return-void
.end method

.method private initListView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 116
    const v1, 0x7f040015

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 118
    return-void
.end method

.method private static queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;"
        }
    .end annotation

    .prologue
    .line 260
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 262
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 264
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    return-object v0

    .line 269
    :cond_1
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    return-object v0

    .line 273
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private refreshDeliveryReport()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 139
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 140
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->requestWindowFeature(I)Z

    .line 103
    const v0, 0x7f040014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMessageId(Landroid/os/Bundle;Landroid/content/Intent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMessageType(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->initListView()V

    .line 110
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->initListAdapter()V

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 133
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->refreshDeliveryReport()V

    .line 134
    return-void
.end method
