.class public Lcom/android/providers/contacts/CallLogProvider;
.super Landroid/content/ContentProvider;
.source "CallLogProvider.java"


# static fields
.field static final CALL_LOG_SYNC_PROJECTION:[Ljava/lang/String;

.field private static final EXCLUDE_HIDDEN_SELECTION:Ljava/lang/String;

.field private static final EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

.field static final MINIMAL_PROJECTION:[Ljava/lang/String;

.field static final PARAM_KEY_QUERY_FOR_TESTING:Ljava/lang/String; = "query_for_testing"

.field static final PARAM_KEY_SET_TIME_FOR_TESTING:Ljava/lang/String; = "set_time_for_testing"

.field public static final VERBOSE_LOGGING:Z

.field private static final VOICEMAIL_TYPE:Ljava/lang/Integer;

.field private static final sCallsProjectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTimeForTestMillis:Ljava/lang/Long;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

.field private mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

.field private volatile mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

.field private mTaskScheduler:Lcom/android/providers/contacts/ContactsTaskScheduler;

.field private mUseStrictPhoneNumberComparation:Z

.field private mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;


# direct methods
.method static synthetic -wrap0(Lcom/android/providers/contacts/CallLogProvider;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/CallLogProvider;->performBackgroundTask(ILjava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 63
    const-string/jumbo v0, "CallLogProvider"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/CallLogProvider;->VERBOSE_LOGGING:Z

    .line 72
    const-string/jumbo v0, "type"

    const-wide/16 v2, 0x4

    .line 71
    invoke-static {v0, v2, v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->getInequalityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "phone_account_hidden"

    const-wide/16 v2, 0x0

    .line 74
    invoke-static {v0, v2, v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_HIDDEN_SELECTION:Ljava/lang/String;

    .line 78
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 79
    const-string/jumbo v1, "number"

    aput-object v1, v0, v6

    .line 80
    const-string/jumbo v1, "presentation"

    aput-object v1, v0, v4

    .line 81
    const-string/jumbo v1, "type"

    aput-object v1, v0, v5

    .line 82
    const-string/jumbo v1, "features"

    aput-object v1, v0, v7

    .line 83
    const-string/jumbo v1, "date"

    aput-object v1, v0, v8

    .line 84
    const-string/jumbo v1, "duration"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "data_usage"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "subscription_component_name"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "subscription_id"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "add_for_all_users"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 78
    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->CALL_LOG_SYNC_PROJECTION:[Ljava/lang/String;

    .line 91
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->MINIMAL_PROJECTION:[Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 109
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "call_log"

    const-string/jumbo v2, "calls"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "call_log"

    const-string/jumbo v2, "calls/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "call_log"

    const-string/jumbo v2, "calls/filter/*"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "call_log_shadow"

    const-string/jumbo v2, "calls"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    .line 122
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "number"

    const-string/jumbo v2, "number"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "post_dial_digits"

    const-string/jumbo v2, "post_dial_digits"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "via_number"

    const-string/jumbo v2, "via_number"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "presentation"

    const-string/jumbo v2, "presentation"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "date"

    const-string/jumbo v2, "date"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "duration"

    const-string/jumbo v2, "duration"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "data_usage"

    const-string/jumbo v2, "data_usage"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "features"

    const-string/jumbo v2, "features"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "subscription_component_name"

    const-string/jumbo v2, "subscription_component_name"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "subscription_id"

    const-string/jumbo v2, "subscription_id"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "phone_account_address"

    const-string/jumbo v2, "phone_account_address"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "new"

    const-string/jumbo v2, "new"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "voicemail_uri"

    const-string/jumbo v2, "voicemail_uri"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "transcription"

    const-string/jumbo v2, "transcription"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "transcription_state"

    const-string/jumbo v2, "transcription_state"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "is_read"

    const-string/jumbo v2, "is_read"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "cnap_name"

    const-string/jumbo v2, "cnap_name"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "numbertype"

    const-string/jumbo v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "numberlabel"

    const-string/jumbo v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "countryiso"

    const-string/jumbo v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "geocoded_location"

    const-string/jumbo v2, "geocoded_location"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "lookup_uri"

    const-string/jumbo v2, "lookup_uri"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "matched_number"

    const-string/jumbo v2, "matched_number"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "normalized_number"

    const-string/jumbo v2, "normalized_number"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "photo_id"

    const-string/jumbo v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "photo_uri"

    const-string/jumbo v2, "photo_uri"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "formatted_number"

    const-string/jumbo v2, "formatted_number"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "add_for_all_users"

    const-string/jumbo v2, "add_for_all_users"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "last_modified"

    const-string/jumbo v2, "last_modified"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->VOICEMAIL_TYPE:Ljava/lang/Integer;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private adjustForNewPhoneAccountInternal(Landroid/telecom/PhoneAccountHandle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 616
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 620
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/CallLogProvider;->MINIMAL_PROJECTION:[Ljava/lang/String;

    .line 621
    const-string/jumbo v3, "subscription_component_name =? AND subscription_id =?"

    move-object v0, p0

    .line 620
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/CallLogProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 624
    if-eqz v1, :cond_1

    .line 626
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v6, :cond_2

    .line 628
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 629
    const-string/jumbo v2, "UPDATE calls SET phone_account_hidden=0 WHERE subscription_component_name=? AND subscription_id=?;"

    .line 628
    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 651
    :cond_1
    :goto_1
    return-void

    .line 631
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "UPDATE calls SET phone_account_hidden=0 WHERE phone_account_address=?;"

    .line 639
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 638
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    :try_start_2
    const-string/jumbo v2, "CallLogProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 646
    :catchall_0
    move-exception v0

    .line 647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 646
    throw v0
.end method

.method private checkIsAllowVoicemailRequest(Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->isAllowVoicemailRequest(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 517
    const-string/jumbo v1, "Uri %s cannot be used for voicemail record. Please set \'%s=true\' in the uri."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 518
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 519
    const-string/jumbo v3, "allow_voicemails"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 517
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_0
    return-void
.end method

.method private checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;Z)V
    .locals 2

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->isAllowVoicemailRequest(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    if-eqz p3, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasReadAccess(Ljava/lang/String;)V

    .line 498
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasWriteAccess(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    goto :goto_0
.end method

.method private getDatabaseModifier(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3

    .prologue
    .line 473
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string/jumbo v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method private getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3

    .prologue
    .line 465
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string/jumbo v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-object v0
.end method

.method private getIntParam(Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 334
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    if-nez v0, :cond_0

    .line 336
    return p3

    .line 340
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Integer required for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " parameter but value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    const-string/jumbo v2, "\' was found instead."

    .line 342
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getLastSyncTimePropertyName(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    if-eqz p0, :cond_0

    .line 710
    const-string/jumbo v0, "call_log_last_synced_for_shadow"

    .line 709
    :goto_0
    return-object v0

    .line 711
    :cond_0
    const-string/jumbo v0, "call_log_last_synced"

    goto :goto_0
.end method

.method static getTimeForTestMillis()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sTimeForTestMillis:Ljava/lang/Long;

    return-object v0
.end method

.method private hasVoicemailValue(Landroid/content/ContentValues;)Z
    .locals 2

    .prologue
    .line 478
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->VOICEMAIL_TYPE:Ljava/lang/Integer;

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isAllowVoicemailRequest(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 505
    const-string/jumbo v0, "allow_voicemails"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private parseCallIdFromUri(Landroid/net/Uri;)J
    .locals 4

    .prologue
    .line 530
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid call id in uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private performBackgroundTask(ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 743
    if-nez p1, :cond_1

    .line 745
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/CallLogProvider;->syncEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 748
    iput-object v2, p0, Lcom/android/providers/contacts/CallLogProvider;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 746
    :catchall_0
    move-exception v0

    .line 747
    iget-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 748
    iput-object v2, p0, Lcom/android/providers/contacts/CallLogProvider;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 746
    throw v0

    .line 750
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 751
    check-cast p2, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->adjustForNewPhoneAccountInternal(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0
.end method

.method private queryForTesting(Landroid/net/Uri;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    const-string/jumbo v0, "query_for_testing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.providers.contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query_for_testing set from foreign package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    const-string/jumbo v0, "set_time_for_testing"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_2

    .line 310
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    sput-object v2, Lcom/android/providers/contacts/CallLogProvider;->sTimeForTestMillis:Ljava/lang/Long;

    .line 316
    :cond_2
    :goto_0
    return-void

    .line 313
    :cond_3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sTimeForTestMillis:Ljava/lang/Long;

    goto :goto_0
.end method

.method private setLastTimeSynced(JZ)V
    .locals 3

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-static {p3}, Lcom/android/providers/contacts/CallLogProvider;->getLastSyncTimePropertyName(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method private syncEntries()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    return-void

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/util/UserUtils;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 547
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 548
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    .line 547
    invoke-static {v1, v0, v2}, Landroid/provider/CallLog$Calls;->shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 549
    return-void

    .line 552
    :cond_1
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    .line 556
    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    invoke-direct {p0, v3, v4, v3}, Lcom/android/providers/contacts/CallLogProvider;->syncEntriesFrom(IZZ)V

    .line 567
    :goto_0
    return-void

    .line 562
    :cond_2
    invoke-direct {p0, v3, v3, v4}, Lcom/android/providers/contacts/CallLogProvider;->syncEntriesFrom(IZZ)V

    .line 564
    invoke-direct {p0, v1, v4, v3}, Lcom/android/providers/contacts/CallLogProvider;->syncEntriesFrom(IZZ)V

    goto :goto_0
.end method

.method private syncEntriesFrom(IZZ)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 572
    if-eqz p2, :cond_1

    sget-object v0, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 574
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->getLastSyncTime(Z)J

    move-result-wide v6

    .line 576
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 578
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    const-string/jumbo v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ") AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "date> ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    if-eqz p3, :cond_0

    .line 586
    const-string/jumbo v2, " AND (add_for_all_users=1)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_0
    sget-object v2, Lcom/android/providers/contacts/CallLogProvider;->CALL_LOG_SYNC_PROJECTION:[Ljava/lang/String;

    .line 592
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 593
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 594
    const-string/jumbo v5, "date ASC"

    .line 589
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 595
    if-nez v2, :cond_2

    .line 596
    return-void

    .line 572
    :cond_1
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 599
    :cond_2
    :try_start_0
    invoke-virtual {p0, v2, v6, v7, p2}, Lcom/android/providers/contacts/CallLogProvider;->copyEntriesFromCursor(Landroid/database/Cursor;JZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 601
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 603
    if-eqz p2, :cond_3

    .line 605
    const-string/jumbo v2, "date<= ?"

    new-array v3, v9, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 607
    :cond_3
    return-void

    .line 600
    :catchall_0
    move-exception v0

    .line 601
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 600
    throw v0
.end method

.method private static waitForAccess(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .prologue
    .line 728
    if-nez p0, :cond_0

    .line 729
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 734
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    return-void
.end method


# virtual methods
.method adjustForNewPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mTaskScheduler:Lcom/android/providers/contacts/ContactsTaskScheduler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/providers/contacts/ContactsTaskScheduler;->scheduleTask(ILjava/lang/Object;)V

    .line 458
    return-void
.end method

.method copyEntriesFromCursor(Landroid/database/Cursor;JZ)J
    .locals 10

    .prologue
    .line 658
    const-wide/16 v0, 0x0

    .line 659
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 660
    iget-object v3, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 661
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 663
    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 664
    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 665
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 666
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 667
    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 669
    const-string/jumbo v5, "date"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 670
    const-string/jumbo v6, "number"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 672
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 676
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 678
    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 687
    :cond_1
    :goto_1
    const/4 v7, 0x0

    :try_start_2
    aput-object v5, v4, v7

    .line 688
    const/4 v5, 0x1

    aput-object v6, v4, v5

    .line 689
    const-string/jumbo v5, "calls"

    .line 690
    const-string/jumbo v6, "date = ? AND number = ?"

    .line 689
    invoke-static {v3, v5, v6, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    .line 690
    const-wide/16 v8, 0x0

    .line 689
    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 694
    const-string/jumbo v5, "calls"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 702
    :catchall_0
    move-exception v0

    .line 703
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 702
    throw v0

    .line 679
    :catch_0
    move-exception v7

    .line 680
    :try_start_3
    const-string/jumbo v7, "CallLogProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Call log entry does not contain valid start time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 697
    :cond_2
    cmp-long v2, v0, p2

    if-lez v2, :cond_3

    .line 698
    invoke-direct {p0, v0, v1, p4}, Lcom/android/providers/contacts/CallLogProvider;->setLastTimeSynced(JZ)V

    .line 701
    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 703
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 705
    return-wide v0
.end method

.method protected createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;
    .locals 1

    .prologue
    .line 225
    invoke-static {p1}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 433
    sget-boolean v0, Lcom/android/providers/contacts/CallLogProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 434
    const-string/jumbo v0, "CallLogProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    const-string/jumbo v2, "  selection=["

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    const-string/jumbo v2, "]  args="

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 436
    const-string/jumbo v2, " CPID="

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 436
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 437
    const-string/jumbo v2, " User="

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 437
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/contacts/util/UserUtils;->getCurrentUserHandle(Landroid/content/Context;)I

    move-result v2

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lcom/android/providers/contacts/CallLogProvider;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 440
    new-instance v0, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v0, p2}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;Z)V

    .line 443
    iget-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 444
    sget-object v2, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 445
    packed-switch v2, :pswitch_data_0

    .line 452
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot delete that URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v1

    const-string/jumbo v2, "calls"

    .line 450
    invoke-virtual {v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-interface {v1, v2, v0, p3}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;
    .locals 1

    .prologue
    .line 229
    invoke-static {p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method getLastSyncTime(Z)J
    .locals 3

    .prologue
    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-static {p1}, Lcom/android/providers/contacts/CallLogProvider;->getLastSyncTimePropertyName(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 350
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 351
    packed-switch v0, :pswitch_data_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/calls"

    return-object v0

    .line 355
    :pswitch_1
    const-string/jumbo v0, "vnd.android.cursor.item/calls"

    return-object v0

    .line 357
    :pswitch_2
    const-string/jumbo v0, "vnd.android.cursor.dir/calls"

    return-object v0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 365
    sget-boolean v0, Lcom/android/providers/contacts/CallLogProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 366
    const-string/jumbo v0, "CallLogProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insert: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  values=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    const-string/jumbo v2, " CPID="

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lcom/android/providers/contacts/CallLogProvider;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 370
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    invoke-static {v0, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/Map;Landroid/content/ContentValues;)V

    .line 373
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->hasVoicemailValue(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->checkIsAllowVoicemailRequest(Landroid/net/Uri;)V

    .line 375
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasWriteAccess(Ljava/lang/String;)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-nez v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 379
    new-instance v1, Landroid/database/DatabaseUtils$InsertHelper;

    const-string/jumbo v2, "calls"

    invoke-direct {v1, v0, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 382
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 385
    iget-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    invoke-interface {v1, v0}, Lcom/android/providers/contacts/CallLogInsertionHelper;->addComputedValues(Landroid/content/ContentValues;)V

    .line 387
    iget-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/providers/contacts/DatabaseModifier;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 388
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 389
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 391
    :cond_3
    return-object v4
.end method

.method protected isShadow()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 189
    sget-boolean v0, Lcom/android/providers/contacts/CallLogProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 190
    const-string/jumbo v0, "CallLogProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    const-string/jumbo v2, " user="

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/CallLogProvider;->setAppOps(II)V

    .line 195
    const-string/jumbo v0, "ContactsPerf"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const-string/jumbo v0, "ContactsPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".onCreate start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    .line 201
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 202
    const v2, 0x11200ce

    .line 201
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 200
    iput-boolean v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    .line 203
    new-instance v1, Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-direct {v1, v0}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    .line 206
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 208
    new-instance v0, Lcom/android/providers/contacts/CallLogProvider$1;

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/CallLogProvider$1;-><init>(Lcom/android/providers/contacts/CallLogProvider;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mTaskScheduler:Lcom/android/providers/contacts/ContactsTaskScheduler;

    .line 215
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mTaskScheduler:Lcom/android/providers/contacts/ContactsTaskScheduler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsTaskScheduler;->scheduleTask(ILjava/lang/Object;)V

    .line 217
    const-string/jumbo v0, "ContactsPerf"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    const-string/jumbo v0, "ContactsPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".onCreate finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 235
    sget-boolean v0, Lcom/android/providers/contacts/CallLogProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v0, "CallLogProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  projection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    const-string/jumbo v2, "  selection=["

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    const-string/jumbo v2, "]  args="

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    const-string/jumbo v2, "  order=["

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    const-string/jumbo v2, "] CPID="

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    const-string/jumbo v2, " User="

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/contacts/util/UserUtils;->getCurrentUserHandle(Landroid/content/Context;)I

    move-result v2

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->queryForTesting(Landroid/net/Uri;)V

    .line 244
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lcom/android/providers/contacts/CallLogProvider;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 245
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 246
    const-string/jumbo v1, "calls"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 247
    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 248
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 250
    new-instance v2, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v2, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;Z)V

    .line 252
    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_HIDDEN_SELECTION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 254
    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 255
    packed-switch v1, :pswitch_data_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :pswitch_0
    const-string/jumbo v1, "_id"

    .line 261
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->parseCallIdFromUri(Landroid/net/Uri;)J

    move-result-wide v6

    .line 260
    invoke-static {v1, v6, v7}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 283
    :goto_0
    :pswitch_1
    const-string/jumbo v1, "limit"

    invoke-direct {p0, p1, v1, v4}, Lcom/android/providers/contacts/CallLogProvider;->getIntParam(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .line 284
    const-string/jumbo v3, "offset"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/providers/contacts/CallLogProvider;->getIntParam(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v3

    .line 286
    if-lez v1, :cond_5

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 290
    :goto_1
    iget-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 291
    invoke-virtual {v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 296
    :cond_1
    return-object v0

    .line 266
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 267
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v6, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 268
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 269
    const-string/jumbo v3, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 271
    iget-boolean v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, ", 1)"

    :goto_3
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move-object v1, v5

    .line 267
    goto :goto_2

    .line 271
    :cond_3
    const-string/jumbo v1, ", 0)"

    goto :goto_3

    .line 273
    :cond_4
    const-string/jumbo v1, "presentation!=1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    move-object v8, v5

    goto :goto_1

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mTaskScheduler:Lcom/android/providers/contacts/ContactsTaskScheduler;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTaskScheduler;->shutdownForTest()V

    .line 758
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 396
    sget-boolean v0, Lcom/android/providers/contacts/CallLogProvider;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 397
    const-string/jumbo v0, "CallLogProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    const-string/jumbo v2, "  selection=["

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    const-string/jumbo v2, "]  args="

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    const-string/jumbo v2, "  values=["

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    const-string/jumbo v2, "] CPID="

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    const-string/jumbo v2, " User="

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/contacts/util/UserUtils;->getCurrentUserHandle(Landroid/content/Context;)I

    move-result v2

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lcom/android/providers/contacts/CallLogProvider;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 403
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Landroid/util/ArrayMap;

    invoke-static {v0, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/Map;Landroid/content/ContentValues;)V

    .line 406
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->hasVoicemailValue(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->checkIsAllowVoicemailRequest(Landroid/net/Uri;)V

    .line 410
    :cond_1
    new-instance v1, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v1, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;Z)V

    .line 413
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 414
    sget-object v2, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 415
    packed-switch v2, :pswitch_data_0

    .line 424
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot update URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :pswitch_0
    const-string/jumbo v2, "_id"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->parseCallIdFromUri(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 427
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v0

    const-string/jumbo v2, "calls"

    invoke-virtual {v1}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/providers/contacts/DatabaseModifier;->update(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
