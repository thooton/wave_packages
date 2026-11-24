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
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-static {v1, v0}, Lcom/android/mms/wave/WaveInit;->getCountryIsoCached(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    .line 249
    :cond_0
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

.method public declared-synchronized getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;
    .locals 2

    .prologue
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    if-nez v0, :wave_has_pdu

    new-instance v0, Lcom/android/mms/util/PduLoaderManager;

    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/util/PduLoaderManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :wave_has_pdu
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

.method public declared-synchronized getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;
    .locals 2

    .prologue
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    if-nez v0, :wave_has_thumb

    new-instance v0, Lcom/android/mms/util/ThumbnailManager;

    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/util/ThumbnailManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :wave_has_thumb
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    # PERF(phone map): start compact phone snapshot asynchronously so it overlaps MmsApp/Activity init.
    invoke-static {v0}, Lcom/android/mms/data/WavePhoneSnapshot;->primeAsync(Landroid/content/Context;)V

    # PERF(inbox warmup): defer cacheAllThreads 600ms past frame #1 so it never contends
    # with the critical cold inbox or conversation history query in TelephonyProvider.
    invoke-static {v0}, Lcom/android/mms/wave/WaveInit;->deferConversationInit(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/wave/WaveInit;->deferActivePending(Landroid/content/Context;)V

    .line 134
    invoke-static {p0}, Lcom/android/mms/wave/WaveInit;->deferMobileDataObserver(Landroid/content/Context;)V

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
    invoke-static {v0}, Lcom/android/mms/util/WaveLaunch;->mark(Ljava/lang/String;)V

    .line 75
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    # PERF(phone map): start reading the compact phone map immediately in parallel with MmsApp init.
    invoke-static {p0}, Lcom/android/mms/data/WavePhoneSnapshot;->primeAsync(Landroid/content/Context;)V

    # PERF(row pool): pre-inflate inbox rows off-main while MmsApp + ConversationList initialize.
    invoke-static {p0}, Lcom/android/mms/ui/WaveRowPool;->prewarmInbox(Landroid/content/Context;)V

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

    invoke-static {p0, v0}, Lcom/android/mms/wave/WaveInit;->setDefaultValuesAsync(Landroid/content/Context;I)V

    :goto_0
    .line 98
    # PERF: defer CountryDetector ServiceManager IPC + addCountryListener, and lazy-init
    # PduLoaderManager + ThumbnailManager (which decodes 2 PNGs synchronously) on first use.
    new-instance v0, Lcom/android/mms/MmsApp$1;

    invoke-direct {v0, p0}, Lcom/android/mms/MmsApp$1;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-static {p0, v0}, Lcom/android/mms/wave/WaveInit;->deferCountryDetector(Landroid/content/Context;Ljava/lang/Object;)V

    .line 110
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    const-string v0, "app_configured"
    invoke-static {v0}, Lcom/android/mms/util/WaveLaunch;->mark(Ljava/lang/String;)V

    .line 111
    # PERF: defer DownloadManager.init (SharedPreferences disk stall + SERVICE_STATE registerReceiver IPC)
    # and RateController.init past frame #1; both lazy-init safely in getInstance() if called early.
    invoke-static {p0}, Lcom/android/mms/wave/WaveInit;->deferDownloadAndRateInit(Landroid/content/Context;)V

    .line 113
    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 114
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->init(Landroid/content/Context;)V

    .line 115
    # PERF: skip Suntek RCS SDK initialization (~114ms cold-start stall binding missing services)
    # when this build is not an RCS version.
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :wave_skip_rcs_init

    invoke-static {p0}, Lcom/suntek/rcs/ui/common/RcsApiManager;->init(Landroid/content/Context;)V

    :wave_skip_rcs_init

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
    # PERF: avoid synchronous PackageManager Binder IPC / XML rewrite on every cold start.
    const-class v4, Lcom/android/mms/transaction/MmsNoConfirmationSendActivity;

    invoke-static {p0, v4, v0}, Lcom/android/mms/wave/WaveInit;->applyComponentStateAsync(Landroid/content/Context;Ljava/lang/Class;I)V

    # FEAT(wave): Messages Improved startup (pref migration, held-MMS sweep, RCS)
    invoke-static {p0}, Lcom/android/mms/wave/WaveInit;->onAppCreate(Landroid/app/Application;)V

    const-string v0, "app_ready"
    invoke-static {v0}, Lcom/android/mms/util/WaveLaunch;->mark(Ljava/lang/String;)V

    .line 126
    return-void

    .line 93
    :cond_2
    const v0, 0x7f050006

    invoke-static {p0, v0}, Lcom/android/mms/wave/WaveInit;->setDefaultValuesAsync(Landroid/content/Context;I)V

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

    if-eqz v0, :wave_lowmem_thumb

    invoke-virtual {v0}, Lcom/android/mms/util/PduLoaderManager;->onLowMemory()V

    :wave_lowmem_thumb
    .line 200
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    if-eqz v0, :wave_lowmem_done

    invoke-virtual {v0}, Lcom/android/mms/util/ThumbnailManager;->onLowMemory()V

    :wave_lowmem_done
    .line 201
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    if-eqz v0, :wave_term_done

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {v0, v1}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    :wave_term_done
    .line 193
    return-void
.end method
