.class public Lcom/android/providers/contacts/ContactsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Projections;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;
    }
.end annotation


# static fields
.field static final COMMON_MIME_TYPES:[Ljava/lang/String;

.field static final DISALLOW_SUB_QUERIES:Z

.field private static sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;


# instance fields
.field private mCachedSqlChecker:Lcom/android/providers/contacts/sqlite/SqlChecker;

.field private mCharArrayBuffer:Landroid/database/CharArrayBuffer;

.field final mCommonMimeTypeIdsCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

.field private mDatabaseCreationTime:J

.field private final mDatabaseOptimizationEnabled:Z

.field private final mIsTestInstance:Z

.field private mMessageDigest:Ljava/security/MessageDigest;

.field private mName:Lcom/android/providers/contacts/NameSplitter$Name;

.field private mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private final mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

.field private mUseStrictPhoneNumberComparison:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/providers/contacts/ContactsDatabaseHelper;)Lcom/android/providers/contacts/sqlite/SqlChecker;
    .locals 1

    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSqlChecker()Lcom/android/providers/contacts/sqlite/SqlChecker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 991
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 998
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 999
    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1000
    const-string/jumbo v1, "vnd.android.cursor.item/im"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1001
    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1002
    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1003
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1004
    const-string/jumbo v1, "vnd.android.cursor.item/sip_address"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1005
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1006
    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1007
    const-string/jumbo v1, "vnd.android.cursor.item/identity"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1008
    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1009
    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1010
    const-string/jumbo v1, "vnd.android.cursor.item/note"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1011
    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1012
    const-string/jumbo v1, "vnd.android.cursor.item/website"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1013
    const-string/jumbo v1, "vnd.android.cursor.item/relation"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1014
    const-string/jumbo v1, "vnd.com.google.cursor.item/contact_misc"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 998
    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->COMMON_MIME_TYPES:[Ljava/lang/String;

    .line 119
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1064
    const/16 v4, 0x4b2

    const/16 v5, 0x2bc

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;IILandroid/database/DatabaseErrorHandler;)V

    .line 995
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCommonMimeTypeIdsCache:Landroid/util/ArrayMap;

    .line 1032
    :try_start_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMessageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    new-array v0, v7, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    .line 1041
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mName:Lcom/android/providers/contacts/NameSplitter$Name;

    .line 1042
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    .line 1065
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1066
    const-string/jumbo v1, "contacts_database_wal_enabled"

    .line 1065
    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_2

    move v0, v7

    .line 1067
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v8

    .line 1070
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 1072
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIdleConnectionTimeout(J)V

    .line 1073
    iput-boolean p3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseOptimizationEnabled:Z

    .line 1074
    iput-boolean p4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mIsTestInstance:Z

    .line 1075
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1076
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 1077
    new-instance v1, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v1}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 1078
    new-instance v1, Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct {v1, p1}, Lcom/android/providers/contacts/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    .line 1080
    const v1, 0x11200ce

    .line 1079
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    .line 1081
    return-void

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "No such algorithm."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v0, v8

    .line 1065
    goto :goto_0
.end method

