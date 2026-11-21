.class public Lcom/nuance/flext9_OEM/input/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# static fields
.field public static final BUILD_SAVE_AUDIOBUF_ONSDCARD:Z = false

.field static BUILD_TYPE_DEV:Ljava/lang/String; = null

.field static BUILD_TYPE_PRODUCTION:Ljava/lang/String; = null

.field static BUILD_TYPE_PRODUCTION_DTC:Ljava/lang/String; = null

.field static BUILD_TYPE_PRODUCTION_OEM:Ljava/lang/String; = null

.field static BUILD_TYPE_TRIAL:Ljava/lang/String; = null

.field public static final DRAGON_SPEECH_VERSION:Ljava/lang/String; = "2.0"

.field private static final LOG_TAG:Ljava/lang/String; = "XT9IME"

.field private static mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;


# instance fields
.field mBuildDate:Landroid/text/format/Time;

.field mBuildType:Ljava/lang/String;

.field mBuildVersion:Ljava/lang/String;

.field mCodeVersionNumber:I

.field mHasExpired:Z

.field mTrialPeriod:I

.field mUpperCassBuildVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "Trial"

    sput-object v0, Lcom/nuance/flext9_OEM/input/BuildInfo;->BUILD_TYPE_TRIAL:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "Dev"

    sput-object v0, Lcom/nuance/flext9_OEM/input/BuildInfo;->BUILD_TYPE_DEV:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "Production"

    sput-object v0, Lcom/nuance/flext9_OEM/input/BuildInfo;->BUILD_TYPE_PRODUCTION:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "Production_DTC"

    sput-object v0, Lcom/nuance/flext9_OEM/input/BuildInfo;->BUILD_TYPE_PRODUCTION_DTC:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "Production_OEM"

    sput-object v0, Lcom/nuance/flext9_OEM/input/BuildInfo;->BUILD_TYPE_PRODUCTION_OEM:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildVersion:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mUpperCassBuildVersion:Ljava/lang/String;

    .line 45
    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mCodeVersionNumber:I

    .line 46
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildType:Ljava/lang/String;

    .line 47
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mTrialPeriod:I

    .line 50
    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "."

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildDate:Landroid/text/format/Time;

    .line 54
    const-string/jumbo v2, "yyyymmdd.hhmmss"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/nuance/flext9_OEM/input/BuildInfo;->BUILD_TYPE_DEV:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildType:Ljava/lang/String;

    .line 76
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildDate:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    sget-object v0, Lcom/nuance/flext9_OEM/input/BuildInfo;->BUILD_TYPE_DEV:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBuldInfo(Landroid/content/Context;)Lcom/nuance/flext9_OEM/input/BuildInfo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 33
    new-instance v0, Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/BuildInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    .line 36
    :cond_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    return-object v0
.end method


# virtual methods
.method public getBuildDate()J
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildDate:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildDate:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0

    .line 106
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBuildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildType:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isDTCBuild()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildType:Ljava/lang/String;

    sget-object v1, Lcom/nuance/flext9_OEM/input/BuildInfo;->BUILD_TYPE_PRODUCTION_DTC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOEMBuild()Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildType:Ljava/lang/String;

    sget-object v1, Lcom/nuance/flext9_OEM/input/BuildInfo;->BUILD_TYPE_PRODUCTION_OEM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrereleaseCandidateBuild()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mUpperCassBuildVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mUpperCassBuildVersion:Ljava/lang/String;

    const-string/jumbo v1, " RC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mUpperCassBuildVersion:Ljava/lang/String;

    const-string/jumbo v1, " PRE-RELEASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 133
    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mUpperCassBuildVersion:Ljava/lang/String;

    const-string/jumbo v1, " PRERELEASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrialBuild()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildType:Ljava/lang/String;

    sget-object v1, Lcom/nuance/flext9_OEM/input/BuildInfo;->BUILD_TYPE_TRIAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrialPeriodExpired()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mHasExpired:Z

    return v0
.end method

.method public updateExpirationPeriod()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->isTrialBuild()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 82
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 83
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    div-long/2addr v2, v6

    .line 84
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mBuildDate:Landroid/text/format/Time;

    invoke-virtual {v4, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 85
    iget v6, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mTrialPeriod:I

    mul-int/lit8 v6, v6, 0x18

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    int-to-long v6, v6

    .line 93
    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    .line 94
    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mHasExpired:Z

    .line 99
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 94
    goto :goto_0

    .line 97
    :cond_2
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/BuildInfo;->mHasExpired:Z

    goto :goto_1
.end method
