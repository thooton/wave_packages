.class public Lcom/android/mms/model/ContentRestrictionFactory;
.super Ljava/lang/Object;
.source "ContentRestrictionFactory.java"


# static fields
.field private static sContentRestriction:Lcom/android/mms/model/ContentRestriction;

.field private static sCreationMode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getContentRestriction()Lcom/android/mms/model/ContentRestriction;
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    const-string/jumbo v1, "pref_key_creation_mode"

    .line 46
    const-string/jumbo v2, "3"

    .line 44
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    sget-object v1, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    if-nez v1, :cond_0

    .line 48
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCreationModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    new-instance v1, Lcom/android/mms/model/CarrierContentRestriction;

    invoke-direct {v1, v0}, Lcom/android/mms/model/CarrierContentRestriction;-><init>(I)V

    sput-object v1, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 56
    :cond_0
    :goto_0
    sput v0, Lcom/android/mms/model/ContentRestrictionFactory;->sCreationMode:I

    .line 57
    sget-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    return-object v0

    .line 52
    :cond_1
    new-instance v1, Lcom/android/mms/model/CarrierContentRestriction;

    invoke-direct {v1}, Lcom/android/mms/model/CarrierContentRestriction;-><init>()V

    sput-object v1, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    goto :goto_0
.end method

.method public static getUsedCreationMode()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/mms/model/ContentRestrictionFactory;->sCreationMode:I

    return v0
.end method

.method public static initContentRestriction(I)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/mms/model/CarrierContentRestriction;

    invoke-direct {v0, p0}, Lcom/android/mms/model/CarrierContentRestriction;-><init>(I)V

    sput-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 37
    sput p0, Lcom/android/mms/model/ContentRestrictionFactory;->sCreationMode:I

    .line 38
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/model/ContentRestrictionFactory;->sContentRestriction:Lcom/android/mms/model/ContentRestriction;

    .line 63
    return-void
.end method
