.class public Lcom/android/mms/QTIBackupMMS;
.super Ljava/lang/Object;
.source "QTIBackupMMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/QTIBackupMMS$MsgBox;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-mms-QTIBackupMMS$MsgBoxSwitchesValues:[I

.field static final MAILBOX_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mFileInputStream:Ljava/io/FileInputStream;

.field mFileOutputStream:Ljava/io/FileOutputStream;

.field mmsBackupDraft:Lcom/android/mms/QMMSBackup;

.field mmsBackupInbox:Lcom/android/mms/QMMSBackup;

.field mmsBackupSent:Lcom/android/mms/QMMSBackup;

.field vfile:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom-android-mms-QTIBackupMMS$MsgBoxSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/mms/QTIBackupMMS;->-com-android-mms-QTIBackupMMS$MsgBoxSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/QTIBackupMMS;->-com-android-mms-QTIBackupMMS$MsgBoxSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/mms/QTIBackupMMS$MsgBox;->values()[Lcom/android/mms/QTIBackupMMS$MsgBox;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/mms/QTIBackupMMS$MsgBox;->DRAFT:Lcom/android/mms/QTIBackupMMS$MsgBox;

    invoke-virtual {v1}, Lcom/android/mms/QTIBackupMMS$MsgBox;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/mms/QTIBackupMMS$MsgBox;->INBOX:Lcom/android/mms/QTIBackupMMS$MsgBox;

    invoke-virtual {v1}, Lcom/android/mms/QTIBackupMMS$MsgBox;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/mms/QTIBackupMMS$MsgBox;->SENT:Lcom/android/mms/QTIBackupMMS$MsgBox;

    invoke-virtual {v1}, Lcom/android/mms/QTIBackupMMS$MsgBox;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/mms/QTIBackupMMS;->-com-android-mms-QTIBackupMMS$MsgBoxSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 87
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "msg_box"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "m_type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "read"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "date"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "locked"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "m_size"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "sub_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 86
    sput-object v0, Lcom/android/mms/QTIBackupMMS;->MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/QTIBackupMMS;->DEBUG:Z

    .line 75
    const-string/jumbo v0, "QTIBackupMMS"

    iput-object v0, p0, Lcom/android/mms/QTIBackupMMS;->TAG:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/mms/QTIBackupMMS;->vfile:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/android/mms/QMMSBackup;

    invoke-direct {v0}, Lcom/android/mms/QMMSBackup;-><init>()V

    iput-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mmsBackupSent:Lcom/android/mms/QMMSBackup;

    .line 101
    new-instance v0, Lcom/android/mms/QMMSBackup;

    invoke-direct {v0}, Lcom/android/mms/QMMSBackup;-><init>()V

    iput-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mmsBackupInbox:Lcom/android/mms/QMMSBackup;

    .line 102
    new-instance v0, Lcom/android/mms/QMMSBackup;

    invoke-direct {v0}, Lcom/android/mms/QMMSBackup;-><init>()V

    iput-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mmsBackupDraft:Lcom/android/mms/QMMSBackup;

    .line 103
    return-void
.end method

.method private BackupMsg(Landroid/database/Cursor;Lcom/android/mms/QMMSBackup;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 252
    if-nez p1, :cond_0

    .line 254
    const/4 v0, -0x1

    return v0

    .line 257
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 259
    return v0

    .line 265
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 267
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/QTIBackupMMS;->exportMms(Landroid/database/Cursor;)Lcom/android/mms/QTIMMSObject;

    move-result-object v1

    .line 268
    iget-object v2, p2, Lcom/android/mms/QMMSBackup;->MMSList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v0, v0, 0x1

    .line 272
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    return v0

    .line 275
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private exportMms(Landroid/database/Cursor;)Lcom/android/mms/QTIMMSObject;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 283
    new-instance v2, Lcom/android/mms/QTIMMSObject;

    invoke-direct {v2}, Lcom/android/mms/QTIMMSObject;-><init>()V

    .line 285
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/mms/QTIMMSObject;->setId(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/mms/QTIMMSObject;->setDate(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v0, "locked"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/mms/QTIMMSObject;->setLocked(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v0, "msg_box"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/mms/QTIMMSObject;->setMsg_box(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v0, "m_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/mms/QTIMMSObject;->setMsg_size(Ljava/lang/String;)V

    .line 290
    const-string/jumbo v0, "m_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/mms/QTIMMSObject;->setMsg_type(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/mms/QTIMMSObject;->setRead(Ljava/lang/String;)V

    .line 294
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/android/mms/QTIMMSObject;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 295
    iget-object v3, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    .line 301
    invoke-virtual {v2}, Lcom/android/mms/QTIMMSObject;->getMsg_box()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v6, v4

    if-nez v4, :cond_0

    .line 303
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 304
    new-instance v3, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v4, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 305
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer;->make()[B
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 322
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/mms/QTIMMSObject;->setMmData([B)V

    .line 323
    return-object v2

    .line 310
    :catch_0
    move-exception v0

    .line 311
    const-string/jumbo v3, "QTIBackupMMS"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 308
    :catch_1
    move-exception v0

    .line 309
    const-string/jumbo v3, "QTIBackupMMS"

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 306
    :catch_2
    move-exception v0

    .line 307
    const-string/jumbo v3, "QTIBackupMMS"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 315
    :cond_0
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    .line 316
    new-instance v3, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v4, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer;->make()[B
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    goto :goto_0

    .line 317
    :catch_3
    move-exception v0

    .line 318
    const-string/jumbo v3, "QTIBackupMMS"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private getMmsList(Lcom/android/mms/QTIBackupMMS$MsgBox;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 218
    const/4 v0, 0x0

    .line 222
    invoke-static {}, Lcom/android/mms/QTIBackupMMS;->-getcom-android-mms-QTIBackupMMS$MsgBoxSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/QTIBackupMMS$MsgBox;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 224
    :pswitch_0
    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    .line 225
    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 226
    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mmsBackupSent:Lcom/android/mms/QMMSBackup;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/QTIBackupMMS;->BackupMsg(Landroid/database/Cursor;Lcom/android/mms/QMMSBackup;)I

    move-result v0

    .line 227
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 231
    :pswitch_1
    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 232
    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 233
    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mmsBackupInbox:Lcom/android/mms/QMMSBackup;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/QTIBackupMMS;->BackupMsg(Landroid/database/Cursor;Lcom/android/mms/QMMSBackup;)I

    move-result v0

    .line 234
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 238
    :pswitch_2
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    .line 239
    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 240
    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mmsBackupDraft:Lcom/android/mms/QMMSBackup;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/QTIBackupMMS;->BackupMsg(Landroid/database/Cursor;Lcom/android/mms/QMMSBackup;)I

    move-result v0

    .line 241
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeMMS(Lcom/android/mms/QMMSBackup;Landroid/net/Uri;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 158
    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 159
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 160
    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 162
    iget-object v1, p1, Lcom/android/mms/QMMSBackup;->MMSList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/mms/QTIMMSObject;

    .line 164
    invoke-virtual {v6}, Lcom/android/mms/QTIMMSObject;->getMmData()[B

    move-result-object v1

    .line 167
    :try_start_0
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    .line 169
    invoke-static {}, Lcom/android/mms/transaction/PduParserUtil;->shouldParseContentDisposition()Z

    move-result v3

    .line 168
    invoke-direct {v2, v1, v3}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 170
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 181
    :goto_1
    const-string/jumbo v2, "date"

    invoke-virtual {v6}, Lcom/android/mms/QTIMMSObject;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v2, "read"

    invoke-virtual {v6}, Lcom/android/mms/QTIMMSObject;->getRead()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v2, "locked"

    invoke-virtual {v6}, Lcom/android/mms/QTIMMSObject;->getLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v2, "m_size"

    invoke-virtual {v6}, Lcom/android/mms/QTIMMSObject;->getMsg_size()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "QTIBackupMMS"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 172
    :cond_0
    :try_start_2
    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    .line 173
    invoke-static {}, Lcom/android/mms/transaction/PduParserUtil;->shouldParseContentDisposition()Z

    move-result v3

    .line 172
    invoke-direct {v2, v1, v3}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/SendReq;

    .line 174
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_1

    .line 176
    :catch_1
    move-exception v1

    .line 177
    const-string/jumbo v2, "QTIBackupMMS"

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    goto :goto_1

    .line 194
    :cond_1
    return-void
.end method

.method private writeMmsList(III)V
    .locals 3

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/QTIBackupMMS;->vfile:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 200
    new-instance v0, Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Lcom/android/mms/QTIBackupMMS;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 202
    iget-object v1, p0, Lcom/android/mms/QTIBackupMMS;->mmsBackupSent:Lcom/android/mms/QMMSBackup;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {v0, p2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 204
    iget-object v1, p0, Lcom/android/mms/QTIBackupMMS;->mmsBackupInbox:Lcom/android/mms/QMMSBackup;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v0, p3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 206
    iget-object v1, p0, Lcom/android/mms/QTIBackupMMS;->mmsBackupDraft:Lcom/android/mms/QMMSBackup;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 208
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 209
    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string/jumbo v1, "QTIBackupMMS"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public performBackup()V
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/android/mms/QTIBackupMMS$MsgBox;->SENT:Lcom/android/mms/QTIBackupMMS$MsgBox;

    invoke-direct {p0, v0}, Lcom/android/mms/QTIBackupMMS;->getMmsList(Lcom/android/mms/QTIBackupMMS$MsgBox;)I

    move-result v0

    .line 107
    sget-object v1, Lcom/android/mms/QTIBackupMMS$MsgBox;->INBOX:Lcom/android/mms/QTIBackupMMS$MsgBox;

    invoke-direct {p0, v1}, Lcom/android/mms/QTIBackupMMS;->getMmsList(Lcom/android/mms/QTIBackupMMS$MsgBox;)I

    move-result v1

    .line 108
    sget-object v2, Lcom/android/mms/QTIBackupMMS$MsgBox;->DRAFT:Lcom/android/mms/QTIBackupMMS$MsgBox;

    invoke-direct {p0, v2}, Lcom/android/mms/QTIBackupMMS;->getMmsList(Lcom/android/mms/QTIBackupMMS$MsgBox;)I

    move-result v2

    .line 109
    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/QTIBackupMMS;->writeMmsList(III)V

    .line 110
    return-void
.end method

.method public performRestore()V
    .locals 4

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/QTIBackupMMS;->vfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mFileInputStream:Ljava/io/FileInputStream;

    .line 117
    new-instance v1, Ljava/io/ObjectInputStream;

    iget-object v0, p0, Lcom/android/mms/QTIBackupMMS;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 120
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 121
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/QMMSBackup;

    .line 122
    if-lez v2, :cond_0

    .line 123
    const-string/jumbo v2, "QTIBackupMMS"

    const-string/jumbo v3, "No messages to restore in Sent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    sget-object v2, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v2}, Lcom/android/mms/QTIBackupMMS;->writeMMS(Lcom/android/mms/QMMSBackup;Landroid/net/Uri;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 129
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/QMMSBackup;

    .line 130
    if-lez v2, :cond_1

    .line 131
    const-string/jumbo v2, "QTIBackupMMS"

    const-string/jumbo v3, "No messages to restore in Inbox"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v2}, Lcom/android/mms/QTIBackupMMS;->writeMMS(Lcom/android/mms/QMMSBackup;Landroid/net/Uri;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 137
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/QMMSBackup;

    .line 138
    if-lez v2, :cond_2

    .line 139
    const-string/jumbo v1, "QTIBackupMMS"

    const-string/jumbo v2, "No messages to restore in Draft"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_2
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/QTIBackupMMS;->writeMMS(Lcom/android/mms/QMMSBackup;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string/jumbo v1, "QTIBackupMMS"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    const-string/jumbo v1, "QTIBackupMMS"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :catch_2
    move-exception v0

    .line 146
    const-string/jumbo v1, "QTIBackupMMS"

    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :catch_3
    move-exception v0

    .line 144
    const-string/jumbo v1, "QTIBackupMMS"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
