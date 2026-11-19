.class public Lcom/android/mms/transaction/MmsNoConfirmationSendService;
.super Lcom/android/mms/ui/NoConfirmationSendService;
.source "MmsNoConfirmationSendService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/android/mms/transaction/MmsNoConfirmationSendService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 71
    sput-object v0, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->TAG:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/ui/NoConfirmationSendService;-><init>()V

    return-void
.end method


# virtual methods
.method public createSendReq(Landroid/net/Uri;Landroid/content/Context;)Lcom/google/android/mms/pdu/SendReq;
    .locals 11

    .prologue
    const v8, 0x7f070330

    const v7, 0x7f070174

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 89
    sget-object v0, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createSendReq"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-nez p1, :cond_0

    .line 91
    return-object v9

    .line 94
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 95
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDestination()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/SendReq;->addTo(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 98
    const/16 v0, 0x81

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    new-instance v2, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 105
    if-eqz p1, :cond_4

    .line 106
    invoke-static {p2, p1}, Lcom/android/mms/ui/MessageUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 107
    if-nez v0, :cond_1

    .line 108
    const v0, 0x7f07032f

    invoke-static {p2, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 110
    return-object v9

    .line 99
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Lcom/google/android/mms/InvalidHeaderValueException;->printStackTrace()V

    goto :goto_0

    .line 112
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    if-nez v4, :cond_2

    .line 120
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    .line 122
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    .line 120
    invoke-virtual {v0, v7, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {p2, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 123
    return-object v9

    .line 126
    :cond_2
    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v5

    .line 128
    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 130
    :try_start_1
    invoke-static {v5}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 131
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->isTooLargeFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 132
    sget-object v0, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Too Large File cannot Send"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v0, 0x7f070177

    .line 135
    const/4 v1, 0x0

    .line 133
    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    return-object v9

    .line 138
    :cond_3
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 139
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, " "

    const-string/jumbo v8, "_"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const/4 v7, -0x1

    if-ne v5, v7, :cond_5

    .line 142
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 143
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 149
    invoke-virtual {v6, p1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 150
    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    :cond_4
    :goto_2
    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 205
    return-object v1

    .line 140
    :cond_5
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 151
    :catch_1
    move-exception v0

    .line 152
    sget-object v0, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createPduPartForAttachment: exception while creating content-location"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const v0, 0x7f07018a

    .line 155
    const/4 v1, 0x0

    .line 154
    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    return-object v9

    .line 158
    :cond_6
    invoke-static {v5}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 159
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->isTooLargeFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    sget-object v0, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Too Large File cannot Send"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const v0, 0x7f07017d

    .line 163
    const/4 v1, 0x0

    .line 161
    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    return-object v9

    .line 167
    :cond_7
    new-instance v0, Lcom/android/mms/ui/UriImage;

    invoke-direct {v0, p2, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 169
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v4

    .line 170
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v5

    .line 171
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v6

    .line 168
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 172
    if-nez v4, :cond_8

    .line 174
    const v0, 0x7f07017b

    .line 175
    const/4 v1, 0x0

    .line 173
    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    return-object v9

    .line 178
    :cond_8
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 180
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 181
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 182
    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 193
    :catch_2
    move-exception v0

    .line 195
    const v1, 0x7f070333

    .line 194
    invoke-static {p2, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 197
    sget-object v1, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Cannot Send Invalid Message"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    return-object v9

    .line 184
    :cond_9
    :try_start_4
    sget-object v0, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid Attachment Type"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 189
    const v2, 0x7f070330

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 188
    const v2, 0x7f070174

    .line 187
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 190
    const/4 v1, 0x0

    .line 185
    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 191
    return-object v9
.end method

.method public isAirplaneMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 261
    const-string/jumbo v2, "airplane_mode_on"

    .line 260
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->stopSelf()V

    .line 85
    invoke-super {p0}, Lcom/android/mms/ui/NoConfirmationSendService;->onDestroy()V

    .line 86
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->sendMms(Landroid/net/Uri;Landroid/content/Context;)V

    .line 80
    :cond_0
    return-void
.end method

.method public sendMms(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->createSendReq(Landroid/net/Uri;Landroid/content/Context;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 210
    if-nez v1, :cond_0

    .line 211
    sget-object v0, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to Create MMS "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 216
    :cond_0
    const/4 v6, 0x0

    .line 217
    :try_start_0
    invoke-static {p2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 218
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    .line 219
    invoke-static {p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 218
    const/4 v3, 0x1

    .line 220
    const/4 v5, 0x0

    .line 218
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v2

    .line 221
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 222
    const-string/jumbo v0, "sub_id"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 224
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    .line 223
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    .line 226
    const-wide/16 v3, 0x81

    move-object v1, p2

    move v5, v6

    .line 225
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 227
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 228
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 227
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 229
    const-wide/16 v2, 0x0

    .line 231
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    const-string/jumbo v2, "thread_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 235
    :cond_1
    if-eqz v1, :cond_2

    .line 236
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->isAirplaneMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    sget-object v1, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "cannot send Message"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const v1, 0x7f07024c

    .line 242
    const/4 v4, 0x0

    .line 241
    invoke-static {p2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 245
    :cond_3
    const v1, 0x7f0701b1

    .line 246
    const/4 v4, 0x0

    .line 245
    :try_start_3
    invoke-static {p2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 247
    invoke-interface {v0, v2, v3}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 257
    :goto_0
    return-void

    .line 234
    :catchall_0
    move-exception v0

    .line 235
    if-eqz v1, :cond_4

    .line 236
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_4
    throw v0
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    sget-object v0, Lcom/android/mms/transaction/MmsNoConfirmationSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMessage: Exception while sending MMS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const v0, 0x7f070333

    invoke-static {p2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    return-void

    .line 248
    :catch_1
    move-exception v0

    .line 249
    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V
    :try_end_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method
