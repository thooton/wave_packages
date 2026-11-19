.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# static fields
.field public static hasPermissionRelated:Z

.field public static mIsSubjectEnabled:Z

.field private static sMmsApp:Lcom/android/mms/MmsApp;


# instance fields
.field private mCountryDetector:Landroid/location/CountryDetector;

.field private mCountryIso:Ljava/lang/String;

.field private mCountryListener:Landroid/location/CountryListener;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;


# direct methods
.method static synthetic -set0(Lcom/android/mms/MmsApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/MmsApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/MmsApp;->activePendingMessages()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 69
    sput-boolean v1, Lcom/android/mms/MmsApp;->hasPermissionRelated:Z

    .line 71
    sput-boolean v1, Lcom/android/mms/MmsApp;->mIsSubjectEnabled:Z

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private activePendingMessages()V
    .locals 4

    .prologue
    .line 178
    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.mms.transaction.SEND_INACTIVE_MESSAGE"

    .line 183
    const-class v2, Lcom/android/mms/transaction/SmsReceiver;

    .line 181
    const/4 v3, 0x0

    .line 180
    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/MmsApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method public static declared-synchronized getApplication()Lcom/android/mms/MmsApp;
    .locals 2

    .prologue
    const-class v0, Lcom/android/mms/MmsApp;

    monitor-enter v0

    .line 187
    :try_start_0
    sget-object v1, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerMobileDataObserver()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    move v0, v1

    .line 143
    :goto_0
    if-ge v0, v2, :cond_0

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 145
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Lcom/android/mms/MmsApp$2;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/mms/MmsApp$2;-><init>(Lcom/android/mms/MmsApp;Landroid/os/Handler;)V

    invoke-virtual {v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmManagerClient()Landroid/drm/DrmManagerClient;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method public getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    return-object v0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 222
    const-string/jumbo v1, "phone"

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    return-object v0
.end method

.method public initPermissionRelated()V
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/mms/MmsApp;->hasPermissionRelated:Z

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 131
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    # PERF(phone map): synchronously load the compact phone index before any inbox rows.
    invoke-static {v0}, Lcom/android/mms/data/ArgonPhoneSnapshot;->prime(Landroid/content/Context;)V

    # PERF(inbox warmup): resolve all conversation recipients on the stock background
    # worker so scrolling does not have to discover every name on demand.
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/mms/MmsApp;->activePendingMessages()V

    .line 134
    invoke-direct {p0}, Lcom/android/mms/MmsApp;->registerMobileDataObserver()V

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsApp;->hasPermissionRelated:Z

    .line 137
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "app_start"
    invoke-static {v0}, Lcom/android/mms/util/ArgonLaunch;->mark(Ljava/lang/String;)V

    .line 75
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 77
    const-string/jumbo v0, "Mms"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 85
    :cond_0
    sput-object p0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090021

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsApp;->mIsSubjectEnabled:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09003b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const/high16 v0, 0x7f050000

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 97
    :goto_0
    const-string/jumbo v0, "country_detector"

    invoke-virtual {p0, v0}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    .line 98
    new-instance v0, Lcom/android/mms/MmsApp$1;

    invoke-direct {v0, p0}, Lcom/android/mms/MmsApp$1;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    .line 104
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v3, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    new-instance v3, Lcom/android/mms/util/PduLoaderManager;

    invoke-direct {v3, v0}, Lcom/android/mms/util/PduLoaderManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    .line 108
    new-instance v3, Lcom/android/mms/util/ThumbnailManager;

    invoke-direct {v3, v0}, Lcom/android/mms/util/ThumbnailManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    .line 110
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    const-string v0, "app_configured"
    invoke-static {v0}, Lcom/android/mms/util/ArgonLaunch;->mark(Ljava/lang/String;)V

    .line 111
    invoke-static {p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 112
    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 113
    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 114
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->init(Landroid/content/Context;)V

    .line 115
    invoke-static {p0}, Lcom/suntek/rcs/ui/common/RcsApiManager;->init(Landroid/content/Context;)V

    .line 116
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasBasicPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->initPermissionRelated()V

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090039

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 122
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 123
    new-instance v3, Landroid/content/ComponentName;

    .line 124
    const-class v4, Lcom/android/mms/transaction/MmsNoConfirmationSendActivity;

    .line 123
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    # FEAT(argon): Messages Argon startup (pref migration, held-MMS sweep, RCS)
    invoke-static {p0}, Lcom/android/mms/argon/ArgonInit;->onAppCreate(Landroid/app/Application;)V

    const-string v0, "app_ready"
    invoke-static {v0}, Lcom/android/mms/util/ArgonLaunch;->mark(Ljava/lang/String;)V

    .line 126
    return-void

    .line 93
    :cond_2
    const v0, 0x7f050006

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 121
    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 199
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    invoke-virtual {v0}, Lcom/android/mms/util/PduLoaderManager;->onLowMemory()V

    .line 200
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/mms/util/ThumbnailManager;->onLowMemory()V

    .line 201
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {v0, v1}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    .line 193
    return-void
.end method
