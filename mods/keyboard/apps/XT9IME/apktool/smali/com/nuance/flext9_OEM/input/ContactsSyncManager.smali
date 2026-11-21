.class public Lcom/nuance/flext9_OEM/input/ContactsSyncManager;
.super Ljava/lang/Object;
.source "ContactsSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/ContactsSyncManager$DataSyncIntentService;,
        Lcom/nuance/flext9_OEM/input/ContactsSyncManager$SQL;
    }
.end annotation


# static fields
.field private static final CLEAN_FLAG:Ljava/lang/String; = "SYNC"

.field private static final DATABASE_NAME:Ljava/lang/String; = "xt9ime.db"

.field private static final DEBUG:Z = false

.field private static final DELETE_CONTACTS:I = 0x2

.field private static final EXTRA_SYNC_TYPE:Ljava/lang/String; = "syncType"

.field private static final MAX_SCAN_BUF_SIZE:I = 0x3e8

.field private static final MAX_UDB_RATIO:F = 0.8f

.field private static final MAX_WORD_LENGTH:I = 0x20

.field private static final MIN_TIME_BETWEEN_SYNC:J = 0x7530L

.field private static final MIN_WORD_LENGTH:I = 0x1

.field private static final SYNC_BOTH:I = 0x4

.field private static final SYNC_CONTACTS:I = 0x1

.field private static final SYNC_DELAY:J = 0x5L

.field private static final SYNC_USER_DICTIONARY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ContactsDictionaryManager"

.field private static final WORD_SHORTCUT_DIVIDER:Ljava/lang/String; = ","

.field private static mManager:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;


# instance fields
.field private mAddContacts:Z

.field private mContactObserver:Landroid/database/ContentObserver;

.field private mContactSyncPending:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mDeleteWordStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mFindStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

.field private mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mIsInedxingPaused:Z

.field private mIsSetupComplete:Z

.field private mLastContactSyncedTime:J

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSuggestContactNamesEnabled:Z

.field private mToBeAdded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDictionaryObserver:Landroid/database/ContentObserver;

.field private mUserWordsToAdd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/flext9_OEM/input/UserWord;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWordsToDelete:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mIsSetupComplete:Z

    return v0
.end method

