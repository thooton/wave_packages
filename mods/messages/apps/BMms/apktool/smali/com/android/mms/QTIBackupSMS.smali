.class public Lcom/android/mms/QTIBackupSMS;
.super Ljava/lang/Object;
.source "QTIBackupSMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/QTIBackupSMS$MsgBox;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-mms-QTIBackupSMS$MsgBoxSwitchesValues:[I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field cursor:Landroid/database/Cursor;

.field mContext:Landroid/content/Context;

.field mFileInputStream:Ljava/io/FileInputStream;

.field mFileOutputStream:Ljava/io/FileOutputStream;

.field smsBackupDraft:Lcom/android/mms/SMSBackup;

.field smsBackupInbox:Lcom/android/mms/SMSBackup;

.field smsBackupSent:Lcom/android/mms/SMSBackup;

.field vfile:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom-android-mms-QTIBackupSMS$MsgBoxSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/mms/QTIBackupSMS;->-com-android-mms-QTIBackupSMS$MsgBoxSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/QTIBackupSMS;->-com-android-mms-QTIBackupSMS$MsgBoxSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/mms/QTIBackupSMS$MsgBox;->values()[Lcom/android/mms/QTIBackupSMS$MsgBox;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/mms/QTIBackupSMS$MsgBox;->DRAFT:Lcom/android/mms/QTIBackupSMS$MsgBox;

    invoke-virtual {v1}, Lcom/android/mms/QTIBackupSMS$MsgBox;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/mms/QTIBackupSMS$MsgBox;->INBOX:Lcom/android/mms/QTIBackupSMS$MsgBox;

    invoke-virtual {v1}, Lcom/android/mms/QTIBackupSMS$MsgBox;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/mms/QTIBackupSMS$MsgBox;->SENT:Lcom/android/mms/QTIBackupSMS$MsgBox;

    invoke-virtual {v1}, Lcom/android/mms/QTIBackupSMS$MsgBox;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/mms/QTIBackupSMS;->-com-android-mms-QTIBackupSMS$MsgBoxSwitchesValues:[I

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

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/QTIBackupSMS;->DEBUG:Z

    .line 120
    const-string/jumbo v0, "QTIBackupSMS"

    iput-object v0, p0, Lcom/android/mms/QTIBackupSMS;->TAG:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/android/mms/QTIBackupSMS;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/mms/QTIBackupSMS;->vfile:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/android/mms/SMSBackup;

    invoke-direct {v0}, Lcom/android/mms/SMSBackup;-><init>()V

    iput-object v0, p0, Lcom/android/mms/QTIBackupSMS;->smsBackupInbox:Lcom/android/mms/SMSBackup;

    .line 130
    new-instance v0, Lcom/android/mms/SMSBackup;

    invoke-direct {v0}, Lcom/android/mms/SMSBackup;-><init>()V

    iput-object v0, p0, Lcom/android/mms/QTIBackupSMS;->smsBackupSent:Lcom/android/mms/SMSBackup;

    .line 131
    new-instance v0, Lcom/android/mms/SMSBackup;

    invoke-direct {v0}, Lcom/android/mms/SMSBackup;-><init>()V

    iput-object v0, p0, Lcom/android/mms/QTIBackupSMS;->smsBackupDraft:Lcom/android/mms/SMSBackup;

    .line 132
    return-void
.end method

.method private getSMSList(Lcom/android/mms/QTIBackupSMS$MsgBox;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/android/mms/QTIBackupSMS;->getSmsCursor(Lcom/android/mms/QTIBackupSMS$MsgBox;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    .line 242
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 243
    const/4 v0, -0x1

    return v0

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 247
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 249
    return v0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 254
    invoke-static {}, Lcom/android/mms/QTIBackupSMS;->-getcom-android-mms-QTIBackupSMS$MsgBoxSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/QTIBackupSMS$MsgBox;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 302
    return v0

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 257
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/mms/QTIBackupSMS;->getSMS(Landroid/database/Cursor;)Lcom/android/mms/SMSObject;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/android/mms/QTIBackupSMS;->smsBackupInbox:Lcom/android/mms/SMSBackup;

    iget-object v2, v2, Lcom/android/mms/SMSBackup;->SMSList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 262
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 272
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/mms/QTIBackupSMS;->getSMS(Landroid/database/Cursor;)Lcom/android/mms/SMSObject;

    move-result-object v1

    .line 273
    iget-object v2, p0, Lcom/android/mms/QTIBackupSMS;->smsBackupSent:Lcom/android/mms/SMSBackup;

    iget-object v2, v2, Lcom/android/mms/SMSBackup;->SMSList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 277
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 295
    :cond_4
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 287
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/mms/QTIBackupSMS;->getSMS(Landroid/database/Cursor;)Lcom/android/mms/SMSObject;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lcom/android/mms/QTIBackupSMS;->smsBackupDraft:Lcom/android/mms/SMSBackup;

    iget-object v2, v2, Lcom/android/mms/SMSBackup;->SMSList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v0, v0, 0x1

    .line 292
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSmsCursor(Lcom/android/mms/QTIBackupSMS$MsgBox;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/mms/QTIBackupSMS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 345
    invoke-static {}, Lcom/android/mms/QTIBackupSMS;->-getcom-android-mms-QTIBackupSMS$MsgBoxSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/QTIBackupSMS$MsgBox;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 357
    :goto_0
    return-object v2

    .line 347
    :pswitch_0
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 350
    :pswitch_1
    sget-object v1, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 353
    :pswitch_2
    sget-object v1, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private writeSMS(Lcom/android/mms/SMSBackup;Lcom/android/mms/QTIBackupSMS$MsgBox;)V
    .locals 6

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/mms/QTIBackupSMS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 188
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 190
    invoke-static {}, Lcom/android/mms/QTIBackupSMS;->-getcom-android-mms-QTIBackupSMS$MsgBoxSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/QTIBackupSMS$MsgBox;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 229
    :cond_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p1, Lcom/android/mms/SMSBackup;->SMSList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/SMSObject;

    .line 194
    const-string/jumbo v4, "_id"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v4, "address"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v4, "body"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v4, "date_sent"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v4, "read"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getReadState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v0, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v0, p1, Lcom/android/mms/SMSBackup;->SMSList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/SMSObject;

    .line 207
    const-string/jumbo v4, "_id"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v4, "address"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v4, "body"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v4, "date_sent"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v4, "read"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getReadState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 218
    :pswitch_2
    iget-object v0, p1, Lcom/android/mms/SMSBackup;->SMSList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/SMSObject;

    .line 220
    const-string/jumbo v4, "_id"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v4, "address"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v4, "body"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v4, "date_sent"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v4, "read"

    invoke-virtual {v0}, Lcom/android/mms/SMSObject;->getReadState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getSMS(Landroid/database/Cursor;)Lcom/android/mms/SMSObject;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Lcom/android/mms/SMSObject;

    invoke-direct {v0}, Lcom/android/mms/SMSObject;-><init>()V

    .line 331
    const-string/jumbo v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/SMSObject;->setId(Ljava/lang/String;)V

    .line 332
    const-string/jumbo v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/SMSObject;->setAddr(Ljava/lang/String;)V

    .line 333
    const-string/jumbo v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/SMSObject;->setMsg(Ljava/lang/String;)V

    .line 334
    const-string/jumbo v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/SMSObject;->setTime(Ljava/lang/String;)V

    .line 335
    const-string/jumbo v1, "read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/SMSObject;->setReadState(Ljava/lang/String;)V

    .line 337
    return-object v0
.end method

.method public performBackup()V
    .locals 3

    .prologue
    .line 232
    sget-object v0, Lcom/android/mms/QTIBackupSMS$MsgBox;->INBOX:Lcom/android/mms/QTIBackupSMS$MsgBox;

    invoke-direct {p0, v0}, Lcom/android/mms/QTIBackupSMS;->getSMSList(Lcom/android/mms/QTIBackupSMS$MsgBox;)I

    move-result v0

    .line 233
    sget-object v1, Lcom/android/mms/QTIBackupSMS$MsgBox;->SENT:Lcom/android/mms/QTIBackupSMS$MsgBox;

    invoke-direct {p0, v1}, Lcom/android/mms/QTIBackupSMS;->getSMSList(Lcom/android/mms/QTIBackupSMS$MsgBox;)I

    move-result v1

    .line 234
    sget-object v2, Lcom/android/mms/QTIBackupSMS$MsgBox;->DRAFT:Lcom/android/mms/QTIBackupSMS$MsgBox;

    invoke-direct {p0, v2}, Lcom/android/mms/QTIBackupSMS;->getSMSList(Lcom/android/mms/QTIBackupSMS$MsgBox;)I

    move-result v2

    .line 235
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mms/QTIBackupSMS;->writeSMSList(III)V

    .line 236
    return-void
.end method

.method public performRestore()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/QTIBackupSMS;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->vfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/QTIBackupSMS;->mFileInputStream:Ljava/io/FileInputStream;

    .line 144
    new-instance v1, Ljava/io/ObjectInputStream;

    iget-object v0, p0, Lcom/android/mms/QTIBackupSMS;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 152
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/SMSBackup;

    .line 153
    sget-object v2, Lcom/android/mms/QTIBackupSMS$MsgBox;->INBOX:Lcom/android/mms/QTIBackupSMS$MsgBox;

    invoke-direct {p0, v0, v2}, Lcom/android/mms/QTIBackupSMS;->writeSMS(Lcom/android/mms/SMSBackup;Lcom/android/mms/QTIBackupSMS$MsgBox;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 161
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/SMSBackup;

    .line 162
    sget-object v2, Lcom/android/mms/QTIBackupSMS$MsgBox;->SENT:Lcom/android/mms/QTIBackupSMS$MsgBox;

    invoke-direct {p0, v0, v2}, Lcom/android/mms/QTIBackupSMS;->writeSMS(Lcom/android/mms/SMSBackup;Lcom/android/mms/QTIBackupSMS$MsgBox;)V

    .line 165
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 170
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/SMSBackup;

    .line 171
    sget-object v1, Lcom/android/mms/QTIBackupSMS$MsgBox;->DRAFT:Lcom/android/mms/QTIBackupSMS$MsgBox;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/QTIBackupSMS;->writeSMS(Lcom/android/mms/SMSBackup;Lcom/android/mms/QTIBackupSMS$MsgBox;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string/jumbo v1, "QTIBackupSMS"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    .line 178
    const-string/jumbo v1, "QTIBackupSMS"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :catch_2
    move-exception v0

    .line 176
    const-string/jumbo v1, "QTIBackupSMS"

    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :catch_3
    move-exception v0

    .line 174
    const-string/jumbo v1, "QTIBackupSMS"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeSMSList(III)V
    .locals 3

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/QTIBackupSMS;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->vfile:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/QTIBackupSMS;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 309
    new-instance v0, Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 310
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 311
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->smsBackupInbox:Lcom/android/mms/SMSBackup;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 313
    invoke-virtual {v0, p2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 314
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->smsBackupSent:Lcom/android/mms/SMSBackup;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v0, p3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 317
    iget-object v1, p0, Lcom/android/mms/QTIBackupSMS;->smsBackupDraft:Lcom/android/mms/SMSBackup;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 320
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 321
    iget-object v0, p0, Lcom/android/mms/QTIBackupSMS;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string/jumbo v1, "QTIBackupSMS"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
