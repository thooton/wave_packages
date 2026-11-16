.class public Lcom/android/mms/util/LocationTracker;
.super Ljava/lang/Object;
.source "LocationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/LocationTracker$1;
    }
.end annotation


# instance fields
.field private mBaseLocationManager:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentLocation:Ljava/lang/String;

.field private mHasError:Z

.field private mIsEnabled:Z

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Landroid/location/LocationListener;

.field private final statuListener:Landroid/location/GpsStatus$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/android/mms/util/LocationTracker;->mCurrentLocation:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/android/mms/util/LocationTracker;->mLocation:Landroid/location/Location;

    .line 41
    iput-boolean v0, p0, Lcom/android/mms/util/LocationTracker;->mHasError:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/mms/util/LocationTracker;->mIsEnabled:Z

    .line 87
    new-instance v0, Lcom/android/mms/util/LocationTracker$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/LocationTracker$1;-><init>(Lcom/android/mms/util/LocationTracker;)V

    iput-object v0, p0, Lcom/android/mms/util/LocationTracker;->statuListener:Landroid/location/GpsStatus$Listener;

    .line 45
    iput-object p1, p0, Lcom/android/mms/util/LocationTracker;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private openGPS()V
    .locals 3

    .prologue
    .line 73
    const-string/jumbo v0, "openGPS() start"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/LocationTracker;->mIsEnabled:Z

    .line 75
    iget-object v0, p0, Lcom/android/mms/util/LocationTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gps"

    iget-boolean v2, p0, Lcom/android/mms/util/LocationTracker;->mIsEnabled:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lcom/android/mms/util/LocationTracker;->mBaseLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/util/LocationTracker;->statuListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 77
    return-void
.end method


# virtual methods
.method public closeGPS()V
    .locals 3

    .prologue
    .line 80
    const-string/jumbo v0, "closeGPS() start"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/LocationTracker;->mIsEnabled:Z

    .line 82
    iget-object v0, p0, Lcom/android/mms/util/LocationTracker;->mBaseLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/util/LocationTracker;->statuListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 83
    iget-object v0, p0, Lcom/android/mms/util/LocationTracker;->mBaseLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/util/LocationTracker;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/mms/util/LocationTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gps"

    iget-boolean v2, p0, Lcom/android/mms/util/LocationTracker;->mIsEnabled:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

.method public registerLocationUpdates(Landroid/location/LocationListener;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 50
    iget-object v0, p0, Lcom/android/mms/util/LocationTracker;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 51
    return v6

    .line 53
    :cond_0
    iput-object v1, p0, Lcom/android/mms/util/LocationTracker;->mCurrentLocation:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " inside get location no system uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/android/mms/util/LocationTracker;->mLocationListener:Landroid/location/LocationListener;

    .line 56
    iget-object v0, p0, Lcom/android/mms/util/LocationTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/mms/util/LocationTracker;->mBaseLocationManager:Landroid/location/LocationManager;

    .line 57
    invoke-direct {p0}, Lcom/android/mms/util/LocationTracker;->openGPS()V

    .line 59
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "global location listener::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/LocationTracker;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/mms/util/LocationTracker;->mBaseLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const-string/jumbo v0, "inside get location"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " se"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 66
    return v6

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " se"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 63
    return v6
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/util/LocationTracker;->mBaseLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 107
    return-void
.end method