.method private appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 4304
    const-string/jumbo v0, "lookup.data_id=data._id AND data.raw_contact_id=raw_contacts._id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4305
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4306
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 4307
    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    .line 4308
    :cond_0
    const-string/jumbo v2, " AND ( "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4309
    if-eqz v0, :cond_1

    .line 4310
    const-string/jumbo v2, " lookup.normalized_number = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4311
    invoke-static {p1, p3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4313
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 4314
    const-string/jumbo v0, " OR "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4316
    :cond_2
    if-eqz v1, :cond_3

    .line 4318
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    if-nez v0, :cond_5

    .line 4319
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4320
    const-string/jumbo v1, " lookup.len <= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4321
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4322
    const-string/jumbo v1, " AND substr("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4323
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4324
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4325
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4326
    const-string/jumbo v1, " - lookup.len + 1) = lookup.normalized_number"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4332
    const-string/jumbo v1, " OR ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4333
    const-string/jumbo v1, " lookup.len > "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4334
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4335
    const-string/jumbo v1, " AND substr(lookup.normalized_number,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4336
    const-string/jumbo v1, "lookup.len + 1 - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4337
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4338
    const-string/jumbo v0, ") = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4339
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4340
    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4345
    :cond_3
    :goto_0
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4347
    :cond_4
    return-void

    .line 4342
    :cond_5
    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 4291
    const-string/jumbo v0, "raw_contacts"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4292
    if-eqz p3, :cond_0

    .line 4293
    const-string/jumbo v0, " JOIN view_contacts contacts_view ON (contacts_view._id = raw_contacts.contact_id)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4296
    :cond_0
    const-string/jumbo v0, ", (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE (phone_lookup.min_match = \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4299
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4300
    const-string/jumbo v0, "\')) AS lookup, data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4301
    return-void
.end method

.method private bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V
    .locals 2

    .prologue
    .line 3581
    if-nez p3, :cond_0

    .line 3582
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3586
    :goto_0
    return-void

    .line 3584
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0
.end method

.method private static bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 3573
    if-nez p2, :cond_0

    .line 3574
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3578
    :goto_0
    return-void

    .line 3576
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(CASE WHEN photo_file_id IS NULL THEN (CASE WHEN photo_id IS NULL OR photo_id=0 THEN NULL ELSE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2310
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2310
    const-string/jumbo v1, "/\'||"

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2311
    const-string/jumbo v1, "|| \'/"

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2311
    const-string/jumbo v1, "photo"

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2311
    const-string/jumbo v1, "\'"

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2312
    const-string/jumbo v1, " END) ELSE \'"

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2312
    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2312
    const-string/jumbo v1, "/\'||"

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2313
    const-string/jumbo v1, "photo_file_id"

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2313
    const-string/jumbo v1, " END)"

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2314
    const-string/jumbo v1, " AS "

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(CASE WHEN photo_id IS NULL OR photo_id=0 THEN NULL ELSE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2322
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2322
    const-string/jumbo v1, "/\'||"

    .line 2318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2323
    const-string/jumbo v1, "|| \'/"

    .line 2318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2323
    const-string/jumbo v1, "photo"

    .line 2318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2323
    const-string/jumbo v1, "\'"

    .line 2318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2324
    const-string/jumbo v1, " END)"

    .line 2318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2325
    const-string/jumbo v1, " AS "

    .line 2318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 4400
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4402
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4403
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 4404
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    int-to-long v0, v0

    .line 4410
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4412
    :cond_0
    return-void

    .line 4404
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4405
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4406
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    .line 4408
    :cond_3
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1
.end method

.method public static copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4392
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4393
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4395
    :cond_0
    return-void
.end method

.method private createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    .prologue
    .line 1869
    const-string/jumbo v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1870
    const-string/jumbo v0, "CREATE INDEX name_lookup_index ON name_lookup (normalized_name,name_type, raw_contact_id, data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1877
    const-string/jumbo v0, "DROP INDEX IF EXISTS raw_contact_sort_key1_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1878
    const-string/jumbo v0, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (sort_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1882
    const-string/jumbo v0, "DROP INDEX IF EXISTS raw_contact_sort_key2_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1883
    const-string/jumbo v0, "CREATE INDEX raw_contact_sort_key2_index ON raw_contacts (sort_key_alt);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1887
    if-eqz p2, :cond_0

    .line 1888
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1890
    :cond_0
    return-void
.end method

.method private createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1738
    const-string/jumbo v0, "DROP TRIGGER IF EXISTS raw_contacts_deleted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1739
    const-string/jumbo v0, "CREATE TRIGGER raw_contacts_deleted    BEFORE DELETE ON raw_contacts BEGIN    DELETE FROM data     WHERE raw_contact_id=OLD._id;   DELETE FROM agg_exceptions     WHERE raw_contact_id1=OLD._id        OR raw_contact_id2=OLD._id;   DELETE FROM visible_contacts     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1;   DELETE FROM default_directory     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1;   DELETE FROM contacts     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1768
    const-string/jumbo v0, "DROP TRIGGER IF EXISTS contacts_times_contacted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1769
    const-string/jumbo v0, "DROP TRIGGER IF EXISTS raw_contacts_times_contacted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1773
    const-string/jumbo v0, "DROP TRIGGER IF EXISTS raw_contacts_marked_deleted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1774
    const-string/jumbo v0, "CREATE TRIGGER raw_contacts_marked_deleted    AFTER UPDATE ON raw_contacts BEGIN    UPDATE raw_contacts     SET version=OLD.version+1      WHERE _id=OLD._id       AND NEW.deleted!= OLD.deleted; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1784
    const-string/jumbo v0, "DROP TRIGGER IF EXISTS data_updated;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1785
    const-string/jumbo v0, "CREATE TRIGGER data_updated AFTER UPDATE ON data BEGIN    UPDATE data     SET data_version=OLD.data_version+1      WHERE _id=OLD._id;   UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1795
    const-string/jumbo v0, "DROP TRIGGER IF EXISTS data_deleted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1796
    const-string/jumbo v0, "CREATE TRIGGER data_deleted BEFORE DELETE ON data BEGIN    UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id;   DELETE FROM phone_lookup     WHERE data_id=OLD._id;   DELETE FROM status_updates     WHERE status_update_data_id=OLD._id;   DELETE FROM name_lookup     WHERE data_id=OLD._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1810
    const-string/jumbo v0, "DROP TRIGGER IF EXISTS groups_updated1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1811
    const-string/jumbo v0, "CREATE TRIGGER groups_updated1    AFTER UPDATE ON groups BEGIN    UPDATE groups     SET version=OLD.version+1     WHERE _id=OLD._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1821
    const-string/jumbo v0, " INSERT OR IGNORE INTO default_directory     SELECT contact_id     FROM raw_contacts     WHERE raw_contacts.account_id=(SELECT _id FROM accounts WHERE account_name IS NULL AND account_type IS NULL AND data_set IS NULL);"

    .line 1828
    const-string/jumbo v0, " INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     WHERE NOT EXISTS         (SELECT _id             FROM groups             WHERE raw_contacts.account_id = groups.account_id             AND auto_add != 0);"

    .line 1839
    const-string/jumbo v0, " INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     JOIN data           ON (raw_contacts._id=raw_contact_id)     WHERE mimetype_id=(SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/group_membership\')     AND EXISTS         (SELECT _id             FROM groups                 WHERE raw_contacts.account_id = groups.account_id                 AND auto_add != 0);"

    .line 1857
    const-string/jumbo v0, "DROP TRIGGER IF EXISTS groups_auto_add_updated1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1858
    const-string/jumbo v0, "CREATE TRIGGER groups_auto_add_updated1    AFTER UPDATE OF auto_add ON groups BEGIN    DELETE FROM default_directory; INSERT OR IGNORE INTO default_directory     SELECT contact_id     FROM raw_contacts     WHERE raw_contacts.account_id=(SELECT _id FROM accounts WHERE account_name IS NULL AND account_type IS NULL AND data_set IS NULL); INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     WHERE NOT EXISTS         (SELECT _id             FROM groups             WHERE raw_contacts.account_id = groups.account_id             AND auto_add != 0); INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     JOIN data           ON (raw_contacts._id=raw_contact_id)     WHERE mimetype_id=(SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/group_membership\')     AND EXISTS         (SELECT _id             FROM groups                 WHERE raw_contacts.account_id = groups.account_id                 AND auto_add != 0); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1866
    return-void
.end method

.method private createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .prologue
    .line 1893
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_contacts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1894
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_data;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1895
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_raw_contacts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1896
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_raw_entities;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1897
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_entities;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1898
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_data_usage_stat;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1899
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_data_usage;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1900
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_stream_items;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1901
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_metadata_sync_state;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1902
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_metadata_sync;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1905
    const-string/jumbo v0, "is_primary, is_super_primary, data_version, data.package_id,package AS res_package,data.mimetype_id,mimetype AS mimetype, is_read_only, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, carrier_presence, data_sync1, data_sync2, data_sync3, data_sync4"

    .line 1935
    const-string/jumbo v1, "raw_contacts.account_id,accounts.account_name AS account_name,accounts.account_type AS account_type,accounts.data_set AS data_set,(CASE WHEN accounts.data_set IS NULL THEN accounts.account_type ELSE accounts.account_type||\'/\'||accounts.data_set END) AS account_type_and_data_set,raw_contacts.sourceid AS sourceid,raw_contacts.backup_id AS backup_id,raw_contacts.version AS version,raw_contacts.dirty AS dirty,raw_contacts.sync1 AS sync1,raw_contacts.sync2 AS sync2,raw_contacts.sync3 AS sync3,raw_contacts.sync4 AS sync4"

    .line 1954
    const-string/jumbo v2, "has_phone_number, name_raw_contact_id, lookup, photo_id, photo_file_id, CAST(EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS INTEGER) AS in_visible_group, CAST(EXISTS (SELECT _id FROM default_directory WHERE contacts._id=default_directory._id) AS INTEGER) AS in_default_directory, status_update_id, contacts.contact_last_updated_timestamp"

    .line 1967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contacts.custom_ringtone AS custom_ringtone,contacts.send_to_voicemail AS send_to_voicemail,contacts.x_last_time_contacted AS x_last_time_contacted,contacts.x_times_contacted AS x_times_contacted,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1977
    const-string/jumbo v4, "contacts.x_last_time_contacted"

    invoke-static {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->getLastTimeUsedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1978
    const-string/jumbo v4, " AS "

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1978
    const-string/jumbo v4, "last_time_contacted"

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1978
    const-string/jumbo v4, ","

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1979
    const-string/jumbo v4, "contacts.x_times_contacted"

    invoke-static {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->getTimesUsedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1980
    const-string/jumbo v4, " AS "

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1980
    const-string/jumbo v4, "times_contacted"

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1980
    const-string/jumbo v4, ","

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1982
    const-string/jumbo v4, "contacts.starred"

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1983
    const-string/jumbo v4, " AS "

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1983
    const-string/jumbo v4, "starred"

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1983
    const-string/jumbo v4, ","

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1984
    const-string/jumbo v4, "contacts.pinned"

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1985
    const-string/jumbo v4, " AS "

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1985
    const-string/jumbo v4, "pinned"

    .line 1967
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1988
    const-string/jumbo v4, "name_raw_contact.display_name_source AS display_name_source, name_raw_contact.display_name AS display_name, name_raw_contact.display_name_alt AS display_name_alt, name_raw_contact.phonetic_name AS phonetic_name, name_raw_contact.phonetic_name_style AS phonetic_name_style, name_raw_contact.sort_key AS sort_key, name_raw_contact.phonebook_label AS phonebook_label, name_raw_contact.phonebook_bucket AS phonebook_bucket, name_raw_contact.sort_key_alt AS sort_key_alt, name_raw_contact.phonebook_label_alt AS phonebook_label_alt, name_raw_contact.phonebook_bucket_alt AS phonebook_bucket_alt"

    .line 2011
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SELECT data._id AS _id,hash_id, raw_contact_id, raw_contacts.contact_id AS contact_id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2016
    const-string/jumbo v6, ", "

    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2017
    const-string/jumbo v6, ", "

    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2018
    const-string/jumbo v5, ", "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2019
    const-string/jumbo v5, ", "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2020
    const-string/jumbo v5, ", "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2021
    const-string/jumbo v5, "raw_contacts.contact_id"

    .line 2022
    const-string/jumbo v6, "photo_uri"

    .line 2021
    invoke-static {v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2022
    const-string/jumbo v5, ", "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2023
    const-string/jumbo v5, "raw_contacts.contact_id"

    .line 2024
    const-string/jumbo v6, "photo_thumb_uri"

    .line 2023
    invoke-static {v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2024
    const-string/jumbo v5, ", "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2025
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v5

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2025
    const-string/jumbo v5, " AS "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2025
    const-string/jumbo v5, "raw_contact_is_user_profile"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2025
    const-string/jumbo v5, ", "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2026
    const-string/jumbo v5, "groups"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2026
    const-string/jumbo v5, "."

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2026
    const-string/jumbo v5, "sourceid"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2026
    const-string/jumbo v5, " AS "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2026
    const-string/jumbo v5, "group_sourceid"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2027
    const-string/jumbo v5, " FROM "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2027
    const-string/jumbo v5, "data"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2028
    const-string/jumbo v5, " JOIN "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2028
    const-string/jumbo v5, "mimetypes"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2028
    const-string/jumbo v5, " ON ("

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2029
    const-string/jumbo v5, "data.mimetype_id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2029
    const-string/jumbo v5, "="

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2029
    const-string/jumbo v5, "mimetypes._id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2029
    const-string/jumbo v5, ")"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2030
    const-string/jumbo v5, " JOIN "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2030
    const-string/jumbo v5, "raw_contacts"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2030
    const-string/jumbo v5, " ON ("

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2031
    const-string/jumbo v5, "data.raw_contact_id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2031
    const-string/jumbo v5, "="

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2031
    const-string/jumbo v5, "raw_contacts._id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2031
    const-string/jumbo v5, ")"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2032
    const-string/jumbo v5, " JOIN "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2032
    const-string/jumbo v5, "accounts"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2032
    const-string/jumbo v5, " ON ("

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2033
    const-string/jumbo v5, "raw_contacts.account_id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2033
    const-string/jumbo v5, "="

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2033
    const-string/jumbo v5, "accounts._id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2034
    const-string/jumbo v5, ")"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2035
    const-string/jumbo v5, " JOIN "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2035
    const-string/jumbo v5, "contacts"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2035
    const-string/jumbo v5, " ON ("

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2036
    const-string/jumbo v5, "raw_contacts.contact_id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2036
    const-string/jumbo v5, "="

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2036
    const-string/jumbo v5, "contacts._id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2036
    const-string/jumbo v5, ")"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2037
    const-string/jumbo v5, " JOIN "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2037
    const-string/jumbo v5, "raw_contacts"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2037
    const-string/jumbo v5, " AS name_raw_contact ON("

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2038
    const-string/jumbo v5, "name_raw_contact_id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2038
    const-string/jumbo v5, "=name_raw_contact."

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2038
    const-string/jumbo v5, "_id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2038
    const-string/jumbo v5, ")"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2039
    const-string/jumbo v5, " LEFT OUTER JOIN "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2039
    const-string/jumbo v5, "packages"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2039
    const-string/jumbo v5, " ON ("

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2040
    const-string/jumbo v5, "data.package_id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2040
    const-string/jumbo v5, "="

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2040
    const-string/jumbo v5, "packages._id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2040
    const-string/jumbo v5, ")"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2041
    const-string/jumbo v5, " LEFT OUTER JOIN "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2041
    const-string/jumbo v5, "groups"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2041
    const-string/jumbo v5, " ON ("

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2042
    const-string/jumbo v5, "mimetypes.mimetype"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2042
    const-string/jumbo v5, "=\'"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2042
    const-string/jumbo v5, "vnd.android.cursor.item/group_membership"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2043
    const-string/jumbo v5, "\' AND "

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2043
    const-string/jumbo v5, "groups._id"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2043
    const-string/jumbo v5, "="

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2044
    const-string/jumbo v5, "data"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2044
    const-string/jumbo v5, "."

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2044
    const-string/jumbo v5, "data1"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2044
    const-string/jumbo v5, ")"

    .line 2011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2046
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CREATE VIEW view_data AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "custom_ringtone,send_to_voicemail,x_last_time_contacted,"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2052
    const-string/jumbo v5, "x_last_time_contacted"

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->getLastTimeUsedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2053
    const-string/jumbo v5, " AS "

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2053
    const-string/jumbo v5, "last_time_contacted"

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2053
    const-string/jumbo v5, ","

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2054
    const-string/jumbo v5, "x_times_contacted"

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2054
    const-string/jumbo v5, ","

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2055
    const-string/jumbo v5, "x_times_contacted"

    invoke-static {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->getTimesUsedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2056
    const-string/jumbo v5, " AS "

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2056
    const-string/jumbo v5, "times_contacted"

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2056
    const-string/jumbo v5, ","

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2057
    const-string/jumbo v5, "starred"

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2057
    const-string/jumbo v5, ","

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2058
    const-string/jumbo v5, "pinned"

    .line 2049
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2060
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SELECT raw_contacts._id AS _id,contact_id, aggregation_mode, raw_contact_is_read_only, deleted, raw_contacts.metadata_dirty, display_name_source, display_name, display_name_alt, phonetic_name, phonetic_name_style, sort_key, phonebook_label, phonebook_bucket, sort_key_alt, phonebook_label_alt, phonebook_bucket_alt, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2078
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v6

    .line 2060
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2078
    const-string/jumbo v6, " AS "

    .line 2060
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2078
    const-string/jumbo v6, "raw_contact_is_user_profile"

    .line 2060
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2078
    const-string/jumbo v6, ", "

    .line 2060
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2079
    const-string/jumbo v5, ", "

    .line 2060
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2081
    const-string/jumbo v5, " FROM "

    .line 2060
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2081
    const-string/jumbo v5, "raw_contacts"

    .line 2060
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2082
    const-string/jumbo v5, " JOIN "

    .line 2060
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2082
    const-string/jumbo v5, "accounts"

    .line 2060
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2082
    const-string/jumbo v5, " ON ("

    .line 2060
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2083
    const-string/jumbo v5, "raw_contacts.account_id"

    .line 2060
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2083
    const-string/jumbo v5, "="

    .line 2060
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2083
    const-string/jumbo v5, "accounts._id"

    .line 2060
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2084
    const-string/jumbo v5, ")"

    .line 2060
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2086
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CREATE VIEW view_raw_contacts AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2089
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contacts.custom_ringtone AS custom_ringtone, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2091
    const-string/jumbo v4, ", "

    .line 2089
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2092
    const-string/jumbo v3, ", "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2094
    const-string/jumbo v3, "contacts.x_last_time_contacted"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2095
    const-string/jumbo v3, " AS "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2095
    const-string/jumbo v3, "x_last_time_contacted"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2095
    const-string/jumbo v3, ", "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2096
    const-string/jumbo v3, "contacts.x_last_time_contacted"

    invoke-static {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->getLastTimeUsedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2097
    const-string/jumbo v3, " AS "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2097
    const-string/jumbo v3, "last_time_contacted"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2097
    const-string/jumbo v3, ", "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2099
    const-string/jumbo v3, "contacts.send_to_voicemail"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2100
    const-string/jumbo v3, " AS "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2100
    const-string/jumbo v3, "send_to_voicemail"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2100
    const-string/jumbo v3, ", "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2101
    const-string/jumbo v3, "contacts.starred"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2102
    const-string/jumbo v3, " AS "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2102
    const-string/jumbo v3, "starred"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2102
    const-string/jumbo v3, ", "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2103
    const-string/jumbo v3, "contacts.pinned"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2104
    const-string/jumbo v3, " AS "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2104
    const-string/jumbo v3, "pinned"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2104
    const-string/jumbo v3, ", "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2106
    const-string/jumbo v3, "contacts.x_times_contacted"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2107
    const-string/jumbo v3, " AS "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2107
    const-string/jumbo v3, "x_times_contacted"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2107
    const-string/jumbo v3, ", "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2108
    const-string/jumbo v3, "contacts.x_times_contacted"

    invoke-static {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->getTimesUsedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2109
    const-string/jumbo v3, " AS "

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2109
    const-string/jumbo v3, "times_contacted"

    .line 2089
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELECT contacts._id AS _id,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2113
    const-string/jumbo v4, ", "

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2114
    const-string/jumbo v4, "account_name"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2114
    const-string/jumbo v4, ", "

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2115
    const-string/jumbo v4, "account_type"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2115
    const-string/jumbo v4, ", "

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2116
    const-string/jumbo v4, "contacts._id"

    const-string/jumbo v5, "photo_uri"

    invoke-static {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2116
    const-string/jumbo v4, ", "

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2117
    const-string/jumbo v4, "contacts._id"

    .line 2118
    const-string/jumbo v5, "photo_thumb_uri"

    .line 2117
    invoke-static {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2118
    const-string/jumbo v4, ", "

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2119
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v4

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2119
    const-string/jumbo v4, " AS "

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2119
    const-string/jumbo v4, "is_user_profile"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2120
    const-string/jumbo v4, " FROM "

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2120
    const-string/jumbo v4, "contacts"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2121
    const-string/jumbo v4, " JOIN "

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2121
    const-string/jumbo v4, "raw_contacts"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2121
    const-string/jumbo v4, " AS name_raw_contact ON("

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2122
    const-string/jumbo v4, "name_raw_contact_id"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2122
    const-string/jumbo v4, "=name_raw_contact."

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2122
    const-string/jumbo v4, "_id"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2122
    const-string/jumbo v4, ")"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2123
    const-string/jumbo v4, " JOIN "

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2123
    const-string/jumbo v4, "accounts"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2123
    const-string/jumbo v4, " AS name_accounts ON("

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2124
    const-string/jumbo v4, "name_raw_contact."

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2124
    const-string/jumbo v4, "account_id"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2124
    const-string/jumbo v4, "=name_accounts."

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2125
    const-string/jumbo v4, "_id"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2125
    const-string/jumbo v4, ")"

    .line 2111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CREATE VIEW view_contacts AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELECT contact_id, raw_contacts.deleted AS deleted,raw_contacts.metadata_dirty, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2133
    const-string/jumbo v4, ", "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2134
    const-string/jumbo v4, ", "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2135
    const-string/jumbo v4, "data_sync1"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2135
    const-string/jumbo v4, ", "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2136
    const-string/jumbo v4, "data_sync2"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2136
    const-string/jumbo v4, ", "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2137
    const-string/jumbo v4, "data_sync3"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2137
    const-string/jumbo v4, ", "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2138
    const-string/jumbo v4, "data_sync4"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2138
    const-string/jumbo v4, ", "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2139
    const-string/jumbo v4, "raw_contacts._id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2139
    const-string/jumbo v4, " AS "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2139
    const-string/jumbo v4, "_id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2139
    const-string/jumbo v4, ", "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2140
    const-string/jumbo v4, "data._id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2140
    const-string/jumbo v4, " AS "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2140
    const-string/jumbo v4, "data_id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2140
    const-string/jumbo v4, ","

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2141
    const-string/jumbo v4, "raw_contacts.starred"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2141
    const-string/jumbo v4, " AS "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2141
    const-string/jumbo v4, "starred"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2141
    const-string/jumbo v4, ","

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2142
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v4

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2142
    const-string/jumbo v4, " AS "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2142
    const-string/jumbo v4, "raw_contact_is_user_profile"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2142
    const-string/jumbo v4, ","

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2143
    const-string/jumbo v4, "groups"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2143
    const-string/jumbo v4, "."

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2143
    const-string/jumbo v4, "sourceid"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2143
    const-string/jumbo v4, " AS "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2143
    const-string/jumbo v4, "group_sourceid"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2144
    const-string/jumbo v4, " FROM "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2144
    const-string/jumbo v4, "raw_contacts"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2145
    const-string/jumbo v4, " JOIN "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2145
    const-string/jumbo v4, "accounts"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2145
    const-string/jumbo v4, " ON ("

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2146
    const-string/jumbo v4, "raw_contacts.account_id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2146
    const-string/jumbo v4, "="

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2146
    const-string/jumbo v4, "accounts._id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2147
    const-string/jumbo v4, ")"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2148
    const-string/jumbo v4, " LEFT OUTER JOIN "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2148
    const-string/jumbo v4, "data"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2148
    const-string/jumbo v4, " ON ("

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2149
    const-string/jumbo v4, "data.raw_contact_id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2149
    const-string/jumbo v4, "="

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2149
    const-string/jumbo v4, "raw_contacts._id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2149
    const-string/jumbo v4, ")"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2150
    const-string/jumbo v4, " LEFT OUTER JOIN "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2150
    const-string/jumbo v4, "packages"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2150
    const-string/jumbo v4, " ON ("

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2151
    const-string/jumbo v4, "data.package_id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2151
    const-string/jumbo v4, "="

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2151
    const-string/jumbo v4, "packages._id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2151
    const-string/jumbo v4, ")"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2152
    const-string/jumbo v4, " LEFT OUTER JOIN "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2152
    const-string/jumbo v4, "mimetypes"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2152
    const-string/jumbo v4, " ON ("

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2153
    const-string/jumbo v4, "data.mimetype_id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2153
    const-string/jumbo v4, "="

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2153
    const-string/jumbo v4, "mimetypes._id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2153
    const-string/jumbo v4, ")"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2154
    const-string/jumbo v4, " LEFT OUTER JOIN "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2154
    const-string/jumbo v4, "groups"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2154
    const-string/jumbo v4, " ON ("

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2155
    const-string/jumbo v4, "mimetypes.mimetype"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2155
    const-string/jumbo v4, "=\'"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2155
    const-string/jumbo v4, "vnd.android.cursor.item/group_membership"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2156
    const-string/jumbo v4, "\' AND "

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2156
    const-string/jumbo v4, "groups._id"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2156
    const-string/jumbo v4, "="

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2157
    const-string/jumbo v4, "data"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2157
    const-string/jumbo v4, "."

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2157
    const-string/jumbo v4, "data1"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2157
    const-string/jumbo v4, ")"

    .line 2129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CREATE VIEW view_raw_entities AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELECT raw_contacts.contact_id AS _id, raw_contacts.contact_id AS contact_id, raw_contacts.deleted AS deleted,raw_contacts.metadata_dirty, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2167
    const-string/jumbo v3, ", "

    .line 2162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2168
    const-string/jumbo v1, ", "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2169
    const-string/jumbo v1, ", "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2170
    const-string/jumbo v1, "raw_contacts.contact_id"

    .line 2171
    const-string/jumbo v2, "photo_uri"

    .line 2170
    invoke-static {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2171
    const-string/jumbo v1, ", "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2172
    const-string/jumbo v1, "raw_contacts.contact_id"

    .line 2173
    const-string/jumbo v2, "photo_thumb_uri"

    .line 2172
    invoke-static {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2173
    const-string/jumbo v1, ", "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2174
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v1

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2174
    const-string/jumbo v1, " AS "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2174
    const-string/jumbo v1, "is_user_profile"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2174
    const-string/jumbo v1, ", "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2175
    const-string/jumbo v1, "data_sync1"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2175
    const-string/jumbo v1, ", "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2176
    const-string/jumbo v1, "data_sync2"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2176
    const-string/jumbo v1, ", "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2177
    const-string/jumbo v1, "data_sync3"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2177
    const-string/jumbo v1, ", "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2178
    const-string/jumbo v1, "data_sync4"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2178
    const-string/jumbo v1, ", "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2179
    const-string/jumbo v1, "raw_contacts._id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2179
    const-string/jumbo v1, " AS "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2179
    const-string/jumbo v1, "raw_contact_id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2179
    const-string/jumbo v1, ", "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2180
    const-string/jumbo v1, "data._id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2180
    const-string/jumbo v1, " AS "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2180
    const-string/jumbo v1, "data_id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2180
    const-string/jumbo v1, ","

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2181
    const-string/jumbo v1, "groups"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2181
    const-string/jumbo v1, "."

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2181
    const-string/jumbo v1, "sourceid"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2181
    const-string/jumbo v1, " AS "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2181
    const-string/jumbo v1, "group_sourceid"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2182
    const-string/jumbo v1, " FROM "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2182
    const-string/jumbo v1, "raw_contacts"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2183
    const-string/jumbo v1, " JOIN "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2183
    const-string/jumbo v1, "accounts"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2183
    const-string/jumbo v1, " ON ("

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2184
    const-string/jumbo v1, "raw_contacts.account_id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2184
    const-string/jumbo v1, "="

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2184
    const-string/jumbo v1, "accounts._id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2185
    const-string/jumbo v1, ")"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2186
    const-string/jumbo v1, " JOIN "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2186
    const-string/jumbo v1, "contacts"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2186
    const-string/jumbo v1, " ON ("

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2187
    const-string/jumbo v1, "raw_contacts.contact_id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2187
    const-string/jumbo v1, "="

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2187
    const-string/jumbo v1, "contacts._id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2187
    const-string/jumbo v1, ")"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2188
    const-string/jumbo v1, " JOIN "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2188
    const-string/jumbo v1, "raw_contacts"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2188
    const-string/jumbo v1, " AS name_raw_contact ON("

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2189
    const-string/jumbo v1, "name_raw_contact_id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2189
    const-string/jumbo v1, "=name_raw_contact."

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2189
    const-string/jumbo v1, "_id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2189
    const-string/jumbo v1, ")"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2190
    const-string/jumbo v1, " LEFT OUTER JOIN "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2190
    const-string/jumbo v1, "data"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2190
    const-string/jumbo v1, " ON ("

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2191
    const-string/jumbo v1, "data.raw_contact_id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2191
    const-string/jumbo v1, "="

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2191
    const-string/jumbo v1, "raw_contacts._id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2191
    const-string/jumbo v1, ")"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2192
    const-string/jumbo v1, " LEFT OUTER JOIN "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2192
    const-string/jumbo v1, "packages"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2192
    const-string/jumbo v1, " ON ("

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2193
    const-string/jumbo v1, "data.package_id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2193
    const-string/jumbo v1, "="

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2193
    const-string/jumbo v1, "packages._id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2193
    const-string/jumbo v1, ")"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2194
    const-string/jumbo v1, " LEFT OUTER JOIN "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2194
    const-string/jumbo v1, "mimetypes"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2194
    const-string/jumbo v1, " ON ("

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2195
    const-string/jumbo v1, "data.mimetype_id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2195
    const-string/jumbo v1, "="

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2195
    const-string/jumbo v1, "mimetypes._id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2195
    const-string/jumbo v1, ")"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2196
    const-string/jumbo v1, " LEFT OUTER JOIN "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2196
    const-string/jumbo v1, "groups"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2196
    const-string/jumbo v1, " ON ("

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2197
    const-string/jumbo v1, "mimetypes.mimetype"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2197
    const-string/jumbo v1, "=\'"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2197
    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2198
    const-string/jumbo v1, "\' AND "

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2198
    const-string/jumbo v1, "groups._id"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2198
    const-string/jumbo v1, "="

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2199
    const-string/jumbo v1, "data"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2199
    const-string/jumbo v1, "."

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2199
    const-string/jumbo v1, "data1"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2199
    const-string/jumbo v1, ")"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE VIEW view_entities AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT stat_id, data_id, usage_type, x_times_used, x_last_time_used,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2211
    const-string/jumbo v1, "x_times_used"

    invoke-static {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->getTimesUsedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2212
    const-string/jumbo v1, " AS "

    .line 2205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2212
    const-string/jumbo v1, "times_used"

    .line 2205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2212
    const-string/jumbo v1, ","

    .line 2205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2213
    const-string/jumbo v1, "x_last_time_used"

    invoke-static {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->getLastTimeUsedExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2214
    const-string/jumbo v1, " AS "

    .line 2205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2214
    const-string/jumbo v1, "last_time_used"

    .line 2205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2215
    const-string/jumbo v1, " FROM "

    .line 2205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2215
    const-string/jumbo v1, "data_usage_stat"

    .line 2205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE VIEW view_data_usage AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2221
    const-string/jumbo v0, "SELECT data_usage_stat.stat_id AS stat_id, data_id, raw_contacts.contact_id AS contact_id, mimetypes.mimetype AS mimetype, usage_type, x_times_used, x_last_time_used, times_used, last_time_used FROM view_data_usage AS data_usage_stat JOIN data ON (data._id=data_usage_stat.data_id) JOIN raw_contacts ON (raw_contacts._id=data.raw_contact_id ) JOIN mimetypes ON (mimetypes._id=data.mimetype_id)"

    .line 2240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE VIEW view_data_usage_stat AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2242
    const-string/jumbo v0, "SELECT stream_items._id, contacts._id AS contact_id, contacts.lookup AS contact_lookup, accounts.account_name, accounts.account_type, accounts.data_set, stream_items.raw_contact_id as raw_contact_id, raw_contacts.sourceid as raw_contact_source_id, stream_items.res_package, stream_items.icon, stream_items.label, stream_items.text, stream_items.timestamp, stream_items.comments, stream_items.stream_item_sync1, stream_items.stream_item_sync2, stream_items.stream_item_sync3, stream_items.stream_item_sync4 FROM stream_items JOIN raw_contacts ON (stream_items.raw_contact_id=raw_contacts._id) JOIN accounts ON (raw_contacts.account_id=accounts._id) JOIN contacts ON (raw_contacts.contact_id=contacts._id)"

    .line 2274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE VIEW view_stream_items AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2276
    const-string/jumbo v0, "SELECT metadata_sync._id, raw_contact_backup_id, account_name, account_type, data_set, data, deleted FROM metadata_sync JOIN accounts ON (metadata_sync.account_id=accounts._id)"

    .line 2289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE VIEW view_metadata_sync AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2291
    const-string/jumbo v0, "SELECT metadata_sync_state._id, account_name, account_type, data_set, state FROM metadata_sync_state JOIN accounts ON (metadata_sync_state.account_id=accounts._id)"

    .line 2302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE VIEW view_metadata_sync_state AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2303
    return-void
.end method

.method private createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 1694
    const-string/jumbo v0, "CREATE TABLE directories(_id INTEGER PRIMARY KEY AUTOINCREMENT,packageName TEXT NOT NULL,authority TEXT NOT NULL,typeResourceId INTEGER,typeResourceName TEXT,accountType TEXT,accountName TEXT,displayName TEXT, exportSupport INTEGER NOT NULL DEFAULT 0,shortcutSupport INTEGER NOT NULL DEFAULT 0,photoSupport INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1712
    const-string/jumbo v0, "directoryScanComplete"

    const-string/jumbo v1, "0"

    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/util/PropertyUtils;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    return-void
.end method

.method private createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 2338
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_groups;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2341
    const-string/jumbo v0, "groups.account_id AS account_id,accounts.account_name AS account_name,accounts.account_type AS account_type,accounts.data_set AS data_set,(CASE WHEN accounts.data_set IS NULL THEN accounts.account_type ELSE accounts.account_type||\'/\'||accounts.data_set END) AS account_type_and_data_set,sourceid,version,dirty,title,title_res,notes,system_id,deleted,group_visible,should_sync,auto_add,favorites,group_is_read_only,sync1,sync2,sync3,sync4,package AS res_package"

    .line 2369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT groups._id AS _id,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2372
    const-string/jumbo v1, " FROM "

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2372
    const-string/jumbo v1, "groups"

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2373
    const-string/jumbo v1, " JOIN "

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2373
    const-string/jumbo v1, "accounts"

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2373
    const-string/jumbo v1, " ON ("

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2374
    const-string/jumbo v1, "groups.account_id"

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2374
    const-string/jumbo v1, "="

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2374
    const-string/jumbo v1, "accounts._id"

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2374
    const-string/jumbo v1, ")"

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2375
    const-string/jumbo v1, " LEFT OUTER JOIN "

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2375
    const-string/jumbo v1, "packages"

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2375
    const-string/jumbo v1, " ON ("

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2376
    const-string/jumbo v1, "groups.package_id"

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2376
    const-string/jumbo v1, "="

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2376
    const-string/jumbo v1, "packages._id"

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2376
    const-string/jumbo v1, ")"

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE VIEW view_groups AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2379
    return-void
.end method

.method private createPresenceTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1151
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS presence (presence_data_id INTEGER PRIMARY KEY REFERENCES data(_id),protocol INTEGER NOT NULL,custom_protocol TEXT,im_handle TEXT,im_account TEXT,presence_contact_id INTEGER REFERENCES contacts(_id),presence_raw_contact_id INTEGER REFERENCES raw_contacts(_id),mode INTEGER,chat_capability INTEGER NOT NULL DEFAULT 0,UNIQUE(protocol, custom_protocol, im_handle, im_account));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1165
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS presenceIndex ON presence (presence_raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS presenceIndex2 ON presence (presence_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1170
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS agg_presence (presence_contact_id INTEGER PRIMARY KEY REFERENCES contacts(_id),mode INTEGER,chat_capability INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1178
    const-string/jumbo v0, "CREATE TRIGGER IF NOT EXISTS presence_deleted BEFORE DELETE ON presence BEGIN    DELETE FROM agg_presence     WHERE presence_contact_id = (SELECT presence_contact_id FROM presence WHERE presence_raw_contact_id=OLD.presence_raw_contact_id AND NOT EXISTS(SELECT presence_raw_contact_id FROM presence WHERE presence_contact_id=OLD.presence_contact_id AND presence_raw_contact_id!=OLD.presence_raw_contact_id)); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1197
    const-string/jumbo v0, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id;"

    .line 1218
    const-string/jumbo v0, "CREATE TRIGGER IF NOT EXISTS presence_inserted AFTER INSERT ON presence BEGIN INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1224
    const-string/jumbo v0, "CREATE TRIGGER IF NOT EXISTS presence_updated AFTER UPDATE ON presence BEGIN INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1229
    return-void
.end method

.method private getDisplayNameSourceForMimeTypeId(I)I
    .locals 4

    .prologue
    .line 3938
    int-to-long v2, p1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCommonMimeTypeIdsCache:Landroid/util/ArrayMap;

    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 3939
    const/16 v0, 0x28

    return v0

    .line 3941
    :cond_0
    int-to-long v2, p1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCommonMimeTypeIdsCache:Landroid/util/ArrayMap;

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 3942
    const/16 v0, 0xa

    return v0

    .line 3944
    :cond_1
    int-to-long v2, p1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCommonMimeTypeIdsCache:Landroid/util/ArrayMap;

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 3945
    const/16 v0, 0x14

    return v0

    .line 3947
    :cond_2
    int-to-long v2, p1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCommonMimeTypeIdsCache:Landroid/util/ArrayMap;

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 3948
    const/16 v0, 0x1e

    return v0

    .line 3950
    :cond_3
    int-to-long v2, p1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCommonMimeTypeIdsCache:Landroid/util/ArrayMap;

    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    .line 3951
    const/16 v0, 0x23

    return v0

    .line 3953
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 5

    .prologue
    const-class v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    monitor-enter v1

    .line 1046
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v2, "contacts2.db"

    const/4 v3, 0x1

    .line 1048
    const/4 v4, 0x0

    .line 1047
    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 1050
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNewInstanceForTest(Landroid/content/Context;Ljava/lang/String;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 3
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .prologue
    .line 1058
    new-instance v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method private getSqlChecker()Lcom/android/providers/contacts/sqlite/SqlChecker;
    .locals 2

    .prologue
    .line 5016
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCachedSqlChecker:Lcom/android/providers/contacts/sqlite/SqlChecker;

    if-eqz v0, :cond_0

    .line 5017
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCachedSqlChecker:Lcom/android/providers/contacts/sqlite/SqlChecker;

    return-object v0

    .line 5019
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5034
    new-instance v1, Lcom/android/providers/contacts/sqlite/SqlChecker;

    invoke-direct {v1, v0}, Lcom/android/providers/contacts/sqlite/SqlChecker;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCachedSqlChecker:Lcom/android/providers/contacts/sqlite/SqlChecker;

    .line 5036
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCachedSqlChecker:Lcom/android/providers/contacts/sqlite/SqlChecker;

    return-object v0
.end method

.method private insertEmailLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 2882
    const-string/jumbo v0, "vnd.android.cursor.item/email_v2"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2883
    const-string/jumbo v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;->COLUMNS:[Ljava/lang/String;

    .line 2884
    const-string/jumbo v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 2883
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2887
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2888
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2889
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2890
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2891
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2893
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p2

    .line 2892
    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2895
    :catchall_0
    move-exception v0

    .line 2896
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2895
    throw v0

    .line 2896
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2898
    return-void
.end method

.method private insertMimeType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 3537
    const-string/jumbo v0, "INSERT INTO mimetypes(mimetype) VALUES (?)"

    .line 3540
    const-string/jumbo v0, "INSERT INTO mimetypes(mimetype) VALUES (?)"

    invoke-static {p1, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertWithOneArgAndReturnId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 3541
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 3542
    return-wide v0

    .line 3544
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2834
    const-string/jumbo v0, "DELETE FROM name_lookup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2837
    const-string/jumbo v0, "INSERT OR IGNORE INTO name_lookup(raw_contact_id,data_id,name_type,normalized_name) VALUES (?,?,?,?)"

    .line 2836
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2845
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertStructuredNameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V

    .line 2846
    invoke-direct {p0, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertEmailLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V

    .line 2847
    invoke-direct {p0, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNicknameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2849
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2851
    return-void

    .line 2848
    :catchall_0
    move-exception v0

    .line 2849
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2848
    throw v0
.end method

.method private insertNicknameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 2904
    const-string/jumbo v0, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2905
    const-string/jumbo v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;->COLUMNS:[Ljava/lang/String;

    .line 2906
    const-string/jumbo v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 2905
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2909
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2910
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2911
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2912
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2914
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p2

    .line 2913
    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2916
    :catchall_0
    move-exception v0

    .line 2917
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2916
    throw v0

    .line 2917
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2919
    return-void
.end method

.method private insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 4

    .prologue
    .line 2940
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2941
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2942
    int-to-long v0, p6

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2943
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2944
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 2945
    return-void
.end method

.method private insertStructuredNameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 2857
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v8

    .line 2858
    new-instance v9, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;

    .line 2859
    new-instance v0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2858
    invoke-direct {v9, p0, v8, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;Landroid/database/sqlite/SQLiteStatement;)V

    .line 2860
    const-string/jumbo v0, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    .line 2861
    const-string/jumbo v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameQuery;->COLUMNS:[Ljava/lang/String;

    .line 2862
    const-string/jumbo v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 2861
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2865
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2866
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2867
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2868
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2869
    invoke-virtual {v8, v6}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 2870
    invoke-virtual {v8, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v7

    move-object v1, v9

    .line 2871
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2873
    :catchall_0
    move-exception v0

    .line 2874
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2873
    throw v0

    .line 2874
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2876
    return-void
.end method

.method static insertWithOneArgAndReturnId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 3848
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 3850
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v1, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3852
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 3857
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3852
    return-wide v2

    .line 3853
    :catch_0
    move-exception v0

    .line 3854
    const-wide/16 v2, -0x1

    .line 3857
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3854
    return-wide v2

    .line 3856
    :catchall_0
    move-exception v0

    .line 3857
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3856
    throw v0
.end method

.method public static isInProjection([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 4440
    if-nez p0, :cond_0

    .line 4441
    return v4

    .line 4443
    :cond_0
    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p0, v0

    .line 4444
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4445
    return v4

    .line 4443
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4448
    :cond_2
    return v1
.end method

.method public static varargs isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 4455
    if-nez p0, :cond_0

    .line 4456
    return v7

    .line 4460
    :cond_0
    array-length v0, p1

    if-ne v0, v7, :cond_1

    .line 4461
    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4463
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, p0, v2

    .line 4464
    array-length v5, p1

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_3

    aget-object v6, p1, v0

    .line 4465
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4466
    return v7

    .line 4464
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4463
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 4470
    :cond_4
    return v1
.end method

.method private static isUpgradeRequired(III)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2727
    if-ge p0, p2, :cond_0

    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 4357
    const-string/jumbo v0, "DELETE FROM nickname_lookup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4359
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4360
    const v1, 0x1070008

    .line 4359
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 4361
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_1

    .line 4362
    :cond_0
    return-void

    .line 4365
    :cond_1
    const-string/jumbo v0, "INSERT INTO nickname_lookup(name,cluster) VALUES (?,?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    move v3, v2

    .line 4370
    :goto_0
    :try_start_0
    array-length v0, v4

    if-ge v3, v0, :cond_3

    .line 4371
    aget-object v0, v4, v3

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4372
    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_2

    aget-object v8, v6, v1

    .line 4373
    invoke-static {v8}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4375
    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {v5, v9, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4376
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    invoke-virtual {v5, v9, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4377
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4372
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 4378
    :catch_0
    move-exception v0

    .line 4380
    :try_start_2
    const-string/jumbo v9, "ContactsDatabaseHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Cannot insert nickname: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 4384
    :catchall_0
    move-exception v0

    .line 4385
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4384
    throw v0

    .line 4370
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 4385
    :cond_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4387
    return-void
.end method

.method private lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCommonMimeTypeIdsCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3558
    if-eqz v0, :cond_0

    .line 3559
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 3561
    :cond_0
    const-string/jumbo v0, "SELECT _id FROM mimetypes WHERE mimetype=?"

    .line 3565
    const-string/jumbo v0, "SELECT _id FROM mimetypes WHERE mimetype=?"

    invoke-static {p1, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->queryIdWithOneArg(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3566
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 3567
    const-string/jumbo v1, "ContactsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Mimetype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found in the MIMETYPES table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static notifyProviderStatusChange(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 5003
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    .line 5004
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5003
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 5005
    return-void
.end method

.method private prepopulateCommonMimeTypes(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCommonMimeTypeIdsCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1094
    sget-object v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;->COMMON_MIME_TYPES:[Ljava/lang/String;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1095
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCommonMimeTypeIdsCache:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertMimeType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1097
    :cond_0
    return-void
.end method

.method static queryIdWithOneArg(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 3833
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 3835
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v1, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3837
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 3842
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3837
    return-wide v2

    .line 3838
    :catch_0
    move-exception v0

    .line 3839
    const-wide/16 v2, -0x1

    .line 3842
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3839
    return-wide v2

    .line 3841
    :catchall_0
    move-exception v0

    .line 3842
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3841
    throw v0
.end method

.method private rebuildLocaleData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/LocaleSet;Z)V
    .locals 2

    .prologue
    .line 2775
    const-string/jumbo v0, "DROP INDEX raw_contact_sort_key1_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2776
    const-string/jumbo v0, "DROP INDEX raw_contact_sort_key2_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2777
    const-string/jumbo v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2779
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2780
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2781
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2782
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2784
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/FastScrollingIndexCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->invalidate()V

    .line 2787
    const-string/jumbo v0, "icu_version"

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/util/PropertyUtils;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    const-string/jumbo v0, "locale"

    invoke-virtual {p2}, Lcom/android/providers/contacts/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/util/PropertyUtils;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    return-void
.end method

.method private rebuildNameLookup(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    .prologue
    .line 2731
    const-string/jumbo v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2732
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2733
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2734
    return-void
.end method

.method private rebuildSearchIndex(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2

    .prologue
    .line 2741
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2742
    const-string/jumbo v0, "search_index"

    const-string/jumbo v1, "0"

    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/util/PropertyUtils;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    return-void
.end method

.method private rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2821
    const-string/jumbo v1, "raw_contacts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2824
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2825
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2826
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2828
    :catchall_0
    move-exception v0

    .line 2829
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2828
    throw v0

    .line 2829
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2831
    return-void
.end method

.method private reportInvalidSql(Ljava/lang/String;Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;)V
    .locals 5

    .prologue
    .line 5093
    const-string/jumbo v0, "ContactsDatabaseHelper"

    const-string/jumbo v1, "%s caller=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5094
    throw p2
.end method

.method private runSqlValidation(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 5086
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5090
    :goto_0
    return-void

    .line 5087
    :catch_0
    move-exception v0

    .line 5088
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->reportInvalidSql(Ljava/lang/String;Lcom/android/providers/contacts/sqlite/SqlChecker$InvalidSqlException;)V

    goto :goto_0
.end method

.method private updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4

    .prologue
    .line 4157
    const-string/jumbo v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    .line 4158
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 4160
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-string/jumbo v0, ""

    .line 4167
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DELETE FROM visible_contacts WHERE _id IN(SELECT _id FROM contacts WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4171
    const-string/jumbo v3, "("

    .line 4167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4171
    const-string/jumbo v3, "SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_id=(SELECT _id FROM accounts WHERE account_name IS NULL AND account_type IS NULL AND data_set IS NULL) THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 1 END) FROM raw_contacts JOIN accounts ON (raw_contacts.account_id=accounts._id)LEFT OUTER JOIN settings ON (accounts.account_name=settings.account_name AND accounts.account_type=settings.account_type AND ((accounts.data_set IS NULL AND settings.data_set IS NULL) OR (accounts.data_set=settings.data_set))) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id=contacts._id GROUP BY contact_id"

    .line 4167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4171
    const-string/jumbo v3, ")=0) "

    .line 4167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4166
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "INSERT INTO visible_contacts SELECT _id FROM contacts WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4180
    const-string/jumbo v1, "_id"

    .line 4175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4180
    const-string/jumbo v1, " NOT IN "

    .line 4175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4180
    const-string/jumbo v1, "visible_contacts"

    .line 4175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4181
    const-string/jumbo v1, " AND ("

    .line 4175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4181
    const-string/jumbo v1, "SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_id=(SELECT _id FROM accounts WHERE account_name IS NULL AND account_type IS NULL AND data_set IS NULL) THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 1 END) FROM raw_contacts JOIN accounts ON (raw_contacts.account_id=accounts._id)LEFT OUTER JOIN settings ON (accounts.account_name=settings.account_name AND accounts.account_type=settings.account_type AND ((accounts.data_set IS NULL AND settings.data_set IS NULL) OR (accounts.data_set=settings.data_set))) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id=contacts._id GROUP BY contact_id"

    .line 4175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4181
    const-string/jumbo v1, ")=1 "

    .line 4175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4174
    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4183
    return-void

    .line 4161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3764
    if-nez p3, :cond_0

    .line 3765
    const-string/jumbo v0, "DELETE FROM sqlite_stat1 WHERE tbl=? AND idx IS NULL"

    .line 3766
    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    .line 3765
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3771
    :goto_0
    const-string/jumbo v0, "INSERT INTO sqlite_stat1 (tbl,idx,stat) VALUES (?,?,?)"

    .line 3772
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    aput-object p4, v1, v4

    .line 3771
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3773
    return-void

    .line 3768
    :cond_0
    const-string/jumbo v0, "DELETE FROM sqlite_stat1 WHERE tbl=? AND idx=?"

    .line 3769
    new-array v1, v4, [Ljava/lang/String;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    .line 3768
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 3595
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseOptimizationEnabled:Z

    if-nez v0, :cond_0

    .line 3596
    return-void

    .line 3636
    :cond_0
    :try_start_0
    const-string/jumbo v0, "DELETE FROM sqlite_stat1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3637
    const-string/jumbo v0, "contacts"

    .line 3638
    const-string/jumbo v1, "contacts_has_phone_index"

    const-string/jumbo v2, "9000 500"

    .line 3637
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    const-string/jumbo v0, "contacts"

    .line 3640
    const-string/jumbo v1, "contacts_name_raw_contact_id_index"

    const-string/jumbo v2, "9000 1"

    .line 3639
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3641
    const-string/jumbo v0, "contacts"

    const-string/jumbo v1, "contacts"

    .line 3642
    const-string/jumbo v2, "contact_last_updated_timestamp"

    .line 3641
    invoke-static {v1, v2}, Lcom/android/providers/contacts/database/MoreDatabaseUtils;->buildIndexName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3642
    const-string/jumbo v2, "9000 10"

    .line 3641
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    const-string/jumbo v0, "raw_contacts"

    .line 3645
    const-string/jumbo v1, "raw_contacts_contact_id_index"

    const-string/jumbo v2, "10000 2"

    .line 3644
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3646
    const-string/jumbo v0, "raw_contacts"

    .line 3647
    const-string/jumbo v1, "raw_contact_sort_key2_index"

    const-string/jumbo v2, "10000 2"

    .line 3646
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3648
    const-string/jumbo v0, "raw_contacts"

    .line 3649
    const-string/jumbo v1, "raw_contact_sort_key1_index"

    const-string/jumbo v2, "10000 2"

    .line 3648
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    const-string/jumbo v0, "raw_contacts"

    .line 3651
    const-string/jumbo v1, "raw_contacts_source_id_account_id_index"

    const-string/jumbo v2, "10000 1 1"

    .line 3650
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3653
    const-string/jumbo v0, "name_lookup"

    .line 3654
    const-string/jumbo v1, "name_lookup_raw_contact_id_index"

    const-string/jumbo v2, "35000 4"

    .line 3653
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3655
    const-string/jumbo v0, "name_lookup"

    .line 3656
    const-string/jumbo v1, "name_lookup_index"

    const-string/jumbo v2, "35000 2 2 2 1"

    .line 3655
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3657
    const-string/jumbo v0, "name_lookup"

    .line 3658
    const-string/jumbo v1, "sqlite_autoindex_name_lookup_1"

    const-string/jumbo v2, "35000 3 2 1"

    .line 3657
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    const-string/jumbo v0, "phone_lookup"

    .line 3661
    const-string/jumbo v1, "phone_lookup_index"

    const-string/jumbo v2, "3500 3 2 1"

    .line 3660
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3662
    const-string/jumbo v0, "phone_lookup"

    .line 3663
    const-string/jumbo v1, "phone_lookup_min_match_index"

    const-string/jumbo v2, "3500 3 2 2"

    .line 3662
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    const-string/jumbo v0, "phone_lookup"

    .line 3665
    const-string/jumbo v1, "phone_lookup_data_id_min_match_index"

    const-string/jumbo v2, "3500 2 2"

    .line 3664
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3667
    const-string/jumbo v0, "data"

    .line 3668
    const-string/jumbo v1, "data_mimetype_data1_index"

    const-string/jumbo v2, "60000 5000 2"

    .line 3667
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3669
    const-string/jumbo v0, "data"

    .line 3670
    const-string/jumbo v1, "data_raw_contact_id"

    const-string/jumbo v2, "60000 10"

    .line 3669
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3672
    const-string/jumbo v0, "groups"

    .line 3673
    const-string/jumbo v1, "groups_source_id_account_id_index"

    const-string/jumbo v2, "50 2 2 1 1"

    .line 3672
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3675
    const-string/jumbo v0, "nickname_lookup"

    .line 3676
    const-string/jumbo v1, "nickname_lookup_index"

    const-string/jumbo v2, "500 2 1"

    .line 3675
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3678
    const-string/jumbo v0, "status_updates"

    .line 3679
    const-string/jumbo v1, "100"

    const/4 v2, 0x0

    .line 3678
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3681
    const-string/jumbo v0, "stream_items"

    .line 3682
    const-string/jumbo v1, "500"

    const/4 v2, 0x0

    .line 3681
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    const-string/jumbo v0, "stream_item_photos"

    .line 3684
    const-string/jumbo v1, "50"

    const/4 v2, 0x0

    .line 3683
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3686
    const-string/jumbo v0, "accounts"

    .line 3687
    const-string/jumbo v1, "3"

    const/4 v2, 0x0

    .line 3686
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3689
    const-string/jumbo v0, "pre_authorized_uris"

    .line 3690
    const-string/jumbo v1, "1"

    const/4 v2, 0x0

    .line 3689
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3692
    const-string/jumbo v0, "visible_contacts"

    .line 3693
    const-string/jumbo v1, "2000"

    const/4 v2, 0x0

    .line 3692
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3695
    const-string/jumbo v0, "photo_files"

    .line 3696
    const-string/jumbo v1, "50"

    const/4 v2, 0x0

    .line 3695
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3698
    const-string/jumbo v0, "default_directory"

    .line 3699
    const-string/jumbo v1, "1500"

    const/4 v2, 0x0

    .line 3698
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3701
    const-string/jumbo v0, "mimetypes"

    .line 3702
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "18 1"

    .line 3701
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3704
    const-string/jumbo v0, "data_usage_stat"

    .line 3705
    const-string/jumbo v1, "data_usage_stat_index"

    const-string/jumbo v2, "20 2 1"

    .line 3704
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3707
    const-string/jumbo v0, "metadata_sync"

    .line 3708
    const-string/jumbo v1, "metadata_sync_index"

    const-string/jumbo v2, "10000 1 1"

    .line 3707
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    const-string/jumbo v0, "agg_exceptions"

    .line 3712
    const-string/jumbo v1, "10"

    const/4 v2, 0x0

    .line 3711
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3713
    const-string/jumbo v0, "settings"

    .line 3714
    const-string/jumbo v1, "10"

    const/4 v2, 0x0

    .line 3713
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3715
    const-string/jumbo v0, "packages"

    .line 3716
    const-string/jumbo v1, "0"

    const/4 v2, 0x0

    .line 3715
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    const-string/jumbo v0, "directories"

    .line 3718
    const-string/jumbo v1, "3"

    const/4 v2, 0x0

    .line 3717
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3719
    const-string/jumbo v0, "v1_settings"

    .line 3720
    const-string/jumbo v1, "0"

    const/4 v2, 0x0

    .line 3719
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3721
    const-string/jumbo v0, "android_metadata"

    .line 3722
    const-string/jumbo v1, "1"

    const/4 v2, 0x0

    .line 3721
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3723
    const-string/jumbo v0, "_sync_state"

    .line 3724
    const-string/jumbo v1, "sqlite_autoindex__sync_state_1"

    const-string/jumbo v2, "2 1 1"

    .line 3723
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    const-string/jumbo v0, "_sync_state_metadata"

    .line 3726
    const-string/jumbo v1, "1"

    const/4 v2, 0x0

    .line 3725
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    const-string/jumbo v0, "properties"

    .line 3728
    const-string/jumbo v1, "sqlite_autoindex_properties_1"

    const-string/jumbo v2, "4 1"

    .line 3727
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3730
    const-string/jumbo v0, "metadata_sync_state"

    .line 3731
    const-string/jumbo v1, "metadata_sync_state_index"

    const-string/jumbo v2, "2 1 1"

    .line 3730
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3734
    const-string/jumbo v0, "search_index_docsize"

    .line 3735
    const-string/jumbo v1, "9000"

    const/4 v2, 0x0

    .line 3734
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3736
    const-string/jumbo v0, "search_index_content"

    .line 3737
    const-string/jumbo v1, "9000"

    const/4 v2, 0x0

    .line 3736
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3738
    const-string/jumbo v0, "search_index_stat"

    .line 3739
    const-string/jumbo v1, "1"

    const/4 v2, 0x0

    .line 3738
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3740
    const-string/jumbo v0, "search_index_segments"

    .line 3741
    const-string/jumbo v1, "450"

    const/4 v2, 0x0

    .line 3740
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3742
    const-string/jumbo v0, "search_index_segdir"

    .line 3743
    const-string/jumbo v1, "sqlite_autoindex_search_index_segdir_1"

    const-string/jumbo v2, "9 5 1"

    .line 3742
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3745
    const-string/jumbo v0, "presence"

    const-string/jumbo v1, "presenceIndex"

    const-string/jumbo v2, "1 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3746
    const-string/jumbo v0, "presence"

    const-string/jumbo v1, "presenceIndex2"

    const-string/jumbo v2, "1 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3747
    const-string/jumbo v0, "agg_presence"

    const-string/jumbo v1, "1"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3750
    const-string/jumbo v0, "ANALYZE sqlite_master;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3754
    :goto_0
    return-void

    .line 3751
    :catch_0
    move-exception v0

    .line 3752
    const-string/jumbo v1, "ContactsDatabaseHelper"

    const-string/jumbo v2, "Could not update index stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upgradeLocaleData(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 6

    .prologue
    .line 2766
    invoke-static {}, Lcom/android/providers/contacts/LocaleSet;->newDefault()Lcom/android/providers/contacts/LocaleSet;

    move-result-object v0

    .line 2767
    const-string/jumbo v1, "ContactsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Upgrading locale data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2768
    const-string/jumbo v3, " (ICU v"

    .line 2767
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2768
    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v3

    .line 2767
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2768
    const-string/jumbo v3, ")"

    .line 2767
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2770
    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildLocaleData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/LocaleSet;Z)V

    .line 2771
    const-string/jumbo v0, "ContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Locale update completed in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    return-void
.end method

.method private upgradeToVersion1000(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3211
    const-string/jumbo v0, "ALTER TABLE raw_contacts ADD backup_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3212
    const-string/jumbo v0, "ALTER TABLE data ADD hash_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3213
    const-string/jumbo v0, "CREATE UNIQUE INDEX IF NOT EXISTS raw_contacts_backup_id_account_id_index ON raw_contacts (backup_id, account_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3215
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS data_hash_id_index ON data (hash_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3216
    return-void
.end method

.method private upgradeToVersion1100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3300
    const-string/jumbo v0, "ALTER TABLE raw_contacts ADD metadata_dirty INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3301
    return-void
.end method

.method private upgradeToVersion1201(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3420
    const-string/jumbo v0, "ALTER TABLE contacts ADD x_times_contacted INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3421
    const-string/jumbo v0, "ALTER TABLE contacts ADD x_last_time_contacted INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3423
    const-string/jumbo v0, "ALTER TABLE raw_contacts ADD x_times_contacted INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3424
    const-string/jumbo v0, "ALTER TABLE raw_contacts ADD x_last_time_contacted INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3426
    const-string/jumbo v0, "ALTER TABLE data_usage_stat ADD x_times_used INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3427
    const-string/jumbo v0, "ALTER TABLE data_usage_stat ADD x_last_time_used INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3429
    const-string/jumbo v0, "UPDATE contacts SET x_times_contacted = ifnull(times_contacted,0),x_last_time_contacted = ifnull(last_time_contacted,0),times_contacted = 0,last_time_contacted = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3435
    const-string/jumbo v0, "UPDATE raw_contacts SET x_times_contacted = ifnull(times_contacted,0),x_last_time_contacted = ifnull(last_time_contacted,0),times_contacted = 0,last_time_contacted = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3441
    const-string/jumbo v0, "UPDATE data_usage_stat SET x_times_used = ifnull(times_used,0),x_last_time_used = ifnull(last_time_used,0),times_used = 0,last_time_used = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3447
    const-string/jumbo v0, "UPDATE accounts SET account_name = ? ,account_type = ? where account_name = ? AND account_type = ?"

    .line 3450
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const-string/jumbo v2, "PHONE"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.localphone"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 3447
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3451
    return-void
.end method

.method private upgradeToVersion701(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 2948
    const-string/jumbo v0, "UPDATE raw_contacts SET last_time_contacted = max(ifnull(last_time_contacted, 0),  ifnull((SELECT max(last_time_used)  FROM data JOIN data_usage_stat ON (data._id = data_usage_stat.data_id) WHERE data.raw_contact_id = raw_contacts._id), 0))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2954
    const-string/jumbo v0, "UPDATE raw_contacts SET last_time_contacted = null where last_time_contacted = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2956
    return-void
.end method

.method private upgradeToVersion702(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 2970
    const-string/jumbo v0, "SELECT _id, raw_contact_id, data1 FROM data  WHERE mimetype_id=(SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/phone_v2\') AND data4 not like \'+%\'"

    .line 2975
    const/4 v2, 0x0

    .line 2969
    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2977
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2978
    if-nez v3, :cond_0

    .line 2999
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2979
    return-void

    .line 2981
    :cond_0
    :try_start_1
    new-array v4, v3, [J

    .line 2982
    new-array v5, v3, [J

    .line 2983
    new-array v6, v3, [Ljava/lang/String;

    .line 2984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2986
    const/4 v7, -0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2987
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2988
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 2989
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v4, v7

    .line 2990
    const/4 v8, 0x1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v5, v7

    .line 2991
    const/4 v8, 0x2

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2993
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 2994
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    :cond_1
    aget-wide v8, v4, v7

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2998
    :catchall_0
    move-exception v0

    .line 2999
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2998
    throw v0

    .line 2999
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3002
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UPDATE data SET data4 = null WHERE _id IN ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3008
    const-string/jumbo v7, ")"

    .line 3007
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DELETE FROM phone_lookup WHERE data_id IN ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3012
    const-string/jumbo v2, ")"

    .line 3011
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v1

    .line 3014
    :goto_1
    if-ge v0, v3, :cond_5

    .line 3017
    aget-object v2, v6, v0

    .line 3018
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3014
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3020
    :cond_4
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3021
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3022
    const-string/jumbo v7, "INSERT INTO phone_lookup(data_id, raw_contact_id, normalized_number, min_match) VALUES(?,?,?,?)"

    .line 3025
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    .line 3026
    aget-wide v10, v4, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 3027
    aget-wide v10, v5, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 3028
    aput-object v2, v8, v13

    .line 3029
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x3

    aput-object v2, v8, v9

    .line 3022
    invoke-virtual {p1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 3032
    :cond_5
    return-void
.end method

.method private upgradeToVersion707(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3035
    const-string/jumbo v0, "ALTER TABLE raw_contacts ADD phonebook_label TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3036
    const-string/jumbo v0, "ALTER TABLE raw_contacts ADD phonebook_bucket INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3037
    const-string/jumbo v0, "ALTER TABLE raw_contacts ADD phonebook_label_alt TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3038
    const-string/jumbo v0, "ALTER TABLE raw_contacts ADD phonebook_bucket_alt INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3039
    return-void
.end method

.method private upgradeToVersion710(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 3044
    const-string/jumbo v0, "ALTER TABLE contacts ADD contact_last_updated_timestamp INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UPDATE contacts SET contact_last_updated_timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3047
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3051
    const-string/jumbo v0, "CREATE INDEX contacts_contact_last_updated_timestamp_index ON contacts(contact_last_updated_timestamp)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3055
    const-string/jumbo v0, "CREATE TABLE deleted_contacts (contact_id INTEGER PRIMARY KEY,contact_deleted_timestamp INTEGER NOT NULL default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3060
    const-string/jumbo v0, "CREATE INDEX deleted_contacts_contact_deleted_timestamp_index ON deleted_contacts(contact_deleted_timestamp)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3062
    return-void
.end method

.method private upgradeToVersion800(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3066
    const-string/jumbo v0, "ALTER TABLE calls ADD presentation INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3072
    const-string/jumbo v0, "UPDATE calls SET presentation=2, number=\'\' WHERE number=\'-2\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3073
    const-string/jumbo v0, "UPDATE calls SET presentation=3, number=\'\' WHERE number=\'-1\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3074
    const-string/jumbo v0, "UPDATE calls SET presentation=4, number=\'\' WHERE number=\'-3\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3075
    return-void
.end method

.method private upgradeToVersion802(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3078
    const-string/jumbo v0, "ALTER TABLE contacts ADD pinned INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3080
    const-string/jumbo v0, "ALTER TABLE raw_contacts ADD pinned INTEGER NOT NULL DEFAULT  0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3082
    return-void
.end method

.method private upgradeToVersion902(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3086
    const-string/jumbo v0, "ALTER TABLE calls ADD subscription_component_name TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3087
    const-string/jumbo v0, "ALTER TABLE calls ADD subscription_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3088
    return-void
.end method

.method private upgradeToVersion903(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .prologue
    .line 3099
    const-string/jumbo v0, "SELECT _id, number, countryiso FROM calls  WHERE (normalized_number is null OR normalized_number = \'\')  AND countryiso != \'\' AND countryiso is not null  AND number != \'\' AND number is not null;"

    .line 3103
    const/4 v1, 0x0

    .line 3098
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3107
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 3139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3108
    return-void

    .line 3111
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3113
    const/4 v0, -0x1

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3114
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3115
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3116
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3117
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3120
    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3124
    const-string/jumbo v4, "UPDATE calls set normalized_number = ? where _id = ?;"

    .line 3126
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 3127
    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 3128
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    .line 3124
    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3135
    :catchall_0
    move-exception v0

    .line 3136
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3135
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3138
    :catchall_1
    move-exception v0

    .line 3139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3138
    throw v0

    .line 3134
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3136
    :try_start_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3139
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3141
    return-void
.end method

.method private upgradeToVersion904(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3148
    const-string/jumbo v0, "ALTER TABLE calls ADD features INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3149
    const-string/jumbo v0, "ALTER TABLE calls ADD data_usage INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3150
    return-void
.end method

.method private upgradeToVersion905(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3156
    const-string/jumbo v0, "ALTER TABLE calls ADD transcription TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3157
    return-void
.end method

.method private upgradeToVersion908(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3179
    const-string/jumbo v0, "UPDATE contacts SET pinned = 0 WHERE pinned = 2147483647;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3180
    const-string/jumbo v0, "UPDATE raw_contacts SET pinned = 0 WHERE pinned = 2147483647;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3181
    return-void
.end method

.method private upgradeToVersion909(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3185
    :try_start_0
    const-string/jumbo v0, "ALTER TABLE calls ADD sub_id INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3192
    :goto_0
    return-void

    .line 3186
    :catch_0
    move-exception v0

    .line 3188
    const-string/jumbo v0, "UPDATE calls SET subscription_component_name=\'com.android.phone/com.android.services.telephony.TelephonyConnectionService\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3190
    const-string/jumbo v0, "UPDATE calls SET subscription_id=sub_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeToVersion910(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 3200
    const-string/jumbo v1, "user"

    .line 3199
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3201
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3202
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3203
    const-string/jumbo v0, "DELETE FROM calls;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3205
    :cond_0
    return-void
.end method


# virtual methods
.method public buildFallbackPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 4234
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4237
    const-string/jumbo v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4238
    const-string/jumbo v2, " JOIN view_contacts as contacts_view ON (contacts_view._id = raw_contacts.contact_id) JOIN (SELECT data_id,normalized_number FROM phone_lookup WHERE (phone_lookup.min_match = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4244
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4245
    const-string/jumbo v0, "\')) AS lookup ON lookup.data_id=data._id JOIN data ON data.raw_contact_id=raw_contacts._id"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4253
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4254
    const-string/jumbo v0, "PHONE_NUMBERS_EQUAL(data.data1, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4255
    invoke-static {v1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4256
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ", 1)"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4258
    return-void

    .line 4256
    :cond_0
    const-string/jumbo v0, ", 0)"

    goto :goto_0
.end method

.method public buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 4217
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4219
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 4220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4223
    invoke-direct {p0, v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4225
    return-void
.end method

.method public buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 4278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4279
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4280
    const-string/jumbo v2, "(SELECT DISTINCT raw_contact_id FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4281
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 4282
    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4283
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4284
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildSipContactQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 4267
    const-string/jumbo v0, "upper("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4268
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4269
    const-string/jumbo v0, ")=upper(?) AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4270
    const-string/jumbo v0, "mimetype_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4271
    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4272
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForSip()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4274
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    return-object v0
.end method

.method public clearSuperPrimary(JJ)V
    .locals 3

    .prologue
    .line 4843
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4844
    const-string/jumbo v1, "UPDATE data SET is_super_primary=0 WHERE mimetype_id=?   AND raw_contact_id=?"

    .line 4843
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4848
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4849
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4850
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4851
    return-void
.end method

.method public createNameSplitter()Lcom/android/providers/contacts/NameSplitter;
    .locals 1

    .prologue
    .line 3806
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter(Ljava/util/Locale;)Lcom/android/providers/contacts/NameSplitter;

    move-result-object v0

    return-object v0
.end method

.method public createNameSplitter(Ljava/util/Locale;)Lcom/android/providers/contacts/NameSplitter;
    .locals 6

    .prologue
    .line 3810
    new-instance v0, Lcom/android/providers/contacts/NameSplitter;

    .line 3811
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v2, 0x1040104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3812
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v3, 0x1040101

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3813
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v4, 0x1040105

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3814
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v5, 0x1040103

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 3810
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 3816
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    return-object v0
.end method

.method public createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    .prologue
    .line 1716
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1718
    :try_start_0
    const-string/jumbo v0, "DROP TABLE IF EXISTS search_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1719
    const-string/jumbo v0, "CREATE VIRTUAL TABLE search_index USING FTS4 (contact_id INTEGER REFERENCES contacts(_id) NOT NULL,content TEXT, name TEXT, tokens TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1726
    if-eqz p2, :cond_0

    .line 1727
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1729
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1733
    return-void

    .line 1730
    :catchall_0
    move-exception v0

    .line 1731
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1730
    throw v0
.end method

.method protected dbForProfile()I
    .locals 1

    .prologue
    .line 2334
    const/4 v0, 0x0

    return v0
.end method

.method public deleteNameLookup(J)V
    .locals 3

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4904
    const-string/jumbo v1, "DELETE FROM name_lookup WHERE data_id=?"

    .line 4903
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4906
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4907
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4908
    return-void
.end method

.method public deleteStatusUpdate(J)V
    .locals 3

    .prologue
    .line 4517
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4518
    const-string/jumbo v1, "DELETE FROM status_updates WHERE status_update_data_id=?"

    .line 4517
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4520
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4521
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4522
    return-void
.end method

.method public exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4478
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4487
    if-eqz p1, :cond_0

    .line 4488
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4490
    :cond_0
    const-string/jumbo v0, "URI: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4491
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 4493
    const-string/jumbo v0, ", calling user: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4494
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 4495
    if-nez v0, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4497
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 4498
    if-eqz v3, :cond_2

    array-length v0, v3

    if-lez v0, :cond_2

    .line 4499
    array-length v0, v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 4500
    const-string/jumbo v0, ", calling package:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4501
    aget-object v0, v3, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4513
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4503
    :cond_3
    const-string/jumbo v0, ", calling package is one of: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 4504
    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_5

    .line 4505
    if-eqz v0, :cond_4

    .line 4506
    const-string/jumbo v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4508
    :cond_4
    aget-object v1, v3, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4510
    :cond_5
    const-string/jumbo v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3520
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 3521
    array-length v1, v0

    if-nez v1, :cond_0

    .line 3522
    const/4 v0, 0x0

    return-object v0

    .line 3524
    :cond_0
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3506
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 3507
    array-length v1, v0

    if-nez v1, :cond_0

    .line 3508
    return-object v4

    .line 3511
    :cond_0
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3512
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3513
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3514
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3516
    :cond_1
    return-object v4
.end method

.method public forceDirectoryRescan()V
    .locals 2

    .prologue
    .line 4433
    const-string/jumbo v0, "directoryScanComplete"

    const-string/jumbo v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4434
    return-void
.end method

.method public generateHashId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3483
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 3484
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3485
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3488
    :goto_0
    if-eqz v0, :cond_1

    .line 3489
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->generateHashIdForData([B)Ljava/lang/String;

    move-result-object v0

    .line 3490
    return-object v0

    .line 3492
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method generateHashIdForData([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3499
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMessageDigest:Ljava/security/MessageDigest;

    monitor-enter v1

    .line 3500
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMessageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 3501
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3499
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAccountIdOrNull(Lcom/android/providers/contacts/AccountWithDataSet;)Ljava/lang/Long;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3997
    if-nez p1, :cond_0

    .line 3998
    sget-object p1, Lcom/android/providers/contacts/AccountWithDataSet;->LOCAL:Lcom/android/providers/contacts/AccountWithDataSet;

    .line 4000
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4001
    const-string/jumbo v1, "SELECT _id FROM accounts WHERE ((?1 IS NULL AND account_name IS NULL) OR (account_name=?1)) AND ((?2 IS NULL AND account_type IS NULL) OR (account_type=?2)) AND ((?3 IS NULL AND data_set IS NULL) OR (data_set=?3))"

    .line 4000
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 4011
    :try_start_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4012
    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4013
    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4015
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4020
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4015
    return-object v0

    .line 4016
    :catch_0
    move-exception v0

    .line 4020
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4017
    return-object v4

    .line 4019
    :catchall_0
    move-exception v0

    .line 4020
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4019
    throw v0
.end method

.method public getAggregationMode(J)I
    .locals 3

    .prologue
    .line 4202
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4203
    const-string/jumbo v1, "SELECT aggregation_mode FROM raw_contacts WHERE _id=?"

    .line 4202
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4207
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4208
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 4209
    :catch_0
    move-exception v0

    .line 4210
    const/4 v0, 0x3

    return v0
.end method

.method public getAllAccountsWithDataSets()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/providers/contacts/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3978
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3979
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3980
    const-string/jumbo v2, "SELECT DISTINCT _id,account_name,account_type,data_set FROM accounts"

    .line 3982
    const/4 v3, 0x0

    .line 3979
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3984
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3985
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/providers/contacts/AccountWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/AccountWithDataSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3987
    :catchall_0
    move-exception v0

    .line 3988
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3987
    throw v0

    .line 3988
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3990
    return-object v0
.end method

.method public getContactId(J)J
    .locals 3

    .prologue
    .line 4189
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4190
    const-string/jumbo v1, "SELECT contact_id FROM raw_contacts WHERE _id=?"

    .line 4189
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4194
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4195
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 4196
    :catch_0
    move-exception v0

    .line 4197
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4955
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CountryMonitor;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataMimeType(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3960
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3961
    const-string/jumbo v1, "SELECT mimetype FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE data._id=?"

    .line 3960
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 3966
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3967
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 3968
    :catch_0
    move-exception v0

    .line 3970
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 1084
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public getDatabaseCreationTime()J
    .locals 2

    .prologue
    .line 5008
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseCreationTime:J

    return-wide v0
.end method

.method public getMimeTypeId(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 3894
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3895
    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 3896
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 3897
    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertMimeType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 3899
    :cond_0
    return-wide v2
.end method

.method public getMimeTypeIdForEmail()J
    .locals 2

    .prologue
    .line 3919
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeTypeIdForIm()J
    .locals 2

    .prologue
    .line 3915
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.cursor.item/im"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeTypeIdForOrganization()J
    .locals 2

    .prologue
    .line 3911
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeTypeIdForPhone()J
    .locals 2

    .prologue
    .line 3923
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeTypeIdForSip()J
    .locals 2

    .prologue
    .line 3927
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.cursor.item/sip_address"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeTypeIdForStructuredName()J
    .locals 2

    .prologue
    .line 3903
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeTypeIdForStructuredPostal()J
    .locals 2

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrCreateAccountIdInTransaction(Lcom/android/providers/contacts/AccountWithDataSet;)J
    .locals 4

    .prologue
    .line 4031
    if-nez p1, :cond_0

    .line 4032
    sget-object p1, Lcom/android/providers/contacts/AccountWithDataSet;->LOCAL:Lcom/android/providers/contacts/AccountWithDataSet;

    .line 4034
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getAccountIdOrNull(Lcom/android/providers/contacts/AccountWithDataSet;)Ljava/lang/Long;

    move-result-object v0

    .line 4035
    if-eqz v0, :cond_1

    .line 4036
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 4038
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4039
    const-string/jumbo v1, "INSERT INTO accounts (account_name, account_type, data_set) VALUES (?, ?, ?)"

    .line 4038
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 4044
    :try_start_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4045
    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4046
    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4047
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4049
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4052
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 4048
    :catchall_0
    move-exception v0

    .line 4049
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4048
    throw v0
.end method

.method public getPackageId(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 3867
    const-string/jumbo v0, "SELECT _id FROM packages WHERE package=?"

    .line 3872
    const-string/jumbo v0, "INSERT INTO packages(package) VALUES (?)"

    .line 3876
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3877
    const-string/jumbo v1, "SELECT _id FROM packages WHERE package=?"

    invoke-static {v0, v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->queryIdWithOneArg(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 3878
    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 3879
    return-wide v2

    .line 3881
    :cond_0
    const-string/jumbo v1, "INSERT INTO packages(package) VALUES (?)"

    invoke-static {v0, v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertWithOneArgAndReturnId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 3882
    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 3883
    return-wide v2

    .line 3886
    :cond_1
    const-string/jumbo v1, "SELECT _id FROM packages WHERE package=?"

    invoke-static {v0, v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->queryIdWithOneArg(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhotoHashId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3399
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->generateHashId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4422
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/providers/contacts/util/PropertyUtils;->getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 4415
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method getUseStrictPhoneNumberComparisonForTest()Z
    .locals 1
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .prologue
    .line 4965
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    return v0
.end method

.method public getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4350
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method protected initializeAutoIncrementSequences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1691
    return-void
.end method

.method public insertNameLookup(JJILjava/lang/String;)V
    .locals 5

    .prologue
    .line 4881
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4882
    return-void

    .line 4885
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4886
    const-string/jumbo v1, "INSERT OR IGNORE INTO name_lookup(raw_contact_id,data_id,name_type,normalized_name) VALUES (?,?,?,?)"

    .line 4885
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4892
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4893
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4894
    int-to-long v2, p5

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4895
    const/4 v1, 0x4

    invoke-static {v0, v1, p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4896
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 4897
    return-void
.end method

.method public insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 8

    .prologue
    .line 2926
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2927
    return-void

    .line 2930
    :cond_0
    invoke-static {p7}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2931
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2932
    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 2935
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    .line 2936
    return-void
.end method

.method public insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 4911
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4912
    return-object v1

    .line 4915
    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4916
    if-nez v0, :cond_1

    .line 4917
    return-object v1

    .line 4921
    :cond_1
    invoke-static {v0}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x4

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 4920
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    .line 4922
    return-object v0
.end method

.method public insertNameLookupForNickname(JJLjava/lang/String;)V
    .locals 9

    .prologue
    .line 4929
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4931
    invoke-static {p5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x3

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 4930
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    .line 4933
    :cond_0
    return-void
.end method

.method public insertStatusUpdate(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 4546
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4547
    const-string/jumbo v1, "INSERT INTO status_updates(status_update_data_id, status,status_res_package,status_icon,status_label) VALUES (?,?,?,?,?)"

    .line 4546
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4555
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4556
    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4557
    const/4 v1, 0x3

    invoke-static {v0, v1, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4558
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4559
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4560
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4590
    :goto_0
    return-void

    .line 4561
    :catch_0
    move-exception v0

    .line 4563
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4565
    const-string/jumbo v1, "UPDATE status_updates SET status_ts=?,status=? WHERE status_update_data_id=? AND status!=?"

    .line 4563
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4572
    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4573
    invoke-static {v0, v5, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4574
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v6, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4575
    invoke-static {v0, v7, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4576
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4578
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4579
    const-string/jumbo v1, "UPDATE status_updates SET status_res_package=?,status_icon=?,status_label=? WHERE status_update_data_id=?"

    .line 4578
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4584
    invoke-static {v0, v4, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4585
    invoke-direct {p0, v0, v5, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4586
    invoke-direct {p0, v0, v6, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4587
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v7, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4588
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 4143
    const-string/jumbo v1, "SELECT EXISTS (SELECT 1 FROM default_directory WHERE _id=?)"

    .line 4142
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 4146
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4147
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public legacyGenerateHashId(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3465
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 3466
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3467
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    .line 3472
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 3473
    invoke-virtual {p0, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->generateHashIdForData([B)Ljava/lang/String;

    move-result-object v0

    .line 3474
    return-object v0

    .line 3469
    :cond_2
    if-nez p3, :cond_1

    move-object p3, v0

    goto :goto_0

    .line 3476
    :cond_3
    return-object v0
.end method

.method protected loadDatabaseCreationTime(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1128
    iput-wide v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseCreationTime:J

    .line 1130
    const-string/jumbo v0, "database_time_created"

    const-string/jumbo v1, ""

    .line 1129
    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/util/PropertyUtils;->getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1133
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseCreationTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    .line 1139
    const-string/jumbo v0, "ContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Open: creation time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseCreationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_1
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseCreationTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 1142
    const-string/jumbo v0, "ContactsDatabaseHelper"

    const-string/jumbo v1, "Unable to load creating time; resetting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseCreationTime:J

    .line 1146
    const-string/jumbo v0, "database_time_created"

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseCreationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1145
    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/util/PropertyUtils;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :cond_2
    return-void

    .line 1134
    :catch_0
    move-exception v1

    .line 1135
    const-string/jumbo v1, "ContactsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to parse timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public needsToUpdateLocaleData(Lcom/android/providers/contacts/LocaleSet;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2750
    const-string/jumbo v0, "locale"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2751
    invoke-virtual {p1}, Lcom/android/providers/contacts/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2752
    return v5

    .line 2754
    :cond_0
    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v0

    .line 2755
    const-string/jumbo v1, "icu_version"

    .line 2756
    const-string/jumbo v2, "(unknown)"

    .line 2755
    invoke-virtual {p0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2757
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2758
    const-string/jumbo v2, "ContactsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ICU version has changed. Current version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2759
    const-string/jumbo v3, "; DB was built with "

    .line 2758
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    return v5

    .line 2762
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onBeforeDelete(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 1101
    const-string/jumbo v0, "ContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Database version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "contacts2.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1102
    const-string/jumbo v2, " is no longer supported. Data will be lost on upgrading to "

    .line 1101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1102
    const/16 v2, 0x4b2

    .line 1101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1233
    const-string/jumbo v0, "ContactsDatabaseHelper"

    const-string/jumbo v1, "Bootstrapping database contacts2.db version: 1202"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1239
    invoke-static {p1}, Lcom/android/providers/contacts/util/PropertyUtils;->createPropertiesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1241
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setDatabaseCreationTime(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1243
    const-string/jumbo v0, "CREATE TABLE accounts (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_name TEXT, account_type TEXT, data_set TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1265
    const-string/jumbo v0, "CREATE TABLE contacts (_id INTEGER PRIMARY KEY AUTOINCREMENT,name_raw_contact_id INTEGER REFERENCES raw_contacts(_id),photo_id INTEGER REFERENCES data(_id),photo_file_id INTEGER REFERENCES photo_files(_id),custom_ringtone TEXT,send_to_voicemail INTEGER NOT NULL DEFAULT 0,x_times_contacted INTEGER NOT NULL DEFAULT 0,x_last_time_contacted INTEGER,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,pinned INTEGER NOT NULL DEFAULT 0,has_phone_number INTEGER NOT NULL DEFAULT 0,lookup TEXT,status_update_id INTEGER REFERENCES data(_id),contact_last_updated_timestamp INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1287
    invoke-static {p1}, Lcom/android/providers/contacts/database/ContactsTableUtil;->createIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1290
    invoke-static {p1}, Lcom/android/providers/contacts/database/DeletedContactsTableUtil;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1293
    const-string/jumbo v0, "CREATE TABLE raw_contacts (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id INTEGER REFERENCES accounts(_id),sourceid TEXT,backup_id TEXT,raw_contact_is_read_only INTEGER NOT NULL DEFAULT 0,version INTEGER NOT NULL DEFAULT 1,dirty INTEGER NOT NULL DEFAULT 0,deleted INTEGER NOT NULL DEFAULT 0,metadata_dirty INTEGER NOT NULL DEFAULT 0,contact_id INTEGER REFERENCES contacts(_id),aggregation_mode INTEGER NOT NULL DEFAULT 0,aggregation_needed INTEGER NOT NULL DEFAULT 1,custom_ringtone TEXT,send_to_voicemail INTEGER NOT NULL DEFAULT 0,x_times_contacted INTEGER NOT NULL DEFAULT 0,x_last_time_contacted INTEGER,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,pinned INTEGER NOT NULL DEFAULT 0,display_name TEXT,display_name_alt TEXT,display_name_source INTEGER NOT NULL DEFAULT 0,phonetic_name TEXT,phonetic_name_style TEXT,sort_key TEXT COLLATE PHONEBOOK,phonebook_label TEXT,phonebook_bucket INTEGER,sort_key_alt TEXT COLLATE PHONEBOOK,phonebook_label_alt TEXT,phonebook_bucket_alt INTEGER,name_verified INTEGER NOT NULL DEFAULT 0,sync1 TEXT, sync2 TEXT, sync3 TEXT, sync4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1343
    const-string/jumbo v0, "CREATE INDEX raw_contacts_contact_id_index ON raw_contacts (contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1347
    const-string/jumbo v0, "CREATE INDEX raw_contacts_source_id_account_id_index ON raw_contacts (sourceid, account_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1353
    const-string/jumbo v0, "CREATE UNIQUE INDEX IF NOT EXISTS raw_contacts_backup_id_account_id_index ON raw_contacts (backup_id, account_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1359
    const-string/jumbo v0, "CREATE TABLE stream_items (_id INTEGER PRIMARY KEY AUTOINCREMENT, raw_contact_id INTEGER NOT NULL, res_package TEXT, icon TEXT, label TEXT, text TEXT, timestamp INTEGER NOT NULL, comments TEXT, stream_item_sync1 TEXT, stream_item_sync2 TEXT, stream_item_sync3 TEXT, stream_item_sync4 TEXT, FOREIGN KEY(raw_contact_id) REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1375
    const-string/jumbo v0, "CREATE TABLE stream_item_photos (_id INTEGER PRIMARY KEY AUTOINCREMENT, stream_item_id INTEGER NOT NULL, sort_index INTEGER, photo_file_id INTEGER NOT NULL, stream_item_photo_sync1 TEXT, stream_item_photo_sync2 TEXT, stream_item_photo_sync3 TEXT, stream_item_photo_sync4 TEXT, FOREIGN KEY(stream_item_id) REFERENCES stream_items(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1387
    const-string/jumbo v0, "CREATE TABLE photo_files (_id INTEGER PRIMARY KEY AUTOINCREMENT, height INTEGER NOT NULL, width INTEGER NOT NULL, filesize INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1399
    const-string/jumbo v0, "CREATE TABLE packages (_id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1405
    const-string/jumbo v0, "CREATE TABLE mimetypes (_id INTEGER PRIMARY KEY AUTOINCREMENT,mimetype TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1411
    const-string/jumbo v0, "CREATE UNIQUE INDEX mime_type ON mimetypes (mimetype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1416
    const-string/jumbo v0, "CREATE TABLE data (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),mimetype_id INTEGER REFERENCES mimetype(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,hash_id TEXT,is_read_only INTEGER NOT NULL DEFAULT 0,is_primary INTEGER NOT NULL DEFAULT 0,is_super_primary INTEGER NOT NULL DEFAULT 0,data_version INTEGER NOT NULL DEFAULT 0,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT,data5 TEXT,data6 TEXT,data7 TEXT,data8 TEXT,data9 TEXT,data10 TEXT,data11 TEXT,data12 TEXT,data13 TEXT,data14 TEXT,data15 TEXT,data_sync1 TEXT, data_sync2 TEXT, data_sync3 TEXT, data_sync4 TEXT, carrier_presence INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1448
    const-string/jumbo v0, "CREATE INDEX data_raw_contact_id ON data (raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1455
    const-string/jumbo v0, "CREATE INDEX data_mimetype_data1_index ON data (mimetype_id,data1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1463
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS data_hash_id_index ON data (hash_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1469
    const-string/jumbo v0, "CREATE TABLE phone_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_number TEXT NOT NULL,min_match TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1478
    const-string/jumbo v0, "CREATE INDEX phone_lookup_index ON phone_lookup (normalized_number,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1484
    const-string/jumbo v0, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1490
    const-string/jumbo v0, "CREATE INDEX phone_lookup_data_id_min_match_index ON phone_lookup (data_id, min_match);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1494
    const-string/jumbo v0, "CREATE TABLE name_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_name TEXT NOT NULL,name_type INTEGER NOT NULL,PRIMARY KEY (data_id, normalized_name, name_type));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1507
    const-string/jumbo v0, "CREATE INDEX name_lookup_raw_contact_id_index ON name_lookup (raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1511
    const-string/jumbo v0, "CREATE TABLE nickname_lookup (name TEXT,cluster TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1516
    const-string/jumbo v0, "CREATE UNIQUE INDEX nickname_lookup_index ON nickname_lookup (name, cluster);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1522
    const-string/jumbo v0, "CREATE TABLE groups (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),account_id INTEGER REFERENCES accounts(_id),sourceid TEXT,version INTEGER NOT NULL DEFAULT 1,dirty INTEGER NOT NULL DEFAULT 0,title TEXT,title_res INTEGER,notes TEXT,system_id TEXT,deleted INTEGER NOT NULL DEFAULT 0,group_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1,auto_add INTEGER NOT NULL DEFAULT 0,favorites INTEGER NOT NULL DEFAULT 0,group_is_read_only INTEGER NOT NULL DEFAULT 0,sync1 TEXT, sync2 TEXT, sync3 TEXT, sync4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1546
    const-string/jumbo v0, "CREATE INDEX groups_source_id_account_id_index ON groups (sourceid, account_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1551
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS agg_exceptions (_id INTEGER PRIMARY KEY AUTOINCREMENT,type INTEGER NOT NULL, raw_contact_id1 INTEGER REFERENCES raw_contacts(_id), raw_contact_id2 INTEGER REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1560
    const-string/jumbo v0, "CREATE UNIQUE INDEX IF NOT EXISTS aggregation_exception_index1 ON agg_exceptions (raw_contact_id1, raw_contact_id2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1566
    const-string/jumbo v0, "CREATE UNIQUE INDEX IF NOT EXISTS aggregation_exception_index2 ON agg_exceptions (raw_contact_id2, raw_contact_id1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1572
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS settings (account_name STRING NOT NULL,account_type STRING NOT NULL,data_set STRING,ungrouped_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1580
    const-string/jumbo v0, "CREATE TABLE visible_contacts (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1584
    const-string/jumbo v0, "CREATE TABLE default_directory (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1588
    const-string/jumbo v0, "CREATE TABLE status_updates (status_update_data_id INTEGER PRIMARY KEY REFERENCES data(_id),status TEXT,status_ts INTEGER,status_res_package TEXT, status_label INTEGER, status_icon INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1597
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1598
    invoke-virtual {p0, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1600
    const-string/jumbo v0, "CREATE TABLE data_usage_stat(stat_id INTEGER PRIMARY KEY AUTOINCREMENT, data_id INTEGER NOT NULL, usage_type INTEGER NOT NULL DEFAULT 0, x_times_used INTEGER NOT NULL DEFAULT 0, x_last_time_used INTEGER NOT NULL DEFAULT 0, times_used INTEGER NOT NULL DEFAULT 0, last_time_used INTEGER NOT NULL DEFAULT 0, FOREIGN KEY(data_id) REFERENCES data(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1614
    const-string/jumbo v0, "CREATE UNIQUE INDEX data_usage_stat_index ON data_usage_stat (data_id, usage_type);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1620
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS metadata_sync (_id INTEGER PRIMARY KEY AUTOINCREMENT,raw_contact_backup_id TEXT NOT NULL,account_id INTEGER NOT NULL,data TEXT,deleted INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1628
    const-string/jumbo v0, "CREATE UNIQUE INDEX IF NOT EXISTS metadata_sync_index ON metadata_sync (raw_contact_backup_id, account_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1633
    const-string/jumbo v0, "CREATE TABLE pre_authorized_uris (_id INTEGER PRIMARY KEY AUTOINCREMENT, uri STRING NOT NULL, expiration INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1638
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS metadata_sync_state (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id INTEGER NOT NULL,state BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1644
    const-string/jumbo v0, "CREATE UNIQUE INDEX IF NOT EXISTS metadata_sync_state_index ON metadata_sync_state (account_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1649
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1650
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1651
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1652
    invoke-direct {p0, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1653
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createPresenceTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1655
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1658
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->initializeAutoIncrementSequences(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1661
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1663
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseOptimizationEnabled:Z

    if-eqz v0, :cond_0

    .line 1665
    const-string/jumbo v0, "ANALYZE;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1667
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1670
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->postOnCreate()V

    .line 1671
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 2383
    const-string/jumbo v0, "ContactsDatabaseHelper"

    const-string/jumbo v1, "ContactsProvider cannot proceed because downgrading your database is not supported. To continue, please either re-upgrade to your previous Android version, or clear all application data in Contacts Storage (this will result in the loss of all local contacts that are not synced). To avoid data loss, your contacts database will not be wiped automatically."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2389
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 1107
    const-string/jumbo v0, "ContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WAL enabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->prepopulateCommonMimeTypes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1109
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1112
    const-string/jumbo v0, "DELETE FROM presence;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1113
    const-string/jumbo v0, "DELETE FROM agg_presence;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->loadDatabaseCreationTime(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1116
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11

    .prologue
    .line 2393
    const-string/jumbo v0, "ContactsDatabaseHelper"

    .line 2394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upgrading contacts2.db from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2393
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->prepopulateCommonMimeTypes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2398
    const/4 v1, 0x0

    .line 2399
    const/4 v3, 0x0

    .line 2400
    const/4 v5, 0x0

    .line 2401
    const/4 v2, 0x0

    .line 2403
    const/4 v4, 0x0

    .line 2404
    const/4 v0, 0x0

    .line 2406
    const/16 v6, 0x2bd

    if-ge p2, v6, :cond_37

    .line 2407
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion701(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2408
    const/16 v6, 0x2bd

    .line 2411
    :goto_0
    const/16 v7, 0x2be

    if-ge v6, v7, :cond_0

    .line 2412
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion702(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2413
    const/16 v6, 0x2be

    .line 2416
    :cond_0
    const/16 v7, 0x2bf

    if-ge v6, v7, :cond_1

    .line 2418
    const/4 v2, 0x1

    .line 2419
    const/16 v6, 0x2bf

    .line 2422
    :cond_1
    const/16 v7, 0x2c0

    if-ge v6, v7, :cond_2

    .line 2423
    const-string/jumbo v6, "DROP TABLE IF EXISTS activities;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2424
    const/16 v6, 0x2c0

    .line 2427
    :cond_2
    const/16 v7, 0x2c1

    if-ge v6, v7, :cond_3

    .line 2431
    const/4 v2, 0x1

    .line 2432
    const/16 v6, 0x2c1

    .line 2435
    :cond_3
    const/16 v7, 0x2c2

    if-ge v6, v7, :cond_4

    .line 2438
    const/4 v4, 0x1

    .line 2439
    const/16 v6, 0x2c2

    .line 2442
    :cond_4
    const/16 v7, 0x2c3

    if-ge v6, v7, :cond_5

    .line 2443
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion707(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2444
    const/4 v1, 0x1

    .line 2445
    const/16 v6, 0x2c3

    .line 2448
    :cond_5
    const/16 v7, 0x2c4

    if-ge v6, v7, :cond_6

    .line 2451
    const/4 v0, 0x1

    .line 2452
    const/16 v6, 0x2c4

    .line 2454
    :cond_6
    const/16 v7, 0x2c5

    if-ge v6, v7, :cond_36

    .line 2457
    const/4 v0, 0x1

    .line 2458
    const/16 v6, 0x2c5

    move v7, v0

    move v0, v6

    .line 2461
    :goto_1
    const/16 v6, 0x2c6

    if-ge v0, v6, :cond_7

    .line 2462
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion710(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2463
    const/4 v1, 0x1

    .line 2464
    const/16 v0, 0x2c6

    .line 2467
    :cond_7
    const/16 v6, 0x320

    if-ge v0, v6, :cond_8

    .line 2468
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion800(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2469
    const/16 v0, 0x320

    .line 2472
    :cond_8
    const/16 v6, 0x321

    if-ge v0, v6, :cond_9

    .line 2473
    const-string/jumbo v0, "database_time_created"

    .line 2474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2473
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v0, v6}, Lcom/android/providers/contacts/util/PropertyUtils;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    const/16 v0, 0x321

    .line 2478
    :cond_9
    const/16 v6, 0x322

    if-ge v0, v6, :cond_a

    .line 2479
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion802(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2480
    const/4 v1, 0x1

    .line 2481
    const/16 v0, 0x322

    .line 2484
    :cond_a
    const/16 v6, 0x323

    if-ge v0, v6, :cond_b

    .line 2487
    const/4 v2, 0x1

    .line 2488
    const/16 v0, 0x323

    .line 2491
    :cond_b
    const/16 v6, 0x324

    if-ge v0, v6, :cond_c

    .line 2493
    const/16 v0, 0x324

    .line 2496
    :cond_c
    const/16 v6, 0x384

    if-ge v0, v6, :cond_d

    .line 2497
    const/4 v1, 0x1

    .line 2498
    const/16 v0, 0x384

    .line 2501
    :cond_d
    const/16 v6, 0x385

    if-ge v0, v6, :cond_e

    .line 2504
    const/4 v2, 0x1

    .line 2505
    const/16 v0, 0x385

    .line 2508
    :cond_e
    const/16 v6, 0x386

    if-ge v0, v6, :cond_f

    .line 2509
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion902(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2510
    const/16 v0, 0x386

    .line 2513
    :cond_f
    const/16 v6, 0x387

    if-ge v0, v6, :cond_10

    .line 2514
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion903(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2515
    const/16 v0, 0x387

    .line 2518
    :cond_10
    const/16 v6, 0x388

    if-ge v0, v6, :cond_11

    .line 2519
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion904(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2520
    const/16 v0, 0x388

    .line 2523
    :cond_11
    const/16 v6, 0x389

    if-ge v0, v6, :cond_12

    .line 2524
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion905(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2525
    const/16 v0, 0x389

    .line 2528
    :cond_12
    const/16 v6, 0x38a

    if-ge v0, v6, :cond_13

    .line 2529
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion906(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2530
    const/16 v0, 0x38a

    .line 2533
    :cond_13
    const/16 v6, 0x38b

    if-ge v0, v6, :cond_14

    .line 2535
    const/4 v3, 0x1

    .line 2536
    const/16 v0, 0x38b

    .line 2539
    :cond_14
    const/16 v6, 0x38c

    if-ge v0, v6, :cond_15

    .line 2540
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion908(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2541
    const/16 v0, 0x38c

    .line 2544
    :cond_15
    const/16 v6, 0x38d

    if-ge v0, v6, :cond_16

    .line 2545
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion909(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2546
    const/16 v0, 0x38d

    .line 2549
    :cond_16
    const/16 v6, 0x38e

    if-ge v0, v6, :cond_17

    .line 2550
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion910(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2551
    const/16 v0, 0x38e

    .line 2553
    :cond_17
    const/16 v6, 0x3e8

    if-ge v0, v6, :cond_18

    .line 2554
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2555
    const/4 v1, 0x1

    .line 2556
    const/16 v0, 0x3e8

    .line 2559
    :cond_18
    const/16 v6, 0x3ea

    if-ge v0, v6, :cond_19

    .line 2560
    const/4 v4, 0x1

    .line 2561
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1002(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2562
    const/16 v0, 0x3ea

    .line 2565
    :cond_19
    const/16 v6, 0x3eb

    if-ge v0, v6, :cond_1a

    .line 2566
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1003(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2567
    const/16 v0, 0x3eb

    .line 2570
    :cond_1a
    const/16 v6, 0x3ec

    if-ge v0, v6, :cond_1b

    .line 2571
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1004(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2572
    const/16 v0, 0x3ec

    .line 2575
    :cond_1b
    const/16 v6, 0x3ed

    if-ge v0, v6, :cond_1c

    .line 2576
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1005(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2577
    const/16 v0, 0x3ed

    .line 2580
    :cond_1c
    const/16 v6, 0x3ee

    if-ge v0, v6, :cond_1d

    .line 2581
    const/4 v1, 0x1

    .line 2582
    const/16 v0, 0x3ee

    .line 2585
    :cond_1d
    const/16 v6, 0x3ef

    if-ge v0, v6, :cond_1e

    .line 2586
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1007(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2587
    const/16 v0, 0x3ef

    .line 2590
    :cond_1e
    const/16 v6, 0x3f1

    if-ge v0, v6, :cond_1f

    .line 2591
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1009(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2592
    const/16 v0, 0x3f1

    .line 2595
    :cond_1f
    const/16 v6, 0x44c

    if-ge v0, v6, :cond_20

    .line 2596
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2597
    const/4 v1, 0x1

    .line 2598
    const/16 v0, 0x44c

    .line 2601
    :cond_20
    const/16 v6, 0x44d

    if-ge v0, v6, :cond_21

    .line 2602
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1101(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2603
    const/16 v0, 0x44d

    .line 2606
    :cond_21
    const/16 v6, 0x44e

    if-ge v0, v6, :cond_22

    .line 2609
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1009(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2610
    const/16 v0, 0x44e

    .line 2613
    :cond_22
    const/16 v6, 0x44f

    if-ge v0, v6, :cond_23

    .line 2614
    const/4 v1, 0x1

    .line 2615
    const/16 v0, 0x44f

    .line 2618
    :cond_23
    const/16 v6, 0x450

    if-ge v0, v6, :cond_24

    .line 2619
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1104(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2620
    const/4 v1, 0x1

    .line 2621
    const/16 v0, 0x450

    .line 2624
    :cond_24
    const/16 v6, 0x451

    if-ge v0, v6, :cond_25

    .line 2625
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1105(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2626
    const/4 v1, 0x1

    .line 2627
    const/16 v0, 0x451

    .line 2630
    :cond_25
    const/16 v6, 0x452

    if-ge v0, v6, :cond_26

    .line 2631
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1106(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2632
    const/16 v0, 0x452

    .line 2635
    :cond_26
    const/16 v6, 0x453

    if-ge v0, v6, :cond_27

    .line 2636
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1107(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2637
    const/16 v0, 0x453

    .line 2640
    :cond_27
    const/16 v6, 0x454

    if-ge v0, v6, :cond_28

    .line 2641
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1108(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2642
    const/16 v0, 0x454

    .line 2645
    :cond_28
    const/16 v6, 0x455

    invoke-static {v0, p3, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isUpgradeRequired(III)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 2646
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1109(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2647
    const/16 v0, 0x455

    .line 2650
    :cond_29
    const/16 v6, 0x456

    invoke-static {v0, p3, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isUpgradeRequired(III)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 2651
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1110(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2652
    const/16 v0, 0x456

    .line 2655
    :cond_2a
    const/16 v6, 0x457

    invoke-static {v0, p3, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isUpgradeRequired(III)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 2656
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1111(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2657
    const/16 v0, 0x457

    .line 2660
    :cond_2b
    const/16 v6, 0x4b0

    invoke-static {v0, p3, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isUpgradeRequired(III)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 2661
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createPresenceTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2662
    const/16 v0, 0x4b0

    .line 2665
    :cond_2c
    const/16 v6, 0x4b1

    invoke-static {v0, p3, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isUpgradeRequired(III)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2666
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion1201(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2667
    const/4 v0, 0x1

    .line 2668
    const/16 v1, 0x4b1

    .line 2671
    :goto_2
    const/16 v6, 0x4b2

    invoke-static {v1, p3, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isUpgradeRequired(III)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 2672
    const/4 v0, 0x1

    .line 2673
    const/16 v1, 0x4b2

    move v6, v1

    .line 2679
    :goto_3
    if-eqz v0, :cond_33

    .line 2680
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2681
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2682
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2683
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2684
    const/4 v1, 0x1

    .line 2685
    const/4 v0, 0x1

    .line 2688
    :goto_4
    if-eqz v1, :cond_2d

    .line 2689
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2692
    :cond_2d
    if-eqz v7, :cond_32

    .line 2693
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeLocaleData(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2695
    const/4 v2, 0x0

    .line 2696
    const/4 v1, 0x1

    .line 2697
    const/4 v0, 0x1

    .line 2700
    :goto_5
    if-eqz v2, :cond_2e

    .line 2701
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildNameLookup(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2702
    const/4 v0, 0x1

    .line 2705
    :cond_2e
    if-eqz v1, :cond_2f

    .line 2706
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildSearchIndex(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2707
    const/4 v0, 0x1

    .line 2716
    :cond_2f
    if-eqz v0, :cond_30

    .line 2717
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2720
    :cond_30
    if-eq v6, p3, :cond_31

    .line 2721
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error upgrading the database to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2721
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2724
    :cond_31
    return-void

    :cond_32
    move v1, v2

    move v2, v3

    goto :goto_5

    :cond_33
    move v0, v4

    move v1, v5

    goto :goto_4

    :cond_34
    move v6, v1

    goto :goto_3

    :cond_35
    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_2

    :cond_36
    move v7, v0

    move v0, v6

    goto/16 :goto_1

    :cond_37
    move v6, p2

    goto/16 :goto_0
.end method

.method protected postOnCreate()V
    .locals 3

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->notifyProviderStatusChange(Landroid/content/Context;)V

    .line 1680
    const-string/jumbo v0, "com.android.contacts"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1679
    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1683
    new-instance v0, Landroid/content/Intent;

    .line 1684
    const-string/jumbo v1, "android.provider.Contacts.DATABASE_CREATED"

    .line 1683
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1685
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1686
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1687
    return-void
.end method

.method querySearchIndexContentForTest(J)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .prologue
    .line 4970
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4971
    const-string/jumbo v1, "SELECT content FROM search_index WHERE contact_id=CAST(? AS int)"

    .line 4974
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4970
    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method querySearchIndexTokensForTest(J)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .prologue
    .line 4979
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4980
    const-string/jumbo v1, "SELECT tokens FROM search_index WHERE contact_id=CAST(? AS int)"

    .line 4983
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4979
    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rawContactHasSuperPrimary(JJ)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4940
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4941
    const-string/jumbo v3, "SELECT EXISTS(SELECT 1 FROM data WHERE raw_contact_id=? AND mimetype_id=? AND is_super_primary<>0)"

    .line 4945
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 4940
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4947
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4949
    :catchall_0
    move-exception v0

    .line 4950
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4949
    throw v0

    .line 4948
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 4950
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4948
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected rebuildSearchIndex()V
    .locals 2

    .prologue
    .line 2737
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildSearchIndex(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2738
    return-void
.end method

.method public replaceStatusUpdate(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 4526
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4527
    const-string/jumbo v1, "INSERT OR REPLACE INTO status_updates(status_update_data_id, status_ts,status,status_res_package,status_icon,status_label) VALUES (?,?,?,?,?,?)"

    .line 4526
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4535
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4536
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4537
    const/4 v1, 0x3

    invoke-static {v0, v1, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4538
    const/4 v1, 0x4

    invoke-static {v0, v1, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4539
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4540
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4541
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4542
    return-void
.end method

.method protected setDatabaseCreationTime(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 1120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseCreationTime:J

    .line 1121
    const-string/jumbo v0, "database_time_created"

    .line 1122
    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseCreationTime:J

    .line 1121
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/util/PropertyUtils;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    return-void
.end method

.method public setIsPrimary(JJJ)V
    .locals 3

    .prologue
    .line 4827
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4828
    const-string/jumbo v1, "UPDATE data SET is_primary=(_id=?) WHERE mimetype_id=?   AND raw_contact_id=?"

    .line 4827
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4832
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4833
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4834
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4835
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4836
    return-void
.end method

.method public setIsSuperPrimary(JJJ)V
    .locals 3

    .prologue
    .line 4860
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4861
    const-string/jumbo v1, "UPDATE data SET is_super_primary=(_id=?) WHERE mimetype_id=?   AND raw_contact_id IN (SELECT _id FROM raw_contacts WHERE contact_id =(SELECT contact_id FROM raw_contacts WHERE _id=?))"

    .line 4860
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4871
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4872
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4873
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4874
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4875
    return-void
.end method

.method public setLocale(Lcom/android/providers/contacts/LocaleSet;)V
    .locals 6

    .prologue
    .line 2797
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->needsToUpdateLocaleData(Lcom/android/providers/contacts/LocaleSet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2798
    return-void

    .line 2800
    :cond_0
    const-string/jumbo v0, "ContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Switching to locale "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2801
    const-string/jumbo v2, " (ICU v"

    .line 2800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2801
    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v2

    .line 2800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2801
    const-string/jumbo v2, ")"

    .line 2800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2804
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2805
    invoke-virtual {p1}, Lcom/android/providers/contacts/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 2806
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2808
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildLocaleData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/LocaleSet;Z)V

    .line 2809
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2814
    const-string/jumbo v2, "ContactsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Locale change completed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    return-void

    .line 2810
    :catchall_0
    move-exception v0

    .line 2811
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2810
    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4429
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/providers/contacts/util/PropertyUtils;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 4430
    return-void
.end method

.method setUseStrictPhoneNumberComparisonForTest(Z)V
    .locals 0
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .prologue
    .line 4960
    iput-boolean p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    .line 4961
    return-void
.end method

.method public updateAllVisible()V
    .locals 4

    .prologue
    .line 4059
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4060
    return-void
.end method

.method public updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 2

    .prologue
    .line 4074
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z

    .line 4075
    return-void
.end method

.method public updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4079
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 4080
    invoke-direct {p0, v3, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4082
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 4083
    const-string/jumbo v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v6

    .line 4088
    const-string/jumbo v0, "SELECT EXISTS (SELECT contact_id FROM raw_contacts JOIN data   ON (raw_contacts._id=raw_contact_id) WHERE contact_id=?1   AND mimetype_id=?2) OR EXISTS (SELECT _id FROM raw_contacts WHERE contact_id=?1   AND NOT EXISTS (SELECT _id  FROM groups  WHERE raw_contacts.account_id = groups.account_id  AND auto_add != 0)) OR EXISTS (SELECT _id FROM raw_contacts WHERE contact_id=?1   AND raw_contacts.account_id=(SELECT _id FROM accounts WHERE account_name IS NULL AND account_type IS NULL AND data_set IS NULL))"

    .line 4114
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 4115
    aput-object v4, v5, v2

    .line 4116
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 4087
    invoke-static {v3, v0, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    .line 4117
    const-wide/16 v8, 0x0

    .line 4087
    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    move v0, v1

    .line 4119
    :goto_0
    if-eqz p4, :cond_1

    .line 4120
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v5

    .line 4121
    if-ne v5, v0, :cond_1

    .line 4122
    return v2

    :cond_0
    move v0, v2

    .line 4087
    goto :goto_0

    .line 4126
    :cond_1
    if-eqz v0, :cond_2

    .line 4127
    const-string/jumbo v0, "INSERT OR IGNORE INTO default_directory VALUES(?)"

    .line 4128
    new-array v5, v1, [Ljava/lang/String;

    aput-object v4, v5, v2

    .line 4127
    invoke-virtual {v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4129
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForContact(J)V

    .line 4138
    :goto_1
    return v1

    .line 4131
    :cond_2
    const-string/jumbo v0, "DELETE FROM default_directory WHERE _id=?"

    .line 4133
    new-array v5, v1, [Ljava/lang/String;

    aput-object v4, v5, v2

    .line 4131
    invoke-virtual {v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4134
    const-string/jumbo v0, "DELETE FROM search_index WHERE contact_id=CAST(? AS int)"

    .line 4136
    new-array v5, v1, [Ljava/lang/String;

    aput-object v4, v5, v2

    .line 4134
    invoke-virtual {v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public updateContactVisibleOnlyIfChanged(Lcom/android/providers/contacts/TransactionContext;J)Z
    .locals 2

    .prologue
    .line 4066
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z

    move-result v0

    return v0
.end method

.method public updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 16

    .prologue
    .line 4597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    if-nez v2, :cond_0

    .line 4598
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    .line 4601
    :cond_0
    const/4 v8, 0x0

    .line 4602
    const/4 v6, 0x0

    .line 4603
    const/4 v4, 0x0

    .line 4604
    const/4 v3, 0x0

    .line 4605
    const/4 v2, 0x0

    .line 4607
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v5, v9

    .line 4608
    const-string/jumbo v5, "SELECT mimetype_id,is_primary,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11 FROM data WHERE raw_contact_id=? AND (data1 NOT NULL OR data8 NOT NULL OR data9 NOT NULL OR data10 NOT NULL OR data4 NOT NULL)"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4610
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 4611
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 4612
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDisplayNameSourceForMimeTypeId(I)I

    move-result v7

    .line 4614
    const/16 v9, 0x28

    if-ne v7, v9, :cond_2

    .line 4615
    const/4 v9, 0x3

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4616
    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4617
    const/4 v12, 0x4

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4618
    const/4 v13, 0x7

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4619
    const/4 v14, 0x5

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4620
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4621
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 4620
    if-eqz v9, :cond_2

    .line 4621
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 4620
    if-eqz v9, :cond_2

    .line 4622
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 4620
    if-eqz v9, :cond_2

    .line 4625
    const/16 v7, 0x25

    .line 4629
    :cond_2
    if-lt v7, v8, :cond_1

    if-eqz v7, :cond_1

    .line 4633
    if-ne v7, v8, :cond_3

    .line 4634
    const/4 v9, 0x1

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_1

    .line 4638
    :cond_3
    int-to-long v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForStructuredName()J

    move-result-wide v14

    cmp-long v9, v12, v14

    if-nez v9, :cond_7

    .line 4640
    if-eqz v6, :cond_4

    .line 4641
    new-instance v5, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v5}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 4646
    :goto_1
    const/4 v9, 0x5

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 4647
    const/4 v9, 0x3

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 4648
    const/4 v9, 0x6

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 4649
    const/4 v9, 0x4

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 4650
    const/4 v9, 0x7

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 4651
    const/16 v9, 0xb

    invoke-interface {v10, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4652
    const/4 v9, 0x0

    .line 4651
    :goto_2
    iput v9, v5, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 4654
    const/16 v9, 0xa

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 4655
    const/16 v9, 0x9

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 4656
    const/16 v9, 0x8

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    .line 4657
    const/16 v9, 0xc

    invoke-interface {v10, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4658
    const/4 v9, 0x0

    .line 4657
    :goto_3
    iput v9, v5, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 4660
    invoke-virtual {v5}, Lcom/android/providers/contacts/NameSplitter$Name;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1d

    move v6, v7

    :goto_4
    move v8, v6

    move-object v6, v5

    goto/16 :goto_0

    .line 4643
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mName:Lcom/android/providers/contacts/NameSplitter$Name;

    .line 4644
    invoke-virtual {v5}, Lcom/android/providers/contacts/NameSplitter$Name;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4703
    :catchall_0
    move-exception v2

    .line 4704
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4703
    throw v2

    .line 4653
    :cond_5
    const/16 v9, 0xb

    :try_start_1
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    goto :goto_2

    .line 4659
    :cond_6
    const/16 v9, 0xc

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    goto :goto_3

    .line 4664
    :cond_7
    int-to-long v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForOrganization()J

    move-result-wide v14

    cmp-long v5, v12, v14

    if-nez v5, :cond_a

    .line 4665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    const/4 v9, 0x0

    iput v9, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 4666
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    const/4 v9, 0x2

    invoke-interface {v10, v9, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 4667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v5, :cond_9

    .line 4669
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    .line 4670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 4669
    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4672
    const/16 v2, 0x9

    .line 4671
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4674
    const/16 v2, 0xb

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4675
    const/4 v2, 0x0

    move-object v5, v6

    move v6, v7

    goto :goto_4

    .line 4676
    :cond_8
    const/16 v2, 0xb

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object v5, v6

    move v6, v7

    goto :goto_4

    .line 4678
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    const/4 v9, 0x5

    invoke-interface {v10, v9, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 4679
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v5, :cond_1d

    .line 4681
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    .line 4682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 4681
    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4683
    const/4 v3, 0x0

    .line 4684
    const/4 v2, 0x0

    move-object v5, v6

    move v6, v7

    goto/16 :goto_4

    .line 4691
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    const/4 v9, 0x0

    iput v9, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 4692
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    const/4 v9, 0x2

    invoke-interface {v10, v9, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 4693
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v5, :cond_1d

    .line 4695
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    .line 4696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 4695
    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4697
    const/4 v3, 0x0

    .line 4698
    const/4 v2, 0x0

    move-object v5, v6

    move v6, v7

    goto/16 :goto_4

    .line 4704
    :cond_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4711
    const/4 v11, 0x0

    .line 4712
    const/4 v10, 0x0

    .line 4713
    const/4 v5, 0x0

    .line 4715
    const/16 v7, 0x28

    if-eq v8, v7, :cond_c

    .line 4716
    const/16 v7, 0x25

    if-ne v8, v7, :cond_10

    .line 4717
    :cond_c
    iget v2, v6, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 4718
    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    .line 4719
    if-nez v2, :cond_e

    .line 4720
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v3, v2}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v2

    .line 4721
    iput v2, v6, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 4724
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v5, v7}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v9

    .line 4725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v5, v7}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 4727
    iget-object v3, v6, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v3, v5

    move-object v7, v9

    .line 4735
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v12, v6}, Lcom/android/providers/contacts/NameSplitter;->joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;

    move-result-object v13

    .line 4736
    iget v12, v6, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    move-object v6, v5

    move-object v5, v7

    move-object v7, v9

    move-object v9, v13

    .line 4742
    :goto_6
    if-eqz v9, :cond_11

    .line 4743
    if-nez v7, :cond_1c

    move-object v4, v9

    .line 4746
    :goto_7
    if-nez v6, :cond_1b

    move-object v2, v9

    .line 4752
    :goto_8
    if-nez v12, :cond_1a

    .line 4753
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v9}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v6

    move-object v7, v4

    move v10, v6

    move-object v4, v9

    move-object v6, v2

    move-object v2, v9

    .line 4772
    :goto_9
    if-nez v4, :cond_19

    move-object v2, v3

    move-object v3, v5

    .line 4777
    :goto_a
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getInstance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v11

    .line 4778
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 4779
    invoke-virtual {v11}, Lcom/android/providers/contacts/ContactLocaleUtils;->getNumberBucketIndex()I

    move-result v4

    .line 4781
    :goto_b
    invoke-virtual {v11, v4}, Lcom/android/providers/contacts/ContactLocaleUtils;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v12

    .line 4783
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 4784
    invoke-virtual {v11}, Lcom/android/providers/contacts/ContactLocaleUtils;->getNumberBucketIndex()I

    move-result v5

    .line 4786
    :goto_c
    invoke-virtual {v11, v5}, Lcom/android/providers/contacts/ContactLocaleUtils;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v11

    .line 4789
    const-string/jumbo v13, "UPDATE raw_contacts SET display_name_source=?,display_name=?,display_name_alt=?,phonetic_name=?,phonetic_name_style=?,sort_key=?,phonebook_label=?,phonebook_bucket=?,sort_key_alt=?,phonebook_label_alt=?,phonebook_bucket_alt=? WHERE _id=?"

    .line 4788
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    .line 4804
    int-to-long v14, v8

    const/4 v8, 0x1

    invoke-virtual {v13, v8, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4805
    const/4 v8, 0x2

    invoke-static {v13, v8, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4806
    const/4 v7, 0x3

    invoke-static {v13, v7, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4807
    const/4 v6, 0x4

    invoke-static {v13, v6, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4808
    int-to-long v6, v10

    const/4 v8, 0x5

    invoke-virtual {v13, v8, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4809
    const/4 v6, 0x6

    invoke-static {v13, v6, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4810
    const/4 v3, 0x7

    invoke-static {v13, v3, v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4811
    int-to-long v6, v4

    const/16 v3, 0x8

    invoke-virtual {v13, v3, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4812
    const/16 v3, 0x9

    invoke-static {v13, v3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4813
    const/16 v2, 0xa

    invoke-static {v13, v2, v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4814
    int-to-long v2, v5

    const/16 v4, 0xb

    invoke-virtual {v13, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4815
    const/16 v2, 0xc

    move-wide/from16 v0, p2

    invoke-virtual {v13, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4816
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4817
    return-void

    .line 4731
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    const/4 v7, 0x1

    const/4 v12, 0x0

    invoke-virtual {v3, v6, v7, v12}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v7

    .line 4732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v6, v12, v13}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_10
    move-object v6, v4

    move-object v7, v4

    move v12, v2

    move-object v9, v3

    move v2, v5

    move-object v3, v4

    move-object v5, v4

    .line 4739
    goto/16 :goto_6

    .line 4756
    :cond_11
    const/4 v12, 0x0

    .line 4757
    if-nez v2, :cond_14

    .line 4758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v4}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v2

    .line 4759
    if-eqz v2, :cond_12

    .line 4760
    const/4 v4, 0x2

    if-ne v2, v4, :cond_13

    .line 4761
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v4, v2, v12}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I

    move-result v2

    .line 4764
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v4, v2}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v2

    .line 4766
    :cond_14
    const/4 v4, 0x3

    if-eq v2, v4, :cond_15

    .line 4767
    const/4 v4, 0x2

    if-ne v2, v4, :cond_16

    :cond_15
    move-object v2, v5

    move-object v4, v5

    move v10, v12

    .line 4768
    goto/16 :goto_9

    :cond_16
    move-object v2, v10

    move-object v4, v11

    move v10, v12

    .line 4767
    goto/16 :goto_9

    .line 4780
    :cond_17
    invoke-virtual {v11, v3}, Lcom/android/providers/contacts/ContactLocaleUtils;->getBucketIndex(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_b

    .line 4785
    :cond_18
    invoke-virtual {v11, v2}, Lcom/android/providers/contacts/ContactLocaleUtils;->getBucketIndex(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_c

    :cond_19
    move-object v3, v4

    goto/16 :goto_a

    :cond_1a
    move-object v6, v2

    move-object v7, v4

    move v10, v12

    move-object v4, v9

    move-object v2, v9

    goto/16 :goto_9

    :cond_1b
    move-object v2, v6

    goto/16 :goto_8

    :cond_1c
    move-object v4, v7

    goto/16 :goto_7

    :cond_1d
    move-object v5, v6

    move v6, v8

    goto/16 :goto_4
.end method

.method public upgradeToVersion1002(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3220
    const-string/jumbo v0, "DROP TABLE IF EXISTS pre_authorized_uris;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3221
    const-string/jumbo v0, "CREATE TABLE pre_authorized_uris (_id INTEGER PRIMARY KEY AUTOINCREMENT, uri STRING NOT NULL, expiration INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3225
    return-void
.end method

.method public upgradeToVersion1003(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 3228
    const-string/jumbo v0, "ALTER TABLE calls ADD phone_account_address TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3236
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 3237
    if-eqz v0, :cond_1

    .line 3238
    const-string/jumbo v1, "ContactsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 3240
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    .line 3241
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 3242
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3243
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 3244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3245
    const-string/jumbo v4, "UPDATE calls SET subscription_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3246
    invoke-static {v3, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3247
    const-string/jumbo v2, " WHERE subscription_id="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3248
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3249
    const-string/jumbo v0, " AND subscription_component_name=\'com.android.phone/com.android.services.telephony.TelephonyConnectionService\';"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3252
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 3256
    :cond_1
    return-void
.end method

.method public upgradeToVersion1004(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3263
    const-string/jumbo v0, "ALTER TABLE calls ADD phone_account_hidden INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3264
    return-void
.end method

.method public upgradeToVersion1005(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3267
    const-string/jumbo v0, "ALTER TABLE calls ADD photo_uri TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3268
    return-void
.end method

.method public upgradeToVersion1007(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3278
    :try_start_0
    const-string/jumbo v0, "ALTER TABLE voicemail_status ADD phone_account_component_name TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3279
    const-string/jumbo v0, "ALTER TABLE voicemail_status ADD phone_account_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3282
    const-string/jumbo v0, "ALTER TABLE calls ADD dirty INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3283
    const-string/jumbo v0, "ALTER TABLE calls ADD deleted INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3289
    :goto_0
    return-void

    .line 3284
    :catch_0
    move-exception v0

    .line 3287
    const-string/jumbo v0, "ContactsDatabaseHelper"

    const-string/jumbo v1, "Version 1007: Columns already exist, skipping upgrade steps."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public upgradeToVersion1009(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3294
    :try_start_0
    const-string/jumbo v0, "ALTER TABLE data ADD carrier_presence INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3297
    :goto_0
    return-void

    .line 3295
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public upgradeToVersion1101(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3309
    const-string/jumbo v0, "UPDATE data SET hash_id=? WHERE _id=?"

    .line 3308
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 3313
    const-string/jumbo v1, "data"

    .line 3314
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v0, "data1"

    aput-object v0, v2, v4

    const-string/jumbo v0, "data2"

    aput-object v0, v2, v5

    const-string/jumbo v0, "data15"

    aput-object v0, v2, v7

    .line 3315
    const-string/jumbo v7, "_id"

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 3313
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3317
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3318
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3319
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3320
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3321
    const/4 v5, 0x3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 3322
    invoke-virtual {p0, v0, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->legacyGenerateHashId(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 3323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3324
    const/4 v4, 0x1

    invoke-virtual {v8, v4, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 3325
    const/4 v0, 0x2

    invoke-virtual {v8, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3326
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3329
    :catchall_0
    move-exception v0

    .line 3330
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3329
    throw v0

    .line 3330
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3332
    return-void
.end method

.method public upgradeToVersion1104(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3341
    const-string/jumbo v0, "DROP TABLE IF EXISTS metadata_sync;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3342
    const-string/jumbo v0, "CREATE TABLE metadata_sync (_id INTEGER PRIMARY KEY AUTOINCREMENT, raw_contact_backup_id TEXT NOT NULL, account_id INTEGER NOT NULL, data TEXT, deleted INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3345
    const-string/jumbo v0, "CREATE UNIQUE INDEX metadata_sync_index ON metadata_sync (raw_contact_backup_id, account_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3347
    return-void
.end method

.method public upgradeToVersion1105(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3353
    const-string/jumbo v0, "DROP TABLE IF EXISTS metadata_sync_state;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3354
    const-string/jumbo v0, "CREATE TABLE metadata_sync_state (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_id INTEGER NOT NULL, state BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3357
    const-string/jumbo v0, "CREATE UNIQUE INDEX metadata_sync_state_index ON metadata_sync_state (account_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3359
    return-void
.end method

.method public upgradeToVersion1106(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3362
    const-string/jumbo v0, "ALTER TABLE calls ADD post_dial_digits TEXT NOT NULL DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3363
    return-void
.end method

.method public upgradeToVersion1107(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3367
    :try_start_0
    const-string/jumbo v0, "ALTER TABLE calls ADD post_dial_digits TEXT NOT NULL DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3373
    :goto_0
    return-void

    .line 3368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public upgradeToVersion1108(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3377
    const-string/jumbo v0, "ALTER TABLE calls ADD add_for_all_users INTEGER NOT NULL DEFAULT 1"

    .line 3376
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3378
    return-void
.end method

.method public upgradeToVersion1109(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3381
    const-string/jumbo v0, "ALTER TABLE voicemail_status ADD quota_occupied INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3382
    const-string/jumbo v0, "ALTER TABLE voicemail_status ADD quota_total INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3383
    const-string/jumbo v0, "ALTER TABLE calls ADD last_modified INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3384
    return-void
.end method

.method public upgradeToVersion1110(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    .line 3392
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    .line 3391
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 3393
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3394
    const-string/jumbo v3, "hash_id"

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPhotoHashId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3395
    const-string/jumbo v3, "data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3396
    return-void
.end method

.method public upgradeToVersion1111(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 3406
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getInstance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v0

    .line 3407
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getNumberBucketIndex()I

    move-result v1

    .line 3408
    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 3410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UPDATE raw_contacts SET phonebook_bucket = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3411
    const-string/jumbo v3, ", phonebook_label=\'"

    .line 3410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3411
    const-string/jumbo v3, "\' WHERE sort_key IS NULL AND phonebook_bucket=0;"

    .line 3410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UPDATE raw_contacts SET phonebook_bucket_alt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3413
    const-string/jumbo v2, ", phonebook_label_alt=\'"

    .line 3412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3414
    const-string/jumbo v1, "\' WHERE sort_key_alt IS NULL AND phonebook_bucket_alt=0;"

    .line 3412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3416
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/FastScrollingIndexCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->invalidate()V

    .line 3417
    return-void
.end method

.method public upgradeToVersion906(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3167
    const-string/jumbo v0, "UPDATE contacts SET pinned = pinned + 1 WHERE pinned >= 0 AND pinned < 2147483647;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3169
    const-string/jumbo v0, "UPDATE raw_contacts SET pinned = pinned + 1 WHERE pinned >= 0 AND pinned < 2147483647;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3172
    const-string/jumbo v0, "UPDATE contacts SET pinned = 0 WHERE pinned = 2147483647;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3174
    const-string/jumbo v0, "UPDATE raw_contacts SET pinned = 0 WHERE pinned = 2147483647;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3176
    return-void
.end method

.method public upsertMetadataSync(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)J
    .locals 4

    .prologue
    .line 4987
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4988
    const-string/jumbo v1, "INSERT OR REPLACE INTO metadata_sync(raw_contact_backup_id, account_id, data,deleted) VALUES (?,?,?,?)"

    .line 4987
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4994
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4995
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4996
    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    .line 4997
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4998
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4999
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public validateContentValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 5057
    new-instance v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$2;

    invoke-direct {v0, p0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper$2;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/content/ContentValues;)V

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->runSqlValidation(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 5065
    return-void
.end method

.method public validateProjection(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 5072
    if-eqz p2, :cond_0

    .line 5073
    new-instance v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$3;

    invoke-direct {v0, p0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper$3;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;[Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->runSqlValidation(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 5082
    :cond_0
    return-void
.end method

.method public validateSql(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 5044
    new-instance v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$1;

    invoke-direct {v0, p0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper$1;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->runSqlValidation(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 5050
    return-void
.end method

.method public wipeData()V
    .locals 2

    .prologue
    .line 3779
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3781
    const-string/jumbo v1, "DELETE FROM accounts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3782
    const-string/jumbo v1, "DELETE FROM contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3783
    const-string/jumbo v1, "DELETE FROM raw_contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3784
    const-string/jumbo v1, "DELETE FROM stream_items;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3785
    const-string/jumbo v1, "DELETE FROM stream_item_photos;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3786
    const-string/jumbo v1, "DELETE FROM photo_files;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3787
    const-string/jumbo v1, "DELETE FROM data;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3788
    const-string/jumbo v1, "DELETE FROM phone_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3789
    const-string/jumbo v1, "DELETE FROM name_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3790
    const-string/jumbo v1, "DELETE FROM groups;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3791
    const-string/jumbo v1, "DELETE FROM agg_exceptions;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3792
    const-string/jumbo v1, "DELETE FROM settings;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3793
    const-string/jumbo v1, "DELETE FROM directories;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3794
    const-string/jumbo v1, "DELETE FROM search_index;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3795
    const-string/jumbo v1, "DELETE FROM deleted_contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3796
    const-string/jumbo v1, "DELETE FROM mimetypes;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3797
    const-string/jumbo v1, "DELETE FROM packages;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3798
    const-string/jumbo v1, "DELETE FROM presence;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3799
    const-string/jumbo v1, "DELETE FROM agg_presence;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3801
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->prepopulateCommonMimeTypes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3803
    return-void
.end method
