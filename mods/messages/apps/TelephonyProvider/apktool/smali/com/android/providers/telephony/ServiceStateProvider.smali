.class public Lcom/android/providers/telephony/ServiceStateProvider;
.super Landroid/content/ContentProvider;
.source "ServiceStateProvider.java"


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final sColumns:[Ljava/lang/String;


# instance fields
.field private final mServiceStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const-string/jumbo v0, "content://service-state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ServiceStateProvider;->AUTHORITY_URI:Landroid/net/Uri;

    .line 79
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "voice_reg_state"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "data_reg_state"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "voice_roaming_type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "data_roaming_type"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "voice_operator_alpha_long"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "voice_operator_alpha_short"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "voice_operator_numeric"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "data_operator_alpha_long"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "data_operator_alpha_short"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "data_operator_numeric"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "is_manual_network_selection"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "ril_voice_radio_technology"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "ril_data_radio_technology"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "css_indicator"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "network_id"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "system_id"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "cdma_roaming_indicator"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 97
    const-string/jumbo v1, "cdma_default_roaming_indicator"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "cdma_eri_icon_index"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "cdma_eri_icon_mode"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "is_emergency_only"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "is_data_roaming_from_registration"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "is_using_carrier_aggregation"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 79
    sput-object v0, Lcom/android/providers/telephony/ServiceStateProvider;->sColumns:[Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/ServiceStateProvider;->mServiceStates:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method private static buildSingleRowResult([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 276
    if-nez p0, :cond_0

    move-object p0, p1

    .line 279
    :cond_0
    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, p0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 280
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    move v0, v1

    .line 281
    :goto_0
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 282
    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    move v2, v1

    .line 284
    :goto_1
    array-length v7, p1

    if-ge v2, v7, :cond_4

    .line 285
    aget-object v7, p1, v2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 286
    aget-object v2, p2, v2

    invoke-virtual {v5, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move v2, v3

    .line 291
    :goto_2
    if-nez v2, :cond_2

    .line 292
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 281
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_3
    return-object v4

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method private static dataRegStateChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dataRoamingTypeChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static notifyChangeForSubId(Landroid/content/Context;Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/android/providers/telephony/ServiceStateProvider;->voiceRegStateChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/providers/telephony/ServiceStateProvider;->dataRegStateChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-static {p1, p2}, Lcom/android/providers/telephony/ServiceStateProvider;->voiceRoamingTypeChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 368
    if-nez v0, :cond_0

    .line 369
    invoke-static {p1, p2}, Lcom/android/providers/telephony/ServiceStateProvider;->dataRoamingTypeChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 368
    if-eqz v0, :cond_1

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p3}, Landroid/provider/Telephony$ServiceStateTable;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 372
    :cond_1
    return-void
.end method

.method public static notifyChangeForSubIdAndField(Landroid/content/Context;Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 312
    if-nez p1, :cond_8

    const/4 v0, 0x1

    .line 315
    :goto_0
    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/providers/telephony/ServiceStateProvider;->voiceRegStateChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 317
    const-string/jumbo v3, "voice_reg_state"

    invoke-static {p3, v3}, Landroid/provider/Telephony$ServiceStateTable;->getUriForSubscriptionIdAndField(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 316
    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 320
    :cond_1
    if-nez v0, :cond_2

    invoke-static {p1, p2}, Lcom/android/providers/telephony/ServiceStateProvider;->dataRegStateChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 321
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 322
    const-string/jumbo v3, "data_reg_state"

    invoke-static {p3, v3}, Landroid/provider/Telephony$ServiceStateTable;->getUriForSubscriptionIdAndField(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 324
    :cond_3
    if-nez v0, :cond_4

    invoke-static {p1, p2}, Lcom/android/providers/telephony/ServiceStateProvider;->voiceRoamingTypeChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 325
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 326
    const-string/jumbo v3, "voice_roaming_type"

    invoke-static {p3, v3}, Landroid/provider/Telephony$ServiceStateTable;->getUriForSubscriptionIdAndField(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 325
    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 328
    :cond_5
    if-nez v0, :cond_6

    invoke-static {p1, p2}, Lcom/android/providers/telephony/ServiceStateProvider;->dataRoamingTypeChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 329
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 330
    const-string/jumbo v2, "data_roaming_type"

    invoke-static {p3, v2}, Landroid/provider/Telephony$ServiceStateTable;->getUriForSubscriptionIdAndField(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 329
    invoke-virtual {v0, v2, v4, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 332
    :cond_7
    return-void

    :cond_8
    move v0, v1

    .line 312
    goto :goto_0
.end method

.method private static voiceRegStateChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static voiceRoamingTypeChanged(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultSubId()I
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method public getServiceState(I)Landroid/telephony/ServiceState;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/providers/telephony/ServiceStateProvider;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .prologue
    .line 122
    sget-object v0, Landroid/provider/Telephony$ServiceStateTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 131
    const-string/jumbo v1, "ServiceStateProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/providers/telephony/ServiceStateProvider;->getDefaultSubId()I

    move-result v0

    .line 139
    :cond_0
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    .line 140
    const-string/jumbo v2, "voice_reg_state"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 141
    const-string/jumbo v2, "data_reg_state"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 142
    const-string/jumbo v2, "voice_operator_alpha_long"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string/jumbo v3, "voice_operator_alpha_short"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    const-string/jumbo v4, "voice_operator_numeric"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v1, v2, v3, v4}, Landroid/telephony/ServiceState;->setVoiceOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v2, "data_operator_alpha_long"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string/jumbo v3, "data_operator_alpha_short"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    const-string/jumbo v4, "data_operator_numeric"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {v1, v2, v3, v4}, Landroid/telephony/ServiceState;->setDataOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v2, "is_manual_network_selection"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 149
    const-string/jumbo v2, "ril_voice_radio_technology"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 150
    const-string/jumbo v2, "ril_data_radio_technology"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 151
    const-string/jumbo v2, "css_indicator"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 152
    const-string/jumbo v2, "system_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 153
    const-string/jumbo v3, "network_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/telephony/ServiceState;->setSystemAndNetworkId(II)V

    .line 154
    const-string/jumbo v2, "cdma_roaming_indicator"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 156
    const-string/jumbo v2, "cdma_default_roaming_indicator"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 155
    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 157
    const-string/jumbo v2, "cdma_eri_icon_index"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 158
    const-string/jumbo v2, "cdma_eri_icon_mode"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 159
    const-string/jumbo v2, "is_emergency_only"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 161
    const-string/jumbo v2, "is_data_roaming_from_registration"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 160
    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    .line 162
    const-string/jumbo v2, "is_using_carrier_aggregation"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setIsUsingCarrierAggregation(Z)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/providers/telephony/ServiceStateProvider;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 167
    invoke-virtual {p0}, Lcom/android/providers/telephony/ServiceStateProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Lcom/android/providers/telephony/ServiceStateProvider;->notifyChangeForSubIdAndField(Landroid/content/Context;Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/providers/telephony/ServiceStateProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Lcom/android/providers/telephony/ServiceStateProvider;->notifyChangeForSubId(Landroid/content/Context;Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;I)V

    .line 171
    iget-object v2, p0, Lcom/android/providers/telephony/ServiceStateProvider;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-object p1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string/jumbo v1, "ServiceStateProvider"

    const-string/jumbo v2, "insert: no subId provided in uri"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    throw v0

    .line 174
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 29

    .prologue
    .line 195
    sget-object v3, Landroid/provider/Telephony$ServiceStateTable;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 206
    :goto_0
    const-string/jumbo v4, "ServiceStateProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/ServiceStateProvider;->getDefaultSubId()I

    move-result v3

    .line 214
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/providers/telephony/ServiceStateProvider;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 215
    if-nez v6, :cond_2

    .line 216
    const-string/jumbo v3, "ServiceStateProvider"

    const-string/jumbo v4, "returning null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v3, 0x0

    return-object v3

    .line 202
    :catch_0
    move-exception v3

    .line 203
    const-string/jumbo v3, "ServiceStateProvider"

    const-string/jumbo v4, "query: no subId provided in uri, using default."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/ServiceStateProvider;->getDefaultSubId()I

    move-result v3

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    .line 222
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    .line 223
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v9

    .line 224
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v10

    .line 225
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v11

    .line 226
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v12

    .line 227
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .line 228
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v14

    .line 229
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v15

    .line 230
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    .line 231
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 232
    :goto_1
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v17

    .line 233
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v18

    .line 234
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v19

    .line 235
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v20

    .line 236
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v21

    .line 237
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v22

    .line 238
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v23

    .line 239
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v24

    .line 240
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v25

    .line 241
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 243
    :goto_2
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    .line 244
    :goto_3
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    .line 246
    :goto_4
    sget-object v26, Lcom/android/providers/telephony/ServiceStateProvider;->sColumns:[Ljava/lang/String;

    const/16 v27, 0x17

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    .line 247
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x0

    aput-object v7, v27, v28

    .line 248
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v27, v8

    .line 249
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v27, v8

    .line 250
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v27, v8

    .line 251
    const/4 v7, 0x4

    aput-object v11, v27, v7

    .line 252
    const/4 v7, 0x5

    aput-object v12, v27, v7

    .line 253
    const/4 v7, 0x6

    aput-object v13, v27, v7

    .line 254
    const/4 v7, 0x7

    aput-object v14, v27, v7

    .line 255
    const/16 v7, 0x8

    aput-object v15, v27, v7

    .line 256
    const/16 v7, 0x9

    aput-object v16, v27, v7

    .line 257
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0xa

    aput-object v3, v27, v7

    .line 258
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0xb

    aput-object v3, v27, v7

    .line 259
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0xc

    aput-object v3, v27, v7

    .line 260
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0xd

    aput-object v3, v27, v7

    .line 261
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0xe

    aput-object v3, v27, v7

    .line 262
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0xf

    aput-object v3, v27, v7

    .line 263
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0x10

    aput-object v3, v27, v7

    .line 264
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0x11

    aput-object v3, v27, v7

    .line 265
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0x12

    aput-object v3, v27, v7

    .line 266
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v7, 0x13

    aput-object v3, v27, v7

    .line 267
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x14

    aput-object v3, v27, v4

    .line 268
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x15

    aput-object v3, v27, v4

    .line 269
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x16

    aput-object v3, v27, v4

    .line 246
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/ServiceStateProvider;->buildSingleRowResult([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 231
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 241
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 243
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 244
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_4
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
