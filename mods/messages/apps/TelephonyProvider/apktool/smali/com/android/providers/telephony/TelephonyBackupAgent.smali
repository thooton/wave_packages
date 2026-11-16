.class public Lcom/android/providers/telephony/TelephonyBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "TelephonyBackupAgent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;,
        Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;,
        Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;
    }
.end annotation


# static fields
.field static final ALL_THREADS_URI:Landroid/net/Uri;

.field private static ATTACHMENT_DATA_PATH:Ljava/lang/String; = null

.field static final MMS_ADDR_PROJECTION:[Ljava/lang/String;

.field static final MMS_PROJECTION:[Ljava/lang/String;

.field static final MMS_TEXT_PROJECTION:[Ljava/lang/String;

.field static final PROJECTION_ID:[Ljava/lang/String;

.field static final SINGLE_CANONICAL_ADDRESS_URI:Landroid/net/Uri;

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_RECIPIENTS_PROJECTION:[Ljava/lang/String;

.field private static THREAD_ARCHIVED_IDX:I = 0x0

.field private static THREAD_ARCHIVED_PROJECTION:[Ljava/lang/String; = null

.field static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;

.field static final UNKNOWN_SENDER:Ljava/lang/String; = "\u02bcUNKNOWN_SENDER!\u02bc"

.field private static final sDefaultValuesAddr:Landroid/content/ContentValues;

.field private static final sDefaultValuesAttachments:Landroid/content/ContentValues;

.field private static sDefaultValuesMms:Landroid/content/ContentValues; = null

.field private static sDefaultValuesSms:Landroid/content/ContentValues; = null

.field private static volatile sIsRestoring:Z = false

.field static final sSmilTextOnly:Ljava/lang/String; = "<smil><head><layout><root-layout/><region id=\"Text\" top=\"0\" left=\"0\" height=\"100%%\" width=\"100%%\"/></layout></head><body>%s</body></smil>"

.field static final sSmilTextPart:Ljava/lang/String; = "<par dur=\"5000ms\"><text src=\"%s\" region=\"Text\" /></par>"


# instance fields
.field private mBytesOverQuota:J

.field mCacheGetOrCreateThreadId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mCacheRecipientsByThread:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field mMaxMsgPerFile:I

.field private mPhone2subId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubId2phone:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadArchived:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownSenderThreadId:J


# direct methods
.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sIsRestoring:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/providers/telephony/TelephonyBackupAgent;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->doRestoreFile(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 185
    const-string/jumbo v0, "/app_parts/"

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->ATTACHMENT_DATA_PATH:Ljava/lang/String;

    .line 192
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 193
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 194
    const-string/jumbo v1, "sub_id"

    aput-object v1, v0, v3

    .line 195
    const-string/jumbo v1, "address"

    aput-object v1, v0, v5

    .line 196
    const-string/jumbo v1, "body"

    aput-object v1, v0, v6

    .line 197
    const-string/jumbo v1, "subject"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 198
    const-string/jumbo v1, "date"

    aput-object v1, v0, v7

    .line 199
    const-string/jumbo v1, "date_sent"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "status"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "type"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "thread_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 203
    const-string/jumbo v1, "read"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 192
    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->SMS_PROJECTION:[Ljava/lang/String;

    .line 207
    new-array v0, v5, [Ljava/lang/String;

    .line 208
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 209
    const-string/jumbo v1, "recipient_ids"

    aput-object v1, v0, v3

    .line 207
    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->SMS_RECIPIENTS_PROJECTION:[Ljava/lang/String;

    .line 214
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 215
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 216
    const-string/jumbo v1, "sub_id"

    aput-object v1, v0, v3

    .line 217
    const-string/jumbo v1, "sub"

    aput-object v1, v0, v5

    .line 218
    const-string/jumbo v1, "sub_cs"

    aput-object v1, v0, v6

    .line 219
    const-string/jumbo v1, "date"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 220
    const-string/jumbo v1, "date_sent"

    aput-object v1, v0, v7

    .line 221
    const-string/jumbo v1, "m_type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 222
    const-string/jumbo v1, "v"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 223
    const-string/jumbo v1, "msg_box"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 224
    const-string/jumbo v1, "ct_l"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 225
    const-string/jumbo v1, "thread_id"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 226
    const-string/jumbo v1, "tr_id"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 227
    const-string/jumbo v1, "read"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 214
    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_PROJECTION:[Ljava/lang/String;

    .line 233
    new-array v0, v6, [Ljava/lang/String;

    .line 234
    const-string/jumbo v1, "type"

    aput-object v1, v0, v4

    .line 235
    const-string/jumbo v1, "address"

    aput-object v1, v0, v3

    .line 236
    const-string/jumbo v1, "charset"

    aput-object v1, v0, v5

    .line 233
    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_ADDR_PROJECTION:[Ljava/lang/String;

    .line 242
    new-array v0, v5, [Ljava/lang/String;

    .line 243
    const-string/jumbo v1, "text"

    aput-object v1, v0, v4

    .line 244
    const-string/jumbo v1, "chset"

    aput-object v1, v0, v3

    .line 242
    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_TEXT_PROJECTION:[Ljava/lang/String;

    .line 263
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    .line 264
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    .line 265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAddr:Landroid/content/ContentValues;

    .line 266
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAttachments:Landroid/content/ContentValues;

    .line 283
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    const-string/jumbo v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    const-string/jumbo v1, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    const-string/jumbo v1, "address"

    const-string/jumbo v2, "\u02bcUNKNOWN_SENDER!\u02bc"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    const-string/jumbo v1, "sub_id"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    const-string/jumbo v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    const-string/jumbo v1, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    const-string/jumbo v1, "sub_id"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    const-string/jumbo v1, "msg_box"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    const-string/jumbo v1, "text_only"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAddr:Landroid/content/ContentValues;

    const-string/jumbo v1, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAddr:Landroid/content/ContentValues;

    const-string/jumbo v1, "charset"

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->PROJECTION_ID:[Ljava/lang/String;

    .line 762
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "archived"

    aput-object v1, v0, v4

    .line 761
    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->THREAD_ARCHIVED_PROJECTION:[Ljava/lang/String;

    .line 763
    sput v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->THREAD_ARCHIVED_IDX:I

    .line 1312
    const-string/jumbo v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 1334
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1335
    const-string/jumbo v1, "simple"

    const-string/jumbo v2, "true"

    .line 1334
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1333
    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->ALL_THREADS_URI:Landroid/net/Uri;

    .line 1364
    const-string/jumbo v0, "content://mms-sms/canonical-address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1363
    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->SINGLE_CANONICAL_ADDRESS_URI:Landroid/net/Uri;

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 260
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mMaxMsgPerFile:I

    .line 300
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mSubId2phone:Landroid/util/SparseArray;

    .line 301
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mThreadArchived:Ljava/util/Map;

    .line 310
    iput-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    .line 313
    iput-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    .line 111
    return-void
.end method

.method private addMmsMessage(Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1126
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1127
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1126
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1127
    const-string/jumbo v1, "part"

    .line 1126
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1129
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "text.%06d.txt"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1131
    const-string/jumbo v0, "<par dur=\"5000ms\"><text src=\"%s\" region=\"Text\" /></par>"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v4, v5, v10

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    iget-object v5, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->smil:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1133
    const-string/jumbo v5, "<smil><head><layout><root-layout/><region id=\"Text\" top=\"0\" left=\"0\" height=\"100%%\" width=\"100%%\"/></layout></head><body>%s</body></smil>"

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1135
    const-string/jumbo v6, "mid"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1136
    const-string/jumbo v6, "seq"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1137
    const-string/jumbo v6, "ct"

    const-string/jumbo v7, "application/smil"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const-string/jumbo v6, "name"

    const-string/jumbo v7, "smil.xml"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string/jumbo v6, "cid"

    const-string/jumbo v7, "<smil>"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string/jumbo v6, "cl"

    const-string/jumbo v7, "smil.xml"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string/jumbo v6, "text"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1146
    return-void

    .line 1133
    :cond_0
    iget-object v0, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->smil:Ljava/lang/String;

    goto :goto_0

    .line 1151
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/16 v5, 0x8

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1152
    const-string/jumbo v5, "mid"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1153
    const-string/jumbo v5, "seq"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1154
    const-string/jumbo v5, "ct"

    const-string/jumbo v6, "text/plain"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string/jumbo v5, "name"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string/jumbo v5, "cid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const-string/jumbo v5, "cl"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string/jumbo v4, "chset"

    iget-object v5, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->body:Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    iget v5, v5, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1159
    const-string/jumbo v4, "text"

    iget-object v5, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->body:Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    iget-object v5, v5, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget-object v4, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1164
    return-void

    .line 1168
    :cond_2
    iget-object v0, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->attachments:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1170
    iget-object v0, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1171
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1172
    const-string/jumbo v6, "mid"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1173
    const-string/jumbo v6, "seq"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1174
    const-string/jumbo v6, "ct"

    .line 1175
    const-string/jumbo v7, "mime_type"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1174
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string/jumbo v6, "filename"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    const-string/jumbo v6, "cid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const-string/jumbo v6, "cl"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string/jumbo v6, "_data"

    .line 1180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getDataDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/providers/telephony/TelephonyBackupAgent;->ATTACHMENT_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1182
    if-nez v0, :cond_3

    .line 1186
    return-void

    .line 1192
    :cond_4
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1193
    if-nez v0, :cond_5

    .line 1197
    return-void

    .line 1200
    :cond_5
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1202
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 1203
    const-string/jumbo v5, "mid"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1204
    iget-object v5, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v1, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1208
    const-string/jumbo v1, "addr"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1209
    iget-object v0, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1210
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1211
    const-string/jumbo v0, "msg_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1212
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 1215
    :cond_6
    return-void
.end method

.method private archiveThread(JZ)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 988
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    xor-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    .line 989
    :cond_0
    return-void

    .line 991
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 992
    const-string/jumbo v1, "archived"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 993
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    .line 994
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 996
    const-string/jumbo v3, "_id=?"

    .line 997
    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 993
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1002
    return-void
.end method

.method private backupAll(Landroid/app/backup/FullBackupDataOutput;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 442
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    :cond_0
    return-void

    .line 447
    :cond_1
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getJsonWriter(Ljava/lang/String;)Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 448
    :try_start_1
    const-string/jumbo v0, "_sms_backup"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {p0, p2, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->putSmsMessagesToJson(Landroid/database/Cursor;Landroid/util/JsonWriter;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    .line 453
    :goto_0
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_7

    throw v2

    .line 451
    :cond_3
    :try_start_3
    invoke-virtual {p0, p2, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->putMmsMessagesToJson(Landroid/database/Cursor;Landroid/util/JsonWriter;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    :goto_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    throw v2

    :catch_2
    move-exception v1

    if-nez v2, :cond_5

    move-object v2, v1

    goto :goto_4

    :cond_5
    if-eq v2, v1, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    throw v0

    .line 454
    :cond_7
    invoke-direct {p0, v0, p3, p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->backupFile(ILjava/lang/String;Landroid/app/backup/FullBackupDataOutput;)V

    .line 455
    return-void

    .line 453
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private backupFile(ILjava/lang/String;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    if-lez p1, :cond_1

    .line 488
    :try_start_0
    iget-wide v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 489
    iget-wide v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 490
    return-void

    .line 492
    :cond_0
    :try_start_1
    invoke-super {p0, v1, p3}, Landroid/app/backup/BackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 497
    return-void

    .line 494
    :catchall_0
    move-exception v0

    .line 495
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 494
    throw v0
.end method

.method private doRestoreFile(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 612
    :try_start_0
    invoke-static {p2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getJsonReader(Ljava/io/FileDescriptor;)Landroid/util/JsonReader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 613
    :try_start_1
    const-string/jumbo v0, "_sms_backup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    invoke-virtual {p0, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->putSmsMessagesToProvider(Landroid/util/JsonReader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 628
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    if-eqz v2, :cond_6

    throw v2

    .line 618
    :cond_2
    :try_start_3
    const-string/jumbo v0, "_mms_backup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->putMmsMessagesToProvider(Landroid/util/JsonReader;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    if-eqz v2, :cond_5

    throw v2

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v1

    if-nez v2, :cond_4

    move-object v2, v1

    goto :goto_4

    :cond_4
    if-eq v2, v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    throw v0

    .line 629
    :cond_6
    return-void

    .line 628
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private doesMmsExist(Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 688
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 689
    const-string/jumbo v3, "date"

    aput-object v3, v2, v7

    iget-object v3, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    const-string/jumbo v4, "date"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    .line 688
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->PROJECTION_ID:[Ljava/lang/String;

    .line 691
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 690
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 692
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 694
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 695
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMmsBody(I)Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    move-result-object v0

    .line 696
    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->body:Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    invoke-virtual {v0, v2}, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    throw v6

    :catch_0
    move-exception v6

    goto :goto_0

    .line 697
    :cond_2
    return v8

    .line 699
    :cond_3
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    .line 701
    :cond_4
    if-eqz v1, :cond_5

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_1
    if-eqz v6, :cond_9

    throw v6

    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v0

    move-object v0, v2

    :goto_3
    if-eqz v1, :cond_6

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_4
    if-eqz v6, :cond_8

    throw v6

    :catch_3
    move-exception v1

    if-nez v6, :cond_7

    move-object v6, v1

    goto :goto_4

    :cond_7
    if-eq v6, v1, :cond_6

    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    throw v0

    .line 702
    :cond_9
    return v7

    .line 701
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private doesSmsExist(Landroid/content/ContentValues;)Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 677
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s = %d and %s = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 678
    const-string/jumbo v3, "date"

    aput-object v3, v2, v8

    const-string/jumbo v3, "date"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    .line 679
    const-string/jumbo v3, "body"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 680
    const-string/jumbo v3, "body"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 677
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->PROJECTION_ID:[Ljava/lang/String;

    .line 682
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 681
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 683
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-lez v0, :cond_1

    move v0, v7

    .line 684
    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v6, :cond_2

    throw v6

    :cond_1
    move v0, v8

    .line 683
    goto :goto_0

    .line 684
    :catch_0
    move-exception v6

    goto :goto_1

    .line 683
    :cond_2
    return v0

    .line 684
    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v2

    :goto_3
    if-eqz v6, :cond_3

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    if-eqz v1, :cond_5

    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    if-eq v1, v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v9, v1

    move-object v1, v6

    move-object v6, v9

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private getAddresses(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 1368
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    const-string/jumbo v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1370
    array-length v10, v9

    move v7, v0

    :goto_0
    if-ge v7, v10, :cond_3

    aget-object v0, v9, v7

    .line 1374
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1375
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 1370
    :cond_0
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1381
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1392
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    .line 1393
    sget-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->SINGLE_CANONICAL_ADDRESS_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1394
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1392
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 1400
    :goto_2
    if-eqz v1, :cond_0

    .line 1402
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1403
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1404
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1405
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1413
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1395
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2

    .line 1412
    :catchall_0
    move-exception v0

    .line 1413
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1412
    throw v0

    .line 1417
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1422
    return-object v8
.end method

.method public static getIsRestoring()Z
    .locals 1

    .prologue
    .line 1438
    sget-boolean v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sIsRestoring:Z

    return v0
.end method

.method private static getJsonReader(Ljava/io/FileDescriptor;)Landroid/util/JsonReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1262
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/util/zip/InflaterInputStream;

    .line 1263
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1262
    invoke-direct {v2, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1263
    const-string/jumbo v3, "UTF-8"

    .line 1262
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method private getJsonWriter(Ljava/lang/String;)Landroid/util/JsonWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1256
    new-instance v0, Landroid/util/JsonWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    .line 1257
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/android/providers/telephony/TelephonyBackupAgent;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 1256
    invoke-direct {v3, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1257
    const-string/jumbo v4, "UTF-8"

    .line 1256
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1257
    const v3, 0x8000

    .line 1256
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-direct {v0, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method private static getMessageDate(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 421
    const-string/jumbo v0, "date"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMmsAddressesFromReader(Landroid/util/JsonReader;Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->addresses:Ljava/util/List;

    .line 1054
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 1055
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1056
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 1057
    new-instance v0, Landroid/content/ContentValues;

    sget-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAddr:Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1058
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1059
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 1060
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1063
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1060
    :cond_2
    const-string/jumbo v2, "charset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "address"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1066
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1072
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 1076
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 1077
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->addresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1081
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 1082
    return-void
.end method

.method private static getMmsAttachmentsFromReader(Landroid/util/JsonReader;Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->attachments:Ljava/util/List;

    .line 1090
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 1091
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1092
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 1093
    new-instance v0, Landroid/content/ContentValues;

    sget-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAttachments:Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1094
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1095
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 1096
    const-string/jumbo v2, "mime_type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1099
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1096
    :cond_2
    const-string/jumbo v2, "filename"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1105
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 1109
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 1110
    const-string/jumbo v1, "filename"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->attachments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1118
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 1119
    return-void
.end method

.method private getMmsBody(I)Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1005
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1006
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1005
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1006
    const-string/jumbo v1, "part"

    .line 1005
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_TEXT_PROJECTION:[Ljava/lang/String;

    .line 1012
    const-string/jumbo v3, "ct=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "text/plain"

    const/4 v8, 0x0

    aput-object v5, v4, v8

    .line 1013
    const-string/jumbo v5, "_id ASC"

    .line 1011
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1014
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v7

    move-object v2, v6

    .line 1016
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1017
    if-eqz v3, :cond_1

    .line 1018
    if-nez v2, :cond_4

    move-object v2, v3

    .line 1019
    :goto_0
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1021
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    move v2, v0

    .line 1023
    :goto_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_8

    throw v0

    :cond_3
    move v2, v7

    move-object v3, v6

    .line 1014
    goto :goto_1

    .line 1018
    :cond_4
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v2

    goto :goto_0

    .line 1023
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_3
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v2

    :goto_4
    if-eqz v6, :cond_5

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_5
    if-eqz v1, :cond_7

    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_5

    :cond_6
    if-eq v1, v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw v0

    .line 1024
    :cond_8
    if-nez v3, :cond_9

    :goto_6
    return-object v6

    :cond_9
    new-instance v6, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    invoke-direct {v6, v3, v2}, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;-><init>(Ljava/lang/String;I)V

    goto :goto_6

    .line 1023
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v9, v1

    move-object v1, v6

    move-object v6, v9

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_a
    move v2, v7

    move-object v3, v6

    goto :goto_1
.end method

.method private static getNormalizedNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 706
    if-nez p0, :cond_0

    .line 707
    return-object v0

    .line 709
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateThreadId(Ljava/util/Set;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1283
    if-nez p1, :cond_0

    .line 1284
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 1287
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    const-string/jumbo v0, "\u02bcUNKNOWN_SENDER!\u02bc"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 1292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    .line 1295
    :cond_2
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1296
    iget-wide v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mUnknownSenderThreadId:J

    .line 1298
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1304
    :goto_0
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    return-wide v0

    .line 1299
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1308
    :cond_3
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getRawRecipientIdsForThread(J)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1342
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1343
    return-object v5

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    .line 1346
    sget-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->ALL_THREADS_URI:Landroid/net/Uri;

    .line 1347
    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->SMS_RECIPIENTS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 1345
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1348
    if-eqz v1, :cond_2

    .line 1350
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1356
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1353
    return-object v0

    .line 1356
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1359
    :cond_2
    return-object v5

    .line 1355
    :catchall_0
    move-exception v0

    .line 1356
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1355
    throw v0
.end method

.method private static getRecipients(Landroid/util/JsonReader;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 837
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 838
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 839
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 842
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 843
    return-object v0
.end method

.method private getRecipientsByThread(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1321
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getRawRecipientIdsForThread(J)Ljava/lang/String;

    move-result-object v0

    .line 1322
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1323
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getAddresses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 1325
    :cond_2
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private handleThreadId(Landroid/util/JsonWriter;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-direct {p0, p2, p3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getRecipientsByThread(J)Ljava/util/List;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    :cond_0
    return-void

    .line 751
    :cond_1
    const-string/jumbo v1, "recipients"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeRecipientsToWriter(Landroid/util/JsonWriter;Ljava/util/List;)V

    .line 752
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mThreadArchived:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 753
    invoke-direct {p0, p2, p3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->isThreadArchived(J)Z

    move-result v0

    .line 754
    if-eqz v0, :cond_2

    .line 755
    const-string/jumbo v1, "archived"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 757
    :cond_2
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mThreadArchived:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    :cond_3
    return-void
.end method

.method private isThreadArchived(J)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 766
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 767
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "recipients"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 768
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 770
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->THREAD_ARCHIVED_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 771
    const/4 v5, 0x0

    .line 770
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 772
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 773
    sget v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->THREAD_ARCHIVED_IDX:I

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v7

    .line 775
    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v6, :cond_2

    throw v6

    :cond_1
    move v0, v8

    .line 773
    goto :goto_0

    .line 775
    :catch_0
    move-exception v6

    goto :goto_1

    .line 773
    :cond_2
    return v0

    .line 775
    :cond_3
    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    if-eqz v6, :cond_8

    throw v6

    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v6

    :goto_3
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v0

    move-object v0, v2

    :goto_4
    if-eqz v1, :cond_5

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    if-eqz v6, :cond_7

    throw v6

    :catch_3
    move-exception v1

    if-nez v6, :cond_6

    move-object v6, v1

    goto :goto_5

    :cond_6
    if-eq v6, v1, :cond_5

    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw v0

    .line 776
    :cond_8
    return v8

    .line 775
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private readMmsFromReader(Landroid/util/JsonReader;)Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6a

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 903
    new-instance v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;

    invoke-direct {v8, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;-><init>(Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V

    .line 904
    new-instance v0, Landroid/content/ContentValues;

    sget-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v0, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    .line 905
    iget-object v0, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    sget-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 906
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 908
    const-wide/16 v0, -0x1

    move-wide v6, v0

    move-object v5, v3

    move v1, v2

    move v3, v4

    .line 911
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 912
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 916
    const-string/jumbo v9, "self_phone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 918
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 919
    iget-object v9, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 920
    iget-object v9, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    const-string/jumbo v10, "sub_id"

    iget-object v11, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    move v0, v1

    move v1, v3

    move-object v3, v5

    :goto_1
    move-object v5, v3

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 916
    :cond_1
    const-string/jumbo v9, "mms_addresses"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 924
    invoke-static {p1, v8}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMmsAddressesFromReader(Landroid/util/JsonReader;Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V

    move v0, v1

    move v1, v3

    move-object v3, v5

    .line 925
    goto :goto_1

    .line 916
    :cond_2
    const-string/jumbo v9, "attachments"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 927
    invoke-static {p1, v8}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMmsAttachmentsFromReader(Landroid/util/JsonReader;Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V

    move v0, v1

    move v1, v3

    move-object v3, v5

    .line 928
    goto :goto_1

    .line 916
    :cond_3
    const-string/jumbo v9, "smil"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 930
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->smil:Ljava/lang/String;

    move v0, v1

    move v1, v3

    move-object v3, v5

    .line 931
    goto :goto_1

    .line 916
    :cond_4
    const-string/jumbo v9, "mms_body"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 933
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    move v0, v1

    move v1, v3

    move-object v3, v5

    .line 934
    goto :goto_1

    .line 916
    :cond_5
    const-string/jumbo v9, "mms_charset"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 936
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    move v0, v1

    move v1, v3

    move-object v3, v5

    .line 937
    goto :goto_1

    .line 916
    :cond_6
    const-string/jumbo v9, "recipients"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 939
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getRecipients(Landroid/util/JsonReader;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getOrCreateThreadId(Ljava/util/Set;)J

    move-result-wide v6

    .line 940
    iget-object v0, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    const-string/jumbo v9, "thread_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move v0, v1

    move v1, v3

    move-object v3, v5

    .line 941
    goto :goto_1

    .line 916
    :cond_7
    const-string/jumbo v9, "archived"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 943
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    move v0, v1

    move v1, v3

    move-object v3, v5

    .line 944
    goto/16 :goto_1

    .line 916
    :cond_8
    const-string/jumbo v9, "sub"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 955
    :cond_9
    iget-object v9, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move v1, v3

    move-object v3, v5

    .line 956
    goto/16 :goto_1

    .line 916
    :cond_a
    const-string/jumbo v9, "sub_cs"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "date"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "date_sent"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "m_type"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "v"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "msg_box"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "ct_l"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "tr_id"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "read"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 961
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    move v0, v1

    move v1, v3

    move-object v3, v5

    .line 962
    goto/16 :goto_1

    .line 965
    :cond_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 967
    if-eqz v5, :cond_c

    .line 968
    new-instance v0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    invoke-direct {v0, v5, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;-><init>(Ljava/lang/String;I)V

    iput-object v0, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->body:Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    .line 971
    :cond_c
    iget-object v0, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    const-string/jumbo v1, "text_only"

    iget-object v9, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->attachments:Ljava/util/List;

    if-eqz v9, :cond_d

    .line 972
    iget-object v9, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->attachments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_e

    :cond_d
    if-eqz v5, :cond_e

    const/4 v4, 0x1

    .line 971
    :cond_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 975
    iget-object v0, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    const-string/jumbo v1, "sub"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 976
    iget-object v0, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    const-string/jumbo v1, "sub_cs"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 977
    iget-object v0, v8, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    const-string/jumbo v1, "sub_cs"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 980
    :cond_f
    invoke-direct {p0, v6, v7, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->archiveThread(JZ)V

    .line 982
    return-object v8
.end method

.method private readSmsValuesFromReader(Landroid/util/JsonReader;)Landroid/content/ContentValues;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    new-instance v4, Landroid/content/ContentValues;

    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 793
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 794
    const-wide/16 v2, -0x1

    .line 795
    const/4 v0, 0x0

    .line 796
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    move v1, v0

    .line 797
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 798
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 799
    const-string/jumbo v5, "body"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 808
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 799
    :cond_1
    const-string/jumbo v5, "date"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "date_sent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "status"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "type"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "subject"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "address"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "read"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "recipients"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 811
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getRecipients(Landroid/util/JsonReader;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getOrCreateThreadId(Ljava/util/Set;)J

    move-result-wide v2

    .line 812
    const-string/jumbo v0, "thread_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move v0, v1

    .line 813
    goto :goto_1

    .line 799
    :cond_2
    const-string/jumbo v5, "archived"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 815
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    move v0, v1

    .line 816
    goto :goto_1

    .line 799
    :cond_3
    const-string/jumbo v5, "self_phone"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 818
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 819
    iget-object v5, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 820
    const-string/jumbo v5, "sub_id"

    iget-object v6, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    move v0, v1

    .line 822
    goto/16 :goto_1

    .line 827
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    move v0, v1

    .line 828
    goto/16 :goto_1

    .line 831
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 832
    invoke-direct {p0, v2, v3, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->archiveThread(JZ)V

    .line 833
    return-object v4
.end method

.method private static writeIntToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1276
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1277
    if-eqz v0, :cond_0

    .line 1278
    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 1280
    :cond_0
    return-void
.end method

.method private writeMmsAddresses(Landroid/util/JsonWriter;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1028
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1029
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "addr"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1030
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1032
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_ADDR_PROJECTION:[Ljava/lang/String;

    .line 1034
    const-string/jumbo v5, "_id ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1033
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1035
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1037
    :cond_0
    const-string/jumbo v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1039
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 1040
    const-string/jumbo v0, "type"

    invoke-static {p1, v1, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeIntToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1041
    const-string/jumbo v0, "address"

    invoke-static {p1, v1, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeStringToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1042
    const-string/jumbo v0, "charset"

    invoke-static {p1, v1, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeIntToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 1045
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    if-eqz v6, :cond_7

    throw v6

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v0

    move-object v0, v2

    :goto_2
    if-eqz v1, :cond_4

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    if-eqz v6, :cond_6

    throw v6

    :catch_2
    move-exception v1

    if-nez v6, :cond_5

    move-object v6, v1

    goto :goto_3

    :cond_5
    if-eq v6, v1, :cond_4

    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    throw v0

    .line 1048
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 1049
    return-void

    .line 1047
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private writeMmsToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 847
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 848
    invoke-direct {p0, v5}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMmsBody(I)Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    move-result-object v6

    .line 850
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 851
    :cond_0
    return v2

    .line 855
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    move v1, v2

    move v3, v4

    .line 856
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 857
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 862
    if-nez v7, :cond_3

    .line 856
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 865
    :cond_3
    const-string/jumbo v8, "sub_id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 867
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 868
    iget-object v7, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mSubId2phone:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 869
    if-eqz v0, :cond_2

    .line 870
    const-string/jumbo v7, "self_phone"

    invoke-virtual {p1, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    .line 865
    :cond_4
    const-string/jumbo v8, "thread_id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 874
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 875
    invoke-direct {p0, p1, v8, v9}, Lcom/android/providers/telephony/TelephonyBackupAgent;->handleThreadId(Landroid/util/JsonWriter;J)V

    goto :goto_1

    .line 865
    :cond_5
    const-string/jumbo v8, "_id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "sub_cs"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "sub"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v2

    .line 883
    :cond_6
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    .line 888
    :cond_7
    const-string/jumbo v0, "mms_addresses"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeMmsAddresses(Landroid/util/JsonWriter;I)V

    .line 890
    const-string/jumbo v0, "mms_body"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, v6, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 892
    const-string/jumbo v0, "mms_charset"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, v6, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 894
    if-nez v3, :cond_8

    .line 896
    const-string/jumbo v0, "sub_cs"

    invoke-static {p1, p2, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeStringToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 898
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 899
    return v4
.end method

.method private static writeRecipientsToWriter(Landroid/util/JsonWriter;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonWriter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 782
    if-eqz p1, :cond_0

    .line 783
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 784
    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 788
    return-void
.end method

.method private writeSmsToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 716
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 717
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 719
    if-nez v2, :cond_1

    .line 716
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 722
    :cond_1
    const-string/jumbo v3, "sub_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 724
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 725
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mSubId2phone:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 726
    if-eqz v0, :cond_0

    .line 727
    const-string/jumbo v2, "self_phone"

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    .line 722
    :cond_2
    const-string/jumbo v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 731
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 732
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->handleThreadId(Landroid/util/JsonWriter;J)V

    goto :goto_1

    .line 722
    :cond_3
    const-string/jumbo v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 737
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_1

    .line 741
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 743
    return-void
.end method

.method private static writeStringToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1268
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1269
    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 1272
    :cond_0
    return-void
.end method


# virtual methods
.method clearSharedPreferences()V
    .locals 2

    .prologue
    .line 413
    const-string/jumbo v0, "backup_shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 414
    const-string/jumbo v1, "backup_data_bytes"

    .line 413
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 415
    const-string/jumbo v1, "backup_quota_bytes"

    .line 413
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 416
    const-string/jumbo v1, "reset_quota_time"

    .line 413
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 418
    return-void
.end method

.method initUnknownSender()V
    .locals 4

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getOrCreateThreadId(Ljava/util/Set;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mUnknownSenderThreadId:J

    .line 348
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    const-string/jumbo v1, "thread_id"

    iget-wide v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mUnknownSenderThreadId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    const-string/jumbo v1, "thread_id"

    iget-wide v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mUnknownSenderThreadId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    return-void
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1429
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 319
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 325
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getNormalizedNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v2

    .line 326
    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mSubId2phone:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 327
    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    .line 332
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->initUnknownSender()V

    .line 333
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v12, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 354
    const-string/jumbo v0, "backup_shared_prefs"

    invoke-virtual {p0, v0, v8}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 355
    const-string/jumbo v1, "reset_quota_time"

    invoke-interface {v0, v1, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 355
    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->clearSharedPreferences()V

    .line 360
    :cond_0
    const-string/jumbo v1, "backup_data_bytes"

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 361
    const-string/jumbo v1, "backup_quota_bytes"

    invoke-interface {v0, v1, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 360
    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J

    .line 362
    iget-wide v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_1

    .line 363
    iget-wide v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J

    long-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J

    .line 367
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->SMS_PROJECTION:[Ljava/lang/String;

    .line 368
    const-string/jumbo v5, "date ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 367
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 369
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_PROJECTION:[Ljava/lang/String;

    .line 370
    const-string/jumbo v5, "date ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 369
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 372
    if-eqz v7, :cond_2

    .line 373
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 375
    :cond_2
    if-eqz v1, :cond_3

    .line 376
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    move v2, v8

    .line 384
    :goto_0
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 385
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 384
    if-eqz v0, :cond_5

    .line 386
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v7}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMessageDate(Landroid/database/Cursor;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 387
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMessageDate(Landroid/database/Cursor;)J

    move-result-wide v8

    .line 388
    cmp-long v0, v4, v8

    if-gez v0, :cond_6

    .line 390
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%06d_sms_backup"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-direct {p0, p1, v7, v2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->backupAll(Landroid/app/backup/FullBackupDataOutput;Landroid/database/Cursor;Ljava/lang/String;)V

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    .line 397
    :goto_2
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    .line 399
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%06d_sms_backup"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-direct {p0, p1, v7, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->backupAll(Landroid/app/backup/FullBackupDataOutput;Landroid/database/Cursor;Ljava/lang/String;)V

    :cond_5
    move v0, v2

    goto :goto_2

    .line 392
    :cond_6
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 393
    const-string/jumbo v4, "%06d_mms_backup"

    .line 392
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    .line 393
    add-int/lit8 v0, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v5, v8

    .line 392
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->backupAll(Landroid/app/backup/FullBackupDataOutput;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 406
    :catch_0
    move-exception v0

    move-object v6, v7

    :goto_3
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    move-object v7, v6

    move-object v6, v0

    move-object v0, v2

    :goto_4
    if-eqz v1, :cond_7

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    move-object v2, v6

    :cond_8
    :goto_5
    if-eqz v7, :cond_9

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_9
    move-object v1, v2

    :cond_a
    :goto_6
    if-eqz v1, :cond_10

    throw v1

    .line 402
    :cond_b
    :goto_7
    if-eqz v1, :cond_c

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    .line 404
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%06d_mms_backup"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->backupAll(Landroid/app/backup/FullBackupDataOutput;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move v0, v2

    goto :goto_7

    .line 406
    :cond_c
    if-eqz v1, :cond_d

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :cond_d
    move-object v1, v6

    :goto_8
    if-eqz v7, :cond_e

    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :cond_e
    move-object v0, v1

    :cond_f
    :goto_9
    if-eqz v0, :cond_11

    throw v0

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v0

    if-eqz v1, :cond_f

    if-eq v1, v0, :cond_e

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_9

    :catch_3
    move-exception v2

    if-eqz v6, :cond_8

    if-eq v6, v2, :cond_7

    invoke-virtual {v6, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v2, v6

    goto :goto_5

    :catch_4
    move-exception v1

    if-eqz v2, :cond_a

    if-eq v2, v1, :cond_9

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_6

    :cond_10
    throw v0

    .line 408
    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mThreadArchived:Ljava/util/Map;

    .line 409
    return-void

    .line 406
    :catchall_1
    move-exception v0

    move-object v1, v6

    move-object v7, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v1, v6

    move-object v6, v7

    goto :goto_3
.end method

.method public onQuotaExceeded(JJ)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 426
    const-string/jumbo v0, "backup_shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 427
    const-string/jumbo v1, "backup_data_bytes"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    const-string/jumbo v1, "backup_quota_bytes"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 427
    if-eqz v1, :cond_0

    .line 430
    long-to-double v2, p1

    const-string/jumbo v1, "backup_data_bytes"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 431
    const-string/jumbo v1, "backup_quota_bytes"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 430
    sub-long/2addr v4, v6

    long-to-double v4, v4

    .line 431
    const-wide v6, 0x3ff199999999999aL    # 1.1

    .line 430
    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-long p1, v2

    .line 433
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 434
    const-string/jumbo v1, "backup_data_bytes"

    .line 433
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 435
    const-string/jumbo v1, "backup_quota_bytes"

    .line 433
    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 436
    const-string/jumbo v1, "reset_quota_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    add-long/2addr v2, v4

    .line 433
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 438
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1435
    return-void
.end method

.method public onRestoreFinished()V
    .locals 0

    .prologue
    .line 603
    invoke-super {p0}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V

    .line 604
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->startIfFilesExist(Landroid/content/Context;)V

    .line 605
    return-void
.end method

.method putMmsMessagesToJson(Landroid/database/Cursor;Landroid/util/JsonWriter;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 462
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mMaxMsgPerFile:I

    if-ge v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 464
    invoke-direct {p0, p2, p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeMmsToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;)I

    move-result v1

    add-int/2addr v0, v1

    .line 463
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 467
    return v0
.end method

.method putMmsMessagesToProvider(Landroid/util/JsonReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 657
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->readMmsFromReader(Landroid/util/JsonReader;)Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;

    move-result-object v0

    .line 662
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->doesMmsExist(Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 668
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->addMmsMessage(Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V

    goto :goto_0

    .line 670
    :cond_1
    return-void
.end method

.method putSmsMessagesToJson(Landroid/database/Cursor;Landroid/util/JsonWriter;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 475
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mMaxMsgPerFile:I

    if-ge v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 477
    invoke-direct {p0, p2, p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeSmsToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 479
    :cond_0
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 480
    return v0
.end method

.method putSmsMessagesToProvider(Landroid/util/JsonReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 633
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 635
    iget v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mMaxMsgPerFile:I

    .line 636
    new-array v3, v2, [Landroid/content/ContentValues;

    .line 637
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 638
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->readSmsValuesFromReader(Landroid/util/JsonReader;)Landroid/content/ContentValues;

    move-result-object v4

    .line 639
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/TelephonyBackupAgent;->doesSmsExist(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 642
    add-int/lit8 v1, v0, 0x1

    rem-int/2addr v0, v2

    aput-object v4, v3, v0

    .line 643
    rem-int v0, v1, v2

    if-nez v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_1
    move v0, v1

    goto :goto_0

    .line 647
    :cond_2
    rem-int v1, v0, v2

    if-lez v1, :cond_3

    .line 648
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 649
    rem-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 648
    invoke-virtual {v1, v4, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 651
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 652
    return-void
.end method

.method setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    .line 338
    return-void
.end method

.method setSubId(Landroid/util/SparseArray;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mSubId2phone:Landroid/util/SparseArray;

    .line 342
    iput-object p2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    .line 343
    return-void
.end method
