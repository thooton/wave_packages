.class public Lcom/android/providers/contacts/CountryMonitor;
.super Ljava/lang/Object;
.source "CountryMonitor.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lcom/android/providers/contacts/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/providers/contacts/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/providers/contacts/CountryMonitor;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized getCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/android/providers/contacts/CountryMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "country_detector"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    .line 53
    :cond_0
    if-nez v1, :cond_1

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 58
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    .line 59
    new-instance v1, Lcom/android/providers/contacts/CountryMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/CountryMonitor$1;-><init>(Lcom/android/providers/contacts/CountryMonitor;)V

    .line 63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
