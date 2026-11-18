.class public abstract Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregateExceptionPrefetchQuery;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregateExceptionQuery;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$ContactIdQuery;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$EmailLookupQuery;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$LookupKeyQuery;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupMatchQueryWithParameter;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupQuery;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhoneLookupQuery;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoFileQuery;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoIdQuery;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdAndAccountQuery;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdAndAggregationModeQuery;,
        Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdQuery;
    }
.end annotation


# static fields
.field static final AGGREGATION_CONTACT_SIZE_LIMIT:I = 0x32

.field protected static final DEBUG_LOGGING:Z

.field protected static final PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

.field protected static final SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

.field protected static final VERBOSE_LOGGING:Z


# instance fields
.field protected mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

.field protected mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

.field protected final mAggregationExceptionIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mAggregationExceptionIdsValid:Z

.field protected mCandidates:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

.field protected final mCommonNicknameCache:Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

.field protected mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field protected mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field protected mContactInsert:Landroid/database/sqlite/SQLiteStatement;

.field protected mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

.field protected final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field protected final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field protected mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

.field protected mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field protected mEnabled:Z

.field protected mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

.field protected mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

.field protected mMimeTypeIdEmail:J

.field protected mMimeTypeIdIdentity:J

.field protected mMimeTypeIdPhone:J

.field protected mMimeTypeIdPhoto:J

.field protected final mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field protected mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field protected mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

.field protected mPinnedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field protected mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field protected mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

.field protected mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawContactsQueryByContactId:Ljava/lang/String;

.field protected mRawContactsQueryByRawContactId:Ljava/lang/String;

.field protected mResetPinnedForRawContact:Landroid/database/sqlite/SQLiteStatement;

.field protected mSb:Ljava/lang/StringBuilder;