.method static synthetic -get3(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mLastContactSyncedTime:J

    return-wide v0
.end method

.method static synthetic -get4()Lcom/nuance/flext9_OEM/input/ContactsSyncManager;
    .locals 1

    sget-object v0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mManager:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mSuggestContactNamesEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactSyncPending:Z

    return p1
.end method

.method static synthetic -set1(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mIsSetupComplete:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->startIntentService(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->syncContactsAndUserDictionary(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mManager:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 85
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mFindStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 86
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 87
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteWordStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 89
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    .line 90
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactObserver:Landroid/database/ContentObserver;

    .line 91
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserDictionaryObserver:Landroid/database/ContentObserver;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToAdd:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToDelete:Ljava/util/Set;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mToBeAdded:Ljava/util/Set;

    .line 96
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mAddContacts:Z

    .line 98
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 100
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mIsInedxingPaused:Z

    .line 114
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactSyncPending:Z

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mLastContactSyncedTime:J

    .line 116
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mIsSetupComplete:Z

    .line 119
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method private addedToDB(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 593
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mFindStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mFindStatement:Landroid/database/sqlite/SQLiteStatement;

    int-to-long v2, p2

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 596
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mFindStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 597
    :goto_0
    return v0

    .line 596
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private create()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 149
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->initDatabase()V

    .line 151
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->getInstance(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/AlphaInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 153
    const-string/jumbo v0, "ContactsDictionaryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "udb size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbGetSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    .line 155
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mSharedPref:Landroid/content/SharedPreferences;

    .line 159
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    .line 158
    new-array v2, v4, [Ljava/lang/String;

    .line 159
    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v2, v1

    .line 158
    invoke-static {v0, v2}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsUtil;->checkAllPermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pref_suggest_contact_names"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    :goto_0
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mSuggestContactNamesEnabled:Z

    .line 162
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 164
    new-instance v0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$1;

    invoke-direct {v0, p0, v5}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$1;-><init>(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactObserver:Landroid/database/ContentObserver;

    .line 180
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mSuggestContactNamesEnabled:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 183
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 184
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactObserver:Landroid/database/ContentObserver;

    .line 182
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    .line 188
    new-instance v3, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$2;

    invoke-direct {v3, p0, v5}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$2;-><init>(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserDictionaryObserver:Landroid/database/ContentObserver;

    .line 187
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/NonTouchUtils;->isDeviceNonTouchAnd12Key(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mIsSetupComplete:Z

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 205
    const-string/jumbo v2, "user_setup_complete"

    .line 204
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 206
    new-instance v3, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;

    invoke-direct {v3, p0, v5}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;-><init>(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;Landroid/os/Handler;)V

    .line 204
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 230
    return-void

    :cond_2
    move v0, v1

    .line 158
    goto :goto_0
.end method

.method private deleteFromDb(I)V
    .locals 4

    .prologue
    .line 653
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 654
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    int-to-long v2, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 660
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 661
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 666
    return-void

    .line 663
    :catchall_0
    move-exception v0

    .line 664
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 663
    throw v0
.end method

.method private deleteWordFromDB(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 669
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteWordStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteWordStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 676
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 681
    return-void

    .line 678
    :catchall_0
    move-exception v0

    .line 679
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 678
    throw v0
.end method

.method private destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 237
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactObserver:Landroid/database/ContentObserver;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserDictionaryObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserDictionaryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserDictionaryObserver:Landroid/database/ContentObserver;

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 249
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 253
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteWordStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteWordStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 258
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteWordStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    .line 261
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 263
    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "SYNC"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    return-void
.end method

.method private hasRoom()Z
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbGetRemainingMemory()I

    move-result v0

    int-to-float v0, v0

    .line 343
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbGetSize()I

    move-result v1

    int-to-float v1, v1

    .line 344
    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fc9999980000000L    # 0.19999998807907104

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    return v0

    .line 350
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initDatabase()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 273
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    .line 274
    const-string/jumbo v1, "xt9ime.db"

    .line 276
    const/4 v2, 0x0

    .line 273
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 279
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "SYNC"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "DROP TABLE IF EXISTS contacts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS contacts (word VARCHAR(128) PRIMARY KEY,  type INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "INSERT INTO contacts (word,type) values (?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 293
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "SELECT COUNT(*)  FROM contacts WHERE word=? AND type=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mFindStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 294
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "DELETE FROM contacts WHERE type=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 295
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "DELETE FROM contacts WHERE word=? AND type!=0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDeleteWordStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 297
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "SYNC"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    return-void
.end method

.method private insertContactsToDB(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 602
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 607
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 608
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 610
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 611
    const-string/jumbo v2, "ContactsDictionaryManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to insert record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    :try_start_1
    const-string/jumbo v1, "ContactsDictionaryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQLiteConstraintException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 623
    :goto_1
    return-void

    .line 615
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 621
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 620
    :catchall_0
    move-exception v0

    .line 621
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 620
    throw v0
.end method

.method private insertUserDictionaryToDB(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/flext9_OEM/input/UserWord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 626
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 631
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserWord;

    .line 632
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 633
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/UserWord;->getSubs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 634
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const-wide/16 v4, 0x2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 639
    :goto_1
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 640
    const-string/jumbo v2, "ContactsDictionaryManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to insert record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    :try_start_1
    const-string/jumbo v1, "ContactsDictionaryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQLiteConstraintException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 650
    :goto_2
    return-void

    .line 636
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/UserWord;->getSubs()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 637
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const-wide/16 v4, 0x1

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 647
    :catchall_0
    move-exception v0

    .line 648
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 647
    throw v0

    .line 643
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 648
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2
.end method

.method private populateContactNames()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 458
    iput-boolean v6, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mAddContacts:Z

    .line 459
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 460
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v0, "display_name"

    aput-object v0, v2, v7

    .line 461
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 464
    if-nez v3, :cond_0

    .line 465
    return-void

    .line 469
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 472
    if-eqz v4, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->hasRoom()Z

    move-result v0

    if-nez v0, :cond_2

    .line 512
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 516
    return-void

    .line 483
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v7

    .line 484
    :goto_0
    if-ge v0, v5, :cond_0

    .line 485
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 487
    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_4

    .line 488
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 490
    const/16 v8, 0x2d

    if-eq v1, v8, :cond_3

    const/16 v8, 0x27

    if-ne v1, v8, :cond_6

    :cond_3
    move v1, v6

    :goto_2
    if-nez v1, :cond_7

    .line 496
    :cond_4
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 497
    add-int/lit8 v0, v2, -0x1

    .line 500
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 501
    const/16 v8, 0x20

    if-ge v2, v8, :cond_5

    if-gt v2, v6, :cond_8

    .line 484
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_6
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    goto :goto_2

    .line 487
    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 506
    :cond_8
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mToBeAdded:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, v1, v7}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->addedToDB(Ljava/lang/String;I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 507
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mToBeAdded:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private populateUserDictionaryWords()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 523
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "word"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "shortcut"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 524
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "UPPER(word)"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 526
    if-nez v0, :cond_0

    .line 527
    return-void

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->populateUserDictionaryWordsFromLocalDB()Ljava/util/Set;

    move-result-object v1

    .line 530
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->hasRoom()Z

    move-result v2

    if-nez v2, :cond_3

    .line 555
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 556
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToDelete:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 559
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 563
    return-void

    .line 535
    :cond_3
    const-string/jumbo v2, "word"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 536
    const-string/jumbo v3, "shortcut"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 538
    if-nez v3, :cond_4

    .line 539
    if-eqz v1, :cond_5

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 540
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    :cond_4
    if-eqz v1, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    :cond_5
    new-instance v4, Lcom/nuance/flext9_OEM/input/UserWord;

    invoke-direct {v4}, Lcom/nuance/flext9_OEM/input/UserWord;-><init>()V

    .line 551
    invoke-virtual {v4, v3}, Lcom/nuance/flext9_OEM/input/UserWord;->setWord(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v4, v2}, Lcom/nuance/flext9_OEM/input/UserWord;->setSubs(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToAdd:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private populateUserDictionaryWordsFromLocalDB()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 567
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 568
    return-object v5

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "contacts"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "word"

    aput-object v3, v2, v8

    const-string/jumbo v3, " type = ? OR type = ?"

    .line 574
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "2"

    aput-object v6, v4, v8

    const-string/jumbo v6, "1"

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    .line 573
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 576
    if-nez v0, :cond_1

    .line 577
    return-object v5

    .line 579
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 580
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 583
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 587
    return-object v1
.end method

.method public static scheduleSync(Z)V
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mManager:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    sget-object v1, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mManager:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->scheduleSync(I)V

    .line 142
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mManager:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mManager:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    .line 127
    sget-object v0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mManager:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->create()V

    .line 131
    sget-object v0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mManager:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->scheduleSync(I)V

    .line 133
    :cond_0
    return-void
.end method

.method private startIntentService(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 326
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mIsSetupComplete:Z

    if-eqz v0, :cond_0

    .line 327
    if-ne p1, v4, :cond_1

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactSyncPending:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mLastContactSyncedTime:J

    sub-long/2addr v0, v2

    .line 329
    const-wide/16 v2, 0x7530

    .line 328
    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 331
    :cond_0
    return-void

    .line 333
    :cond_1
    if-eq p1, v4, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 334
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactSyncPending:Z

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mLastContactSyncedTime:J

    .line 337
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$DataSyncIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "syncType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 339
    return-void
.end method

.method private syncContactsAndUserDictionary(I)V
    .locals 4

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->areContactsSynced()Z

    move-result v0

    .line 429
    packed-switch p1, :pswitch_data_0

    .line 449
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->addorDeleteWordsToXT9()V

    .line 450
    const-string/jumbo v0, "ContactsDictionaryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exit: syncContactsAndUserDictionary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void

    .line 431
    :pswitch_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->populateContactNames()V

    .line 432
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->populateUserDictionaryWords()V

    goto :goto_0

    .line 435
    :pswitch_1
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->deleteContacts()V

    goto :goto_0

    .line 438
    :cond_0
    return-void

    .line 442
    :pswitch_2
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->populateContactNames()V

    goto :goto_0

    .line 445
    :pswitch_3
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->populateUserDictionaryWords()V

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addorDeleteWordsToXT9()V
    .locals 11

    .prologue
    const/16 v10, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mToBeAdded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToAdd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToDelete:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    return-void

    .line 690
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 691
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 692
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 696
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 697
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 698
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 700
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mAddContacts:Z

    if-nez v0, :cond_5

    .line 702
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mToBeAdded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 703
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v5, v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbDelete(Ljava/lang/String;)Z

    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mToBeAdded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 706
    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->deleteFromDb(I)V

    .line 738
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToAdd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 739
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToAdd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserWord;

    .line 740
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v10, :cond_4

    .line 741
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbScanBufF(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v3

    .line 744
    :cond_2
    if-eqz v1, :cond_3

    .line 745
    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->insertUserDictionaryToDB(Ljava/util/Set;)V

    .line 747
    :cond_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 748
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 750
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    .line 751
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/UserWord;->getSubs()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_2

    .line 708
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mToBeAdded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 709
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v10, :cond_6

    .line 710
    iget-object v8, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbScanBufF(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 711
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->insertContactsToDB(Ljava/util/Set;)V

    .line 716
    :goto_5
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 717
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 720
    :cond_6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 714
    :cond_7
    const-string/jumbo v8, "ContactsDictionaryManager"

    const-string/jumbo v9, "Failed to add words"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 725
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 726
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbScanBufF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 727
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->insertContactsToDB(Ljava/util/Set;)V

    .line 732
    :goto_6
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 733
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 735
    :cond_9
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mToBeAdded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/16 :goto_1

    .line 730
    :cond_a
    const-string/jumbo v0, "ContactsDictionaryManager"

    const-string/jumbo v7, "Failed to add words"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 755
    :cond_b
    iget-object v7, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/UserWord;->getWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/UserWord;->getSubs()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/flext9_OEM/input/AlphaInput;->asdbAdd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 757
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto/16 :goto_3

    .line 761
    :cond_c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbScanBufF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v1, v3

    .line 764
    :cond_d
    if-eqz v1, :cond_e

    .line 765
    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->insertUserDictionaryToDB(Ljava/util/Set;)V

    .line 767
    :cond_e
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToAdd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 769
    :cond_f
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToDelete:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 770
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToDelete:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 771
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 772
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 773
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v4, v3}, Lcom/nuance/flext9_OEM/input/AlphaInput;->asdbDelete(Ljava/lang/String;)Z

    .line 777
    :goto_8
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->deleteWordFromDB(Ljava/lang/String;)V

    goto :goto_7

    .line 775
    :cond_10
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mInput:Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-virtual {v3, v0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->udbDelete(Ljava/lang/String;)Z

    goto :goto_8

    .line 779
    :cond_11
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mUserWordsToDelete:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 784
    :cond_12
    return-void

    :cond_13
    move v0, v1

    goto/16 :goto_3
.end method

.method protected areContactsSynced()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 357
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 358
    return v8

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "contacts"

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "word"

    aput-object v3, v2, v8

    const-string/jumbo v3, " type = ?"

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v6, "0"

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 362
    if-nez v0, :cond_1

    .line 363
    return v8

    .line 365
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 367
    return v9

    .line 369
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 370
    return v8
.end method

.method protected deleteContacts()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 378
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 379
    return-void

    .line 381
    :cond_0
    iput-boolean v8, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mAddContacts:Z

    .line 383
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "contacts"

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "word"

    aput-object v3, v2, v8

    const-string/jumbo v3, " type = ?"

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v6, "0"

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 385
    if-nez v1, :cond_1

    .line 386
    return-void

    .line 390
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 391
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v8

    .line 399
    :goto_0
    if-ge v0, v3, :cond_1

    .line 400
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 403
    const/16 v5, 0x20

    if-ge v4, v5, :cond_2

    if-gt v4, v9, :cond_3

    .line 399
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_3
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mToBeAdded:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 408
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mToBeAdded:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 413
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 418
    return-void
.end method

.method protected scheduleSync(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 305
    if-eq p1, v3, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 306
    :cond_0
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mSuggestContactNamesEnabled:Z

    .line 307
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 308
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 309
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 310
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactObserver:Landroid/database/ContentObserver;

    .line 308
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 315
    :goto_0
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->startIntentService(I)V

    .line 316
    return-void

    .line 312
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mSuggestContactNamesEnabled:Z

    .line 313
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