.field protected mSelectionArgs1:[Ljava/lang/String;

.field protected mSelectionArgs2:[Ljava/lang/String;

.field protected mSendToVoicemailUpdate:Landroid/database/sqlite/SQLiteStatement;

.field protected mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    const-string/jumbo v0, "ContactAggregator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->DEBUG_LOGGING:Z

    .line 91
    const-string/jumbo v0, "ContactAggregator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->VERBOSE_LOGGING:Z

    .line 128
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    .line 133
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-boolean v6, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mEnabled:Z

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;

    .line 176
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    .line 177
    new-array v0, v7, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSb:Ljava/lang/StringBuilder;

    .line 186
    new-instance v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    invoke-direct {v0}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mCandidates:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    .line 187
    new-instance v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    invoke-direct {v0}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    .line 955
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mAggregationExceptionIds:Landroid/util/ArraySet;

    .line 279
    iput-object p1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 280
    iput-object p2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 281
    iput-object p3, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    .line 282
    iput-object p4, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 283
    iput-object p5, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mCommonNicknameCache:Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

    .line 285
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 290
    const-string/jumbo v1, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    .line 309
    const-string/jumbo v1, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 312
    const-string/jumbo v1, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=? AND _id<>?"

    .line 311
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 318
    const-string/jumbo v1, "DELETE FROM agg_presence WHERE presence_contact_id=?"

    .line 317
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 322
    const-string/jumbo v1, "UPDATE raw_contacts SET aggregation_needed=1 WHERE _id=? AND aggregation_needed=0"

    .line 321
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    .line 328
    const-string/jumbo v1, "UPDATE contacts SET photo_id=?,photo_file_id=?  WHERE _id=?"

    .line 327
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 333
    const-string/jumbo v1, "UPDATE contacts SET name_raw_contact_id=?  WHERE _id=?"

    .line 332
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 338
    const-string/jumbo v1, "UPDATE contacts SET lookup=?  WHERE _id=?"

    .line 337
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 342
    const-string/jumbo v1, "UPDATE contacts SET starred=(SELECT (CASE WHEN COUNT(starred)=0 THEN 0 ELSE 1 END) FROM raw_contacts WHERE contact_id=contacts._id AND starred=1) WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 348
    const-string/jumbo v1, "UPDATE contacts SET send_to_voicemail=(CASE WHEN (SELECT COUNT( send_to_voicemail) FROM raw_contacts WHERE contact_id=contacts._id AND send_to_voicemail=1) = (SELECT COUNT(send_to_voicemail) FROM raw_contacts WHERE contact_id=contacts._id) THEN 1 ELSE 0 END) WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSendToVoicemailUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 357
    const-string/jumbo v1, "UPDATE contacts SET pinned = IFNULL((SELECT MIN(pinned) FROM raw_contacts WHERE contact_id=contacts._id AND pinned>0),0) WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPinnedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 365
    const-string/jumbo v1, "UPDATE raw_contacts SET contact_id=?, aggregation_needed=0 WHERE _id=?"

    .line 364
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 371
    const-string/jumbo v1, "UPDATE raw_contacts SET contact_id=? WHERE _id=?"

    .line 370
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 376
    const-string/jumbo v1, "UPDATE presence SET presence_contact_id=? WHERE presence_raw_contact_id=?"

    .line 375
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 380
    const-string/jumbo v1, "UPDATE contacts SET name_raw_contact_id=?, photo_id=?, photo_file_id=?, send_to_voicemail=?, custom_ringtone=?, x_last_time_contacted=?, x_times_contacted=?, starred=?, pinned=?, has_phone_number=?, lookup=?, contact_last_updated_timestamp=?  WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 381
    const-string/jumbo v1, "INSERT INTO contacts (name_raw_contact_id, photo_id, photo_file_id, send_to_voicemail, custom_ringtone, x_last_time_contacted, x_times_contacted, starred, pinned, has_phone_number, lookup, contact_last_updated_timestamp)  VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 384
    const-string/jumbo v1, "UPDATE raw_contacts SET pinned=0 WHERE _id=?"

    .line 383
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mResetPinnedForRawContact:Landroid/database/sqlite/SQLiteStatement;

    .line 388
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdEmail:J

    .line 389
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v1, "vnd.android.cursor.item/identity"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdIdentity:J

    .line 390
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdPhoto:J

    .line 391
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdPhone:J

    .line 394
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 395
    const-string/jumbo v1, "SELECT raw_contacts._id,display_name,display_name_source,accounts.account_type,accounts.account_name,accounts.data_set,sourceid,custom_ringtone,send_to_voicemail,x_last_time_contacted,x_times_contacted,starred,pinned,data._id,data.mimetype_id,is_super_primary,data14, EXISTS(SELECT 1  FROM data d  WHERE d.mimetype_id=%d  AND d.raw_contact_id=raw_contacts._id AND d.is_super_primary=1) FROM raw_contacts JOIN accounts ON (accounts._id=raw_contacts.account_id) LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE raw_contacts._id=?"

    .line 394
    new-array v2, v9, [Ljava/lang/Object;

    .line 396
    iget-object v3, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForStructuredName()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    iget-wide v4, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v4, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    .line 394
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    .line 398
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 399
    const-string/jumbo v1, "SELECT raw_contacts._id,display_name,display_name_source,accounts.account_type,accounts.account_name,accounts.data_set,sourceid,custom_ringtone,send_to_voicemail,x_last_time_contacted,x_times_contacted,starred,pinned,data._id,data.mimetype_id,is_super_primary,data14, EXISTS(SELECT 1  FROM data d  WHERE d.mimetype_id=%d  AND d.raw_contact_id=raw_contacts._id AND d.is_super_primary=1) FROM raw_contacts JOIN accounts ON (accounts._id=raw_contacts.account_id) LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE contact_id=? AND deleted=0"

    .line 398
    new-array v2, v9, [Ljava/lang/Object;

    .line 400
    iget-object v3, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForStructuredName()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    iget-wide v4, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v4, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    .line 398
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    .line 401
    return-void
.end method

.method private getPhotoMetadata(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 1721
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getMaxThumbnailDim()I

    move-result v0

    .line 1725
    new-instance v1, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;

    mul-int/2addr v0, v0

    invoke-direct {v1, p0, v0, v8, v5}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;IILcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;)V

    return-object v1

    .line 1727
    :cond_0
    const-string/jumbo v1, "photo_files"

    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoFileQuery;->COLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    .line 1728
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 1727
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1730
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 1731
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1733
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    mul-int/2addr v0, v2

    .line 1734
    new-instance v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;IILcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1734
    return-object v2

    .line 1737
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1740
    new-instance v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;

    invoke-direct {v0, p0, v8, v8, v5}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;IILcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;)V

    return-object v0

    .line 1736
    :catchall_0
    move-exception v0

    .line 1737
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1736
    throw v0
.end method

.method private hasHigherPhotoPriority(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;ILcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1384
    invoke-virtual {p1, p3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;->compareTo(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;)I

    move-result v2

    .line 1385
    if-ltz v2, :cond_0

    if-nez v2, :cond_1

    if-le p2, p4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private processDisplayNameCandidate(JLjava/lang/String;IZZ)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1567
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iget-wide v2, v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1592
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1593
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iput-wide p1, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->rawContactId:J

    .line 1594
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iput-object p3, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 1595
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iput p4, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->displayNameSource:I

    .line 1596
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iput-boolean p6, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->isNameSuperPrimary:Z

    .line 1597
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iput-boolean p5, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->writableAccount:Z

    .line 1599
    :cond_1
    return-void

    .line 1570
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1571
    if-nez p6, :cond_0

    .line 1574
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iget-boolean v2, v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->isNameSuperPrimary:Z

    if-ne v2, p6, :cond_4

    .line 1575
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iget v2, v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-lt v2, p4, :cond_0

    .line 1578
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iget v2, v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-ne v2, p4, :cond_4

    .line 1579
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iget-boolean v2, v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->writableAccount:Z

    if-nez v2, :cond_3

    if-nez p5, :cond_0

    .line 1581
    :cond_3
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iget-boolean v2, v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->writableAccount:Z

    if-ne v2, p5, :cond_4

    .line 1583
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iget-object v2, v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 1582
    invoke-static {p3, v2}, Lcom/android/providers/contacts/NameNormalizer;->compareComplexity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/MatchScore;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1991
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1992
    const-string/jumbo v2, "_id"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    const-string/jumbo v2, " IN ("

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1994
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 1995
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 1996
    if-eqz v3, :cond_0

    .line 1997
    const-string/jumbo v4, ","

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    :cond_0
    invoke-virtual {v2}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1994
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 2001
    :cond_1
    const-string/jumbo v2, ")"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2004
    const-string/jumbo v2, " AND _id IN "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v0, p6

    invoke-virtual {v2, v10, v0}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2008
    :cond_2
    const-string/jumbo v2, " AND (account_type!= \'com.android.sim\' OR account_type IS NULL)"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 2013
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$ContactIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2014
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    .line 2013
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2016
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2017
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2019
    :catchall_0
    move-exception v2

    .line 2020
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2019
    throw v2

    .line 2020
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2024
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2025
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2026
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    invoke-virtual {v2}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v4

    .line 2027
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2028
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 2034
    :cond_5
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p5

    if-le v2, v0, :cond_6

    .line 2035
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p4

    .line 2041
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2042
    const-string/jumbo v2, "_id"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    const-string/jumbo v2, " IN ("

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    .line 2045
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 2046
    if-eqz v3, :cond_7

    .line 2047
    const-string/jumbo v4, ","

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    :cond_7
    invoke-virtual {v2}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2044
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 2051
    :cond_8
    const-string/jumbo v2, ")"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "_id"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2057
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2058
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 2059
    invoke-virtual {v2}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2062
    :cond_9
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2065
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [I

    .line 2066
    const/4 v2, 0x0

    move v3, v2

    :goto_5
    array-length v2, v6

    if-ge v3, v2, :cond_a

    .line 2067
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    invoke-virtual {v2}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v8

    .line 2068
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aput v2, v6, v3

    .line 2066
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 2071
    :cond_a
    new-instance v2, Lcom/android/providers/contacts/ReorderingCursorWrapper;

    invoke-direct {v2, v4, v6}, Lcom/android/providers/contacts/ReorderingCursorWrapper;-><init>(Landroid/database/Cursor;[I)V

    return-object v2
.end method

.method private setContactIdAndMarkAggregated(JJ)V
    .locals 3

    .prologue
    .line 922
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 924
    const-string/jumbo v0, "ContactAggregator"

    const-string/jumbo v1, "Detected contact-id 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 927
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 928
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 929
    return-void
.end method

.method private setPresenceContactId(JJ)V
    .locals 3

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 933
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 934
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 935
    return-void
.end method

.method private updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1877
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->computeLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 1879
    if-nez v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1884
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1886
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1887
    return-void

    .line 1882
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 674
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mEnabled:Z

    if-nez v0, :cond_0

    .line 675
    return-void

    .line 678
    :cond_0
    new-instance v10, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    invoke-direct {v10}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;-><init>()V

    .line 682
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 683
    const-string/jumbo v1, "raw_contacts"

    .line 684
    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdAndAccountQuery;->COLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    .line 685
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v0, p2

    move-object v6, v5

    move-object v7, v5

    .line 683
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 687
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 689
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 692
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 695
    invoke-virtual/range {v1 .. v10}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;)V

    .line 697
    return-void

    .line 691
    :catchall_0
    move-exception v0

    .line 692
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 691
    throw v0

    :cond_1
    move-wide v6, v8

    goto :goto_0
.end method

.method abstract aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;)V
.end method

.method public aggregateInTransaction(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 430
    if-nez v2, :cond_0

    .line 431
    return-void

    .line 434
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 435
    sget-boolean v3, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->DEBUG_LOGGING:Z

    if-eqz v3, :cond_1

    .line 436
    const-string/jumbo v3, "ContactAggregator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "aggregateInTransaction for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/16 v2, 0xabb

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 441
    const/4 v2, 0x0

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    const-string/jumbo v3, "SELECT _id,contact_id, account_id FROM raw_contacts WHERE _id IN("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 451
    if-lez v3, :cond_2

    .line 452
    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    :cond_2
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 455
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 458
    :cond_3
    const/16 v2, 0x29

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 466
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 467
    new-array v0, v13, [J

    move-object/from16 v16, v0

    .line 468
    new-array v0, v13, [J

    move-object/from16 v17, v0

    .line 469
    new-array v0, v13, [J

    move-object/from16 v18, v0

    .line 471
    const/4 v2, 0x0

    .line 472
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 473
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v16, v2

    .line 474
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v17, v2

    .line 475
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v18, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 479
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 482
    sget-boolean v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->DEBUG_LOGGING:Z

    if-eqz v2, :cond_5

    .line 483
    const-string/jumbo v2, "ContactAggregator"

    const-string/jumbo v3, "aggregateInTransaction: initial query done."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v13, :cond_6

    .line 487
    aget-wide v6, v16, v2

    aget-wide v8, v18, v2

    aget-wide v10, v17, v2

    .line 488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mCandidates:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 487
    invoke-virtual/range {v3 .. v12}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JJJLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;)V

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 478
    :catchall_0
    move-exception v2

    .line 479
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 478
    throw v2

    .line 491
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v14

    .line 492
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/16 v5, 0xabb

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 494
    sget-boolean v4, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->DEBUG_LOGGING:Z

    if-eqz v4, :cond_7

    .line 495
    const-string/jumbo v4, "ContactAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Contact aggregation complete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 496
    if-nez v13, :cond_8

    const-string/jumbo v2, ""

    .line 495
    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_7
    return-void

    .line 496
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, v13

    div-long/2addr v2, v8

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 497
    const-string/jumbo v3, " ms per raw contact"

    .line 496
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method protected appendLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1554
    invoke-static/range {p1 .. p7}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1556
    return-void
.end method

.method protected final buildEmailMatchingSql(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 767
    iget-wide v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdEmail:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " FROM data AS d1 JOIN data AS d2 ON d1.data1= d2.data1 WHERE d1.mimetype_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 773
    const-string/jumbo v2, " AND d2."

    .line 769
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 773
    const-string/jumbo v2, "mimetype_id"

    .line 769
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 773
    const-string/jumbo v2, " = "

    .line 769
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    const-string/jumbo v1, " AND d1."

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    const-string/jumbo v1, "raw_contact_id"

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    const-string/jumbo v1, " IN ("

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    const-string/jumbo v1, ")"

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const-string/jumbo v1, " AND d2."

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const-string/jumbo v1, "raw_contact_id"

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const-string/jumbo v1, " IN ("

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const-string/jumbo v1, ")"

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT count(*) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 777
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT d1.raw_contact_id,d2.raw_contact_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final buildExceptionMatchingSql(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT raw_contact_id1, raw_contact_id2 FROM agg_exceptions WHERE raw_contact_id1 IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 810
    const-string/jumbo v1, ")"

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 811
    const-string/jumbo v1, " AND "

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 811
    const-string/jumbo v1, "raw_contact_id2"

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 811
    const-string/jumbo v1, " IN ("

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 811
    const-string/jumbo v1, ")"

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 812
    const-string/jumbo v1, " AND "

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 812
    const-string/jumbo v1, "type"

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 812
    const-string/jumbo v1, "="

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 813
    const/4 v1, 0x1

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final buildIdentityMatchingSql(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 749
    iget-wide v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdIdentity:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 750
    if-eqz p3, :cond_0

    const-string/jumbo v0, "="

    .line 752
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " FROM data AS d1 JOIN data AS d2 ON (d1.data1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 755
    const-string/jumbo v2, " d2."

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 755
    const-string/jumbo v2, "data1"

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 755
    const-string/jumbo v2, " AND"

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 756
    const-string/jumbo v2, " d1."

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 756
    const-string/jumbo v2, "data2"

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 756
    const-string/jumbo v2, " = d2."

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 756
    const-string/jumbo v2, "data2"

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 756
    const-string/jumbo v2, " )"

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 757
    const-string/jumbo v2, " WHERE d1."

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 757
    const-string/jumbo v2, "mimetype_id"

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 757
    const-string/jumbo v2, " = "

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 758
    const-string/jumbo v2, " AND d2."

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 758
    const-string/jumbo v2, "mimetype_id"

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 758
    const-string/jumbo v2, " = "

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 759
    const-string/jumbo v1, " AND d1."

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 759
    const-string/jumbo v1, "raw_contact_id"

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 759
    const-string/jumbo v1, " IN ("

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 759
    const-string/jumbo v1, ")"

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 760
    const-string/jumbo v1, " AND d2."

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 760
    const-string/jumbo v1, "raw_contact_id"

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 760
    const-string/jumbo v1, " IN ("

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 760
    const-string/jumbo v1, ")"

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    if-eqz p4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT count(*) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 750
    :cond_0
    const-string/jumbo v0, "!="

    goto/16 :goto_0

    .line 762
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT d1.raw_contact_id,d2.raw_contact_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected final buildPhoneMatchingSql(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 784
    iget-wide v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " FROM phone_lookup AS p1 JOIN data AS d1 ON (d1._id=p1.data_id) JOIN phone_lookup AS p2 ON (p1.min_match=p2.min_match) JOIN data AS d2 ON (d2._id=p2.data_id) WHERE d1.mimetype_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 794
    const-string/jumbo v2, " AND d2."

    .line 786
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 794
    const-string/jumbo v2, "mimetype_id"

    .line 786
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 794
    const-string/jumbo v2, " = "

    .line 786
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 795
    const-string/jumbo v1, " AND d1."

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 795
    const-string/jumbo v1, "raw_contact_id"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 795
    const-string/jumbo v1, " IN ("

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 795
    const-string/jumbo v1, ")"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    const-string/jumbo v1, " AND d2."

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    const-string/jumbo v1, "raw_contact_id"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    const-string/jumbo v1, " IN ("

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    const-string/jumbo v1, ")"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 797
    const-string/jumbo v1, " AND PHONE_NUMBERS_EQUAL(d1."

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 797
    const-string/jumbo v1, "data1"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 797
    const-string/jumbo v1, ",d2."

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 797
    const-string/jumbo v1, "data1"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 797
    const-string/jumbo v1, ","

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 798
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 799
    const-string/jumbo v1, ")"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT count(*) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 801
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT d1.raw_contact_id,d2.raw_contact_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final clearPendingAggregations()V
    .locals 1

    .prologue
    .line 536
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;

    .line 537
    return-void
.end method

.method protected computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V
    .locals 4

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1375
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 1376
    return-void
.end method

.method protected final computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 38

    .prologue
    .line 1393
    const-wide/16 v10, -0x1

    .line 1394
    const-wide/16 v24, -0x1

    .line 1395
    const-wide/16 v22, 0x0

    .line 1396
    const/16 v20, 0x0

    .line 1397
    const/16 v19, 0x0

    .line 1398
    const/16 v18, -0x1

    .line 1399
    const/4 v8, 0x0

    .line 1400
    const/16 v26, 0x0

    .line 1401
    const/16 v21, 0x0

    .line 1402
    const-wide/16 v16, 0x0

    .line 1403
    const/4 v15, 0x0

    .line 1404
    const/4 v14, 0x0

    .line 1405
    const v13, 0x7fffffff

    .line 1406
    const/4 v4, 0x0

    .line 1407
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 1409
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    invoke-virtual {v5}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->clear()V

    .line 1411
    invoke-virtual/range {p1 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 1413
    :goto_0
    :try_start_0
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1414
    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1415
    cmp-long v5, v6, v10

    if-eqz v5, :cond_13

    .line 1417
    add-int/lit8 v30, v8, 0x1

    .line 1420
    const/4 v5, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1421
    const/4 v5, 0x5

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1422
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1423
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1427
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1428
    const/4 v5, 0x2

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1429
    const/16 v5, 0x11

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1431
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v10, v12}, Lcom/android/providers/contacts/ContactsProvider2;->isWritableAccountWithDataSet(Ljava/lang/String;)Z

    move-result v10

    .line 1432
    if-eqz v5, :cond_2

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v5, p0

    .line 1430
    invoke-direct/range {v5 .. v11}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->processDisplayNameCandidate(JLjava/lang/String;IZZ)V

    .line 1435
    const/16 v5, 0x8

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_12

    .line 1437
    const/16 v5, 0x8

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 1438
    :goto_2
    if-eqz v5, :cond_12

    .line 1439
    add-int/lit8 v26, v26, 0x1

    move/from16 v29, v26

    .line 1443
    :goto_3
    if-nez v21, :cond_4

    .line 1444
    const/4 v5, 0x7

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 1443
    if-eqz v5, :cond_11

    .line 1445
    const/4 v5, 0x7

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v28, v21

    .line 1448
    :goto_4
    const/16 v5, 0x9

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1449
    cmp-long v5, v26, v16

    if-lez v5, :cond_10

    .line 1453
    :goto_5
    const/16 v5, 0xa

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1454
    move/from16 v0, v21

    if-le v0, v15, :cond_f

    .line 1458
    :goto_6
    const/16 v5, 0xb

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_e

    .line 1459
    const/4 v9, 0x1

    .line 1464
    :goto_7
    const/16 v5, 0xc

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1465
    if-lez v5, :cond_d

    .line 1466
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1472
    :goto_8
    const/4 v10, 0x4

    move-object/from16 v0, v32

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1474
    const/4 v10, 0x6

    move-object/from16 v0, v32

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, p0

    move-object/from16 v11, v31

    move-wide v14, v6

    move-object/from16 v17, v8

    .line 1469
    invoke-virtual/range {v10 .. v17}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->appendLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    move v13, v5

    move v12, v9

    move/from16 v14, v21

    move-wide/from16 v16, v26

    move-object/from16 v15, v28

    move/from16 v21, v29

    move/from16 v26, v30

    move-wide/from16 v28, v6

    .line 1478
    :goto_9
    const/16 v5, 0xd

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1479
    const/16 v5, 0xd

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1480
    const/16 v5, 0x10

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1481
    const/16 v5, 0xe

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1482
    const/16 v5, 0xf

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move v6, v5

    .line 1483
    :goto_a
    int-to-long v0, v7

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdPhoto:J

    move-wide/from16 v36, v0

    cmp-long v5, v34, v36

    if-nez v5, :cond_6

    .line 1484
    if-nez v19, :cond_c

    .line 1488
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->getPhotoMetadata(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;

    move-result-object v7

    .line 1489
    const/4 v5, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/android/providers/contacts/PhotoPriorityResolver;->getPhotoPriority(Ljava/lang/String;)I

    move-result v5

    .line 1491
    if-nez v6, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v0, v7, v5, v1, v2}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->hasHigherPhotoPriority(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;ILcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;I)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 1497
    :cond_1
    or-int v6, v6, v19

    :goto_b
    move/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    move/from16 v8, v26

    move-wide/from16 v10, v28

    move/from16 v26, v21

    move-object/from16 v21, v15

    move v15, v14

    move v14, v12

    goto/16 :goto_0

    .line 1432
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1437
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_4
    move-object/from16 v28, v21

    .line 1444
    goto/16 :goto_4

    .line 1482
    :cond_5
    const/4 v5, 0x0

    move v6, v5

    goto :goto_a

    .line 1500
    :cond_6
    int-to-long v6, v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMimeTypeIdPhone:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v6, v8

    if-nez v5, :cond_c

    .line 1501
    const/4 v4, 0x1

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-wide/from16 v8, v22

    move-wide/from16 v10, v24

    goto :goto_b

    .line 1506
    :cond_7
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 1509
    const v5, 0x7fffffff

    if-ne v13, v5, :cond_b

    .line 1510
    const/4 v5, 0x0

    .line 1514
    :goto_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iget-wide v6, v6, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->rawContactId:J

    .line 1513
    const/4 v9, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1516
    const-wide/16 v6, -0x1

    cmp-long v6, v24, v6

    if-eqz v6, :cond_8

    .line 1517
    const/4 v6, 0x2

    move-object/from16 v0, p4

    move-wide/from16 v1, v24

    invoke-virtual {v0, v6, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1522
    :goto_d
    const-wide/16 v6, 0x0

    cmp-long v6, v22, v6

    if-eqz v6, :cond_9

    .line 1523
    const/4 v6, 0x3

    move-object/from16 v0, p4

    move-wide/from16 v1, v22

    invoke-virtual {v0, v6, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1529
    :goto_e
    move/from16 v0, v26

    if-ne v8, v0, :cond_a

    const/4 v6, 0x1

    :goto_f
    int-to-long v6, v6

    .line 1528
    const/4 v8, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1530
    const/4 v6, 0x5

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-static {v0, v6, v1}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1532
    const/4 v6, 0x6

    move-object/from16 v0, p4

    move-wide/from16 v1, v16

    invoke-virtual {v0, v6, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1535
    int-to-long v6, v15

    .line 1534
    const/4 v8, 0x7

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1537
    int-to-long v6, v14

    .line 1536
    const/16 v8, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1539
    int-to-long v6, v5

    .line 1538
    const/16 v5, 0x9

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1541
    int-to-long v4, v4

    .line 1540
    const/16 v6, 0xa

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1543
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1542
    const/16 v5, 0xb

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1545
    invoke-static {}, Lcom/android/providers/contacts/util/Clock;->getInstance()Lcom/android/providers/contacts/util/Clock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/contacts/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 1544
    const/16 v6, 0xc

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1546
    return-void

    .line 1505
    :catchall_0
    move-exception v4

    .line 1506
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 1505
    throw v4

    .line 1519
    :cond_8
    const/4 v6, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_d

    .line 1525
    :cond_9
    const/4 v6, 0x3

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 1529
    :cond_a
    const/4 v6, 0x0

    goto :goto_f

    :cond_b
    move v5, v13

    goto/16 :goto_c

    :cond_c
    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-wide/from16 v8, v22

    move-wide/from16 v10, v24

    goto/16 :goto_b

    :cond_d
    move v5, v13

    goto/16 :goto_8

    :cond_e
    move v9, v14

    goto/16 :goto_7

    :cond_f
    move/from16 v21, v15

    goto/16 :goto_6

    :cond_10
    move-wide/from16 v26, v16

    goto/16 :goto_5

    :cond_11
    move-object/from16 v28, v21

    goto/16 :goto_4

    :cond_12
    move/from16 v29, v26

    goto/16 :goto_3

    :cond_13
    move v12, v14

    move-wide/from16 v28, v10

    move v14, v15

    move-object/from16 v15, v21

    move/from16 v21, v26

    move/from16 v26, v8

    goto/16 :goto_9
.end method

.method protected computeLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .locals 10

    .prologue
    .line 1891
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1892
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1893
    const-string/jumbo v1, "view_raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$LookupKeyQuery;->COLUMNS:[Ljava/lang/String;

    .line 1894
    const-string/jumbo v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 1893
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1896
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1898
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1899
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1900
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1901
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1902
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    .line 1897
    invoke-static/range {v1 .. v7}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1904
    :catchall_0
    move-exception v0

    .line 1905
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1904
    throw v0

    .line 1905
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1907
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected final createContactForRawContacts(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Ljava/util/Set;Ljava/lang/Long;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/providers/contacts/TransactionContext;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 870
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    return-void

    .line 876
    :cond_0
    if-nez p4, :cond_1

    .line 877
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 878
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    .line 879
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 878
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 880
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .line 882
    :cond_1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 883
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 884
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->setPresenceContactId(JJ)V

    goto :goto_0

    .line 886
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 887
    return-void
.end method

.method protected final findConnectedRawContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 827
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    .line 828
    const-string/jumbo v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 829
    invoke-virtual {p0, v1, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->buildExceptionMatchingSql(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->findIdPairs(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/common/collect/Multimap;)V

    .line 832
    const/4 v2, 0x1

    .line 831
    invoke-virtual {p0, v1, v1, v2, v3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->buildIdentityMatchingSql(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->findIdPairs(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/common/collect/Multimap;)V

    .line 833
    invoke-virtual {p0, v1, v1, v3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->buildEmailMatchingSql(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->findIdPairs(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/common/collect/Multimap;)V

    .line 835
    invoke-virtual {p0, v1, v1, v3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->buildPhoneMatchingSql(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->findIdPairs(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/common/collect/Multimap;)V

    .line 838
    invoke-static {p2, v0}, Lcom/android/providers/contacts/aggregation/util/ContactAggregatorHelper;->findConnectedComponents(Ljava/util/Set;Lcom/google/common/collect/Multimap;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final findIdPairs(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/common/collect/Multimap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 848
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 850
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 851
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 853
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 854
    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 855
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p3, v0, v6}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 856
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 859
    :catchall_0
    move-exception v0

    .line 860
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 859
    throw v0

    .line 860
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 862
    return-void
.end method

.method protected abstract findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/aggregation/util/MatchScore;",
            ">;"
        }
    .end annotation
.end method

.method protected final insertContact(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 4

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 653
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 654
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public final invalidateAggregationExceptionCache()V
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 960
    return-void
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mEnabled:Z

    return v0
.end method

.method protected final isFirstColumnGreaterThanZero(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 817
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1006
    invoke-virtual {p4}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->clear()V

    .line 1007
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1008
    const-string/jumbo v1, "name_lookup"

    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 1009
    if-eqz p5, :cond_0

    .line 1010
    const-string/jumbo v3, "raw_contact_id=? AND name_type IN (0,1,2)"

    .line 1012
    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 1008
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1014
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1016
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1017
    invoke-virtual {p4, v0, v2}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->add(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1019
    :catchall_0
    move-exception v0

    .line 1020
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1019
    throw v0

    .line 1011
    :cond_0
    const-string/jumbo v3, "raw_contact_id=?"

    goto :goto_0

    .line 1020
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1022
    return-void
.end method

.method protected final markAggregated(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UPDATE raw_contacts SET aggregation_needed=0 WHERE _id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 914
    const-string/jumbo v1, ")"

    .line 912
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method public final markAllVisibleForAggregation(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 8

    .prologue
    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 609
    const-string/jumbo v2, "UPDATE raw_contacts SET aggregation_needed=1 WHERE contact_id IN default_directory AND aggregation_mode=0"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 616
    const-string/jumbo v2, "SELECT _id FROM raw_contacts WHERE aggregation_needed=1 AND deleted=0"

    .line 619
    const/4 v3, 0x0

    .line 616
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 621
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 622
    const/4 v4, -0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 623
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 624
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 625
    iget-object v6, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 626
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 625
    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 628
    :catchall_0
    move-exception v0

    .line 629
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 628
    throw v0

    .line 629
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 633
    const-string/jumbo v2, "ContactAggregator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Marked all visible contacts for aggregation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " raw contacts, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 634
    sub-long v0, v4, v0

    .line 633
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 634
    const-string/jumbo v1, " ms"

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return v3
.end method

.method protected final markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 577
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 578
    const-string/jumbo v1, "raw_contacts"

    .line 579
    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$RawContactIdAndAggregationModeQuery;->COLUMNS:[Ljava/lang/String;

    .line 580
    const-string/jumbo v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 578
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 582
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 585
    const/4 v0, 0x1

    .line 584
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 588
    if-nez v0, :cond_0

    .line 589
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->markForAggregation(JIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 595
    return-void

    .line 592
    :catchall_0
    move-exception v0

    .line 593
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 592
    throw v0
.end method

.method public final markForAggregation(JIZ)V
    .locals 3

    .prologue
    .line 545
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    if-nez p3, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 559
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 555
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public final markNewForAggregation(JI)V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mRawContactsMarkedForAggregation:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    return-void
.end method

.method public onRawContactInsert(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 3

    .prologue
    .line 645
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->insertContact(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    .line 646
    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->setContactId(JJ)V

    .line 647
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 648
    return-wide v0
.end method

.method protected final prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 969
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mAggregationExceptionIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 970
    const-string/jumbo v1, "agg_exceptions"

    .line 971
    sget-object v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregateExceptionPrefetchQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 970
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 975
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 977
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 978
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mAggregationExceptionIds:Landroid/util/ArraySet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mAggregationExceptionIds:Landroid/util/ArraySet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 981
    :catchall_0
    move-exception v0

    .line 982
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 981
    throw v0

    .line 982
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 985
    iput-boolean v8, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 986
    return-void
.end method

.method public final queryAggregationSuggestions(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "[",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$AggregationSuggestionParameter;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1957
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1958
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1960
    :try_start_0
    move-object/from16 v0, p7

    invoke-virtual {p0, v4, p3, p4, v0}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    .line 1961
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1962
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1963
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/aggregation/util/MatchScore;

    .line 1964
    invoke-virtual {v2}, Lcom/android/providers/contacts/aggregation/util/MatchScore;->getContactId()J

    move-result-wide v8

    .line 1965
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    cmp-long v7, v8, p3

    if-eqz v7, :cond_0

    .line 1966
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1967
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1972
    :catchall_0
    move-exception v2

    .line 1973
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1972
    throw v2

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move/from16 v7, p5

    move-object/from16 v8, p6

    .line 1970
    :try_start_1
    invoke-direct/range {v2 .. v8}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1973
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1970
    return-object v2
.end method

.method protected final setContactId(JJ)V
    .locals 3

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 902
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 903
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 904
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mEnabled:Z

    .line 405
    return-void
.end method

.method public final triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 4

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mEnabled:Z

    if-nez v0, :cond_0

    .line 504
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getAggregationMode(J)I

    move-result v0

    .line 508
    packed-switch v0, :pswitch_data_0

    .line 531
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 513
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->markForAggregation(JIZ)V

    goto :goto_0

    .line 518
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 520
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 521
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    goto :goto_0

    .line 527
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 2

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mEnabled:Z

    if-nez v0, :cond_0

    .line 701
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 706
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 707
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 709
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 710
    invoke-virtual {p0, p2, p3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updateAggregatedStatusUpdate(J)V

    .line 711
    return-void
.end method

.method protected final updateAggregatedStatusUpdate(J)V
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 715
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 716
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 717
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updateLastStatusUpdateId(J)V

    .line 718
    return-void
.end method

.method public abstract updateAggregationAfterVisibilityChange(J)V
.end method

.method public final updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1783
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->clear()V

    .line 1785
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForStructuredName()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1786
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1787
    const-string/jumbo v1, "SELECT _id,display_name,display_name_source, EXISTS(SELECT 1  FROM data d  WHERE d.mimetype_id=?  AND d.raw_contact_id=view_raw_contacts._id AND d.is_super_primary=1),sourceid,account_type_and_data_set FROM view_raw_contacts WHERE contact_id=? "

    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move v9, v8

    .line 1789
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1790
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1791
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1792
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1793
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1795
    const/4 v6, 0x5

    .line 1794
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1797
    iget-object v7, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v7, v6}, Lcom/android/providers/contacts/ContactsProvider2;->isWritableAccountWithDataSet(Ljava/lang/String;)Z

    move-result v6

    .line 1798
    if-eqz v1, :cond_0

    move v7, v0

    :goto_1
    move-object v1, p0

    .line 1796
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->processDisplayNameCandidate(JLjava/lang/String;IZZ)V

    .line 1802
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    or-int/2addr v1, v9

    move v9, v1

    goto :goto_0

    :cond_0
    move v7, v8

    .line 1798
    goto :goto_1

    .line 1805
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1808
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iget-wide v2, v1, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 1809
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;

    iget-wide v2, v2, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$DisplayNameCandidate;->rawContactId:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1810
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v11, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1811
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1814
    :cond_2
    if-eqz v9, :cond_3

    .line 1815
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1817
    :cond_3
    return-void

    .line 1804
    :catchall_0
    move-exception v0

    .line 1805
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1804
    throw v0
.end method

.method public final updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1773
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1774
    return-void

    .line 1777
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1778
    return-void
.end method

.method public final updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1827
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1828
    return-void

    .line 1832
    :cond_0
    const-string/jumbo v2, "UPDATE contacts SET has_phone_number=(SELECT (CASE WHEN COUNT(*)=0 THEN 0 ELSE 1 END) FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=?) WHERE _id=?"

    .line 1831
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 1841
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1842
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1843
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1844
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1848
    return-void

    .line 1845
    :catchall_0
    move-exception v0

    .line 1846
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1845
    throw v0
.end method

.method public final updateLastStatusUpdateId(J)V
    .locals 5

    .prologue
    .line 724
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "UPDATE contacts SET status_update_id=(SELECT data._id FROM status_updates JOIN data   ON (status_update_data_id=data._id) JOIN raw_contacts   ON (data.raw_contact_id=raw_contacts._id) WHERE contact_id=? ORDER BY status_ts DESC,status LIMIT 1) WHERE contacts._id=?"

    .line 726
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 725
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    return-void
.end method

.method public final updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1869
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1870
    return-void

    .line 1873
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1874
    return-void
.end method

.method protected final updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/aggregation/util/ContactMatcher;)V
    .locals 11

    .prologue
    .line 1126
    invoke-virtual {p3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;->clear()V

    .line 1127
    new-instance v1, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;

    .line 1128
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 1127
    invoke-direct {v1, p0, v0, p3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;-><init>(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$MatchCandidateList;)V

    .line 1129
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    .line 1130
    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    return-void

    .line 1134
    :cond_0
    const-string/jumbo v3, "name_lookup JOIN raw_contacts ON (raw_contact_id = raw_contacts._id)"

    .line 1135
    sget-object v4, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupMatchQueryWithParameter;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v5

    .line 1136
    sget-object v10, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    .line 1135
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1136
    const/4 v9, 0x0

    move-object v2, p1

    .line 1134
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1138
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1140
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1141
    invoke-virtual {v1, v7}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameLookupSelectionBuilder;->getLookupType(Ljava/lang/String;)I

    move-result v6

    .line 1142
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1144
    const/4 v10, 0x0

    move-object v3, p4

    move-object v9, v7

    .line 1143
    invoke-virtual/range {v3 .. v10}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->matchName(JILjava/lang/String;ILjava/lang/String;I)V

    .line 1145
    const/4 v0, 0x3

    if-ne v6, v0, :cond_1

    const/4 v0, 0x3

    if-ne v8, v0, :cond_1

    .line 1146
    invoke-virtual {p4, v4, v5}, Lcom/android/providers/contacts/aggregation/util/ContactMatcher;->updateScoreWithNicknameMatch(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1149
    :catchall_0
    move-exception v0

    .line 1150
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1149
    throw v0

    .line 1150
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1152
    return-void
.end method

.method public final updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 20

    .prologue
    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v16

    .line 1618
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_0

    .line 1619
    return-void

    .line 1622
    :cond_0
    const-wide/16 v14, -0x1

    .line 1623
    const-wide/16 v12, 0x0

    .line 1624
    const/4 v10, -0x1

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    .line 1628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "raw_contacts JOIN accounts ON (accounts._id=raw_contacts.account_id) JOIN data ON(data.raw_contact_id=raw_contacts._id AND (mimetype_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1634
    const-string/jumbo v3, " AND "

    .line 1628
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1635
    const-string/jumbo v3, "data15"

    .line 1628
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1635
    const-string/jumbo v3, " NOT NULL))"

    .line 1628
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 1638
    sget-object v4, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoIdQuery;->COLUMNS:[Ljava/lang/String;

    .line 1639
    const-string/jumbo v5, "contact_id=?"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    .line 1638
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1641
    const/4 v2, 0x0

    move v4, v10

    move-wide v6, v12

    move-wide v10, v14

    .line 1642
    :goto_0
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1643
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1644
    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1645
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v14, v3

    .line 1646
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->getPhotoMetadata(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;

    move-result-object v3

    .line 1650
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1651
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    invoke-virtual {v15, v5}, Lcom/android/providers/contacts/PhotoPriorityResolver;->getPhotoPriority(Ljava/lang/String;)I

    move-result v5

    .line 1652
    if-nez v14, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v2, v4}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->hasHigherPhotoPriority(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;ILcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-eqz v15, :cond_6

    .line 1658
    :cond_1
    if-eqz v14, :cond_3

    .line 1664
    :goto_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1667
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_4

    .line 1668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1673
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_5

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1679
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x3

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1681
    return-void

    .line 1645
    :cond_2
    const/4 v3, 0x0

    move v14, v3

    goto :goto_1

    :cond_3
    move-object v2, v3

    move-wide v6, v12

    move v3, v5

    move-wide v4, v8

    :goto_5
    move-wide v10, v6

    move-wide v6, v4

    move v4, v3

    goto :goto_0

    .line 1663
    :catchall_0
    move-exception v2

    .line 1664
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1663
    throw v2

    .line 1670
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_3

    .line 1676
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4

    :cond_6
    move v3, v4

    move-wide v4, v6

    move-wide v6, v10

    goto :goto_5

    :cond_7
    move-wide v8, v6

    move-wide v12, v10

    goto :goto_2
.end method

.method public final updatePinned(J)V
    .locals 5

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1944
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1945
    return-void

    .line 1947
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPinnedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1948
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mPinnedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1949
    return-void
.end method

.method public final updateSendToVoicemail(J)V
    .locals 5

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1930
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1931
    return-void

    .line 1934
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSendToVoicemailUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1935
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mSendToVoicemailUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1936
    return-void
.end method

.method public final updateStarred(J)V
    .locals 5

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 1916
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1917
    return-void

    .line 1920
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1921
    iget-object v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1922
    return-void
.end method
