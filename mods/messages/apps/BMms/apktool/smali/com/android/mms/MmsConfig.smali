.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field private static MAX_SLIDE_NUM:I

.field private static mAliasEnabled:Z

.field private static mAliasRuleMaxChars:I

.field private static mAliasRuleMinChars:I

.field private static mAllowAttachAudio:Z

.field private static mDefaultMMSMessagesPerThread:I

.field private static mDefaultMessagesExpiryDaysCount:I

.field private static mDefaultMessagesMaxExpiryDaysCount:I

.field private static mDefaultMessagesMinExpiryDaysCount:I

.field private static mDefaultSMSMessagesPerThread:I

.field private static mEmailGateway:Ljava/lang/String;

.field private static mEnableGroupMms:Z

.field private static mEnableMMSDeliveryReports:Z

.field private static mEnableMMSPriority:Z

.field private static mEnableMMSReadReports:Z

.field private static mEnableMMSSendDeliveryAndReadReports:Z

.field private static mEnableMultipartSMS:Z

.field private static mEnableSMSDeliveryReports:Z

.field private static mEnableSlideDuration:Z

.field private static mHttpParams:Ljava/lang/String;

.field private static mHttpParamsLine1Key:Ljava/lang/String;

.field private static mHttpSocketTimeout:I

.field private static mIsEnabledCreationmode:Z

.field private static mMaxImageHeight:I

.field private static mMaxImageWidth:I

.field private static mMaxMessageCountPerThread:I

.field private static mMaxMessageSize:I

.field private static mMaxRestrictedMessageSize:I

.field private static mMaxSizeScaleForPendingMmsAllowed:I

.field private static mMaxSubjectLength:I

.field private static mMaxTextLength:I

.field private static mMinMessageCountPerThread:I

.field private static mMinimumSlideElementDuration:I

.field private static mMmsEnabled:I

.field private static mNotifyWapMMSC:Z

.field private static mRecipientLimit:I

.field private static mSmsToMmsTextThreshold:I

.field private static mTransIdEnabled:Z

.field private static mUaProfTagName:Ljava/lang/String;

.field private static mUaProfUrl:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;

.field private static mZoomMessage:Z

.field private static sIsRcsVersion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 73
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    .line 74
    sput v1, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 75
    const v0, 0x4b000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    .line 76
    const v0, 0x96000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxRestrictedMessageSize:I

    .line 77
    const-string/jumbo v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "x-wap-profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    .line 79
    sput-object v3, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 80
    sput-object v3, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    .line 81
    sput-object v3, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    .line 82
    sput-object v3, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    .line 83
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    .line 84
    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    .line 85
    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 86
    const/16 v0, 0x3e8

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    .line 87
    const/16 v0, 0x3e8

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    .line 88
    sput v5, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    .line 89
    const/16 v0, 0x1388

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    .line 90
    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    .line 91
    const/4 v0, 0x7

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    .line 92
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    .line 93
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    .line 94
    const/16 v0, 0x5a

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMessagesExpiryDaysCount:I

    .line 95
    sput v1, Lcom/android/mms/MmsConfig;->mDefaultMessagesMinExpiryDaysCount:I

    .line 96
    const/16 v0, 0xb4

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMessagesMaxExpiryDaysCount:I

    .line 97
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mZoomMessage:Z

    .line 104
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    .line 110
    sput v4, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 112
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    .line 113
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    .line 114
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    .line 115
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    .line 116
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableMMSPriority:Z

    .line 117
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableMMSSendDeliveryAndReadReports:Z

    .line 118
    sput v4, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    .line 123
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    .line 126
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    .line 127
    sput v5, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    .line 128
    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    .line 130
    const/16 v0, 0x28

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    .line 137
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    .line 139
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/MmsConfig;->MAX_SLIDE_NUM:I

    .line 141
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mIsEnabledCreationmode:Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 403
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 404
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 408
    :cond_1
    if-eq v0, v2, :cond_2

    .line 409
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 413
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected start tag: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 414
    const-string/jumbo v2, ", expected "

    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_3
    return-void
.end method

.method public static getAliasMaxChars()I
    .locals 1

    .prologue
    .line 368
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    .prologue
    .line 364
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    .prologue
    .line 372
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    return v0
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 312
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultMessagesExpiryDaysCount()I
    .locals 1

    .prologue
    .line 297
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMessagesExpiryDaysCount:I

    return v0
.end method

.method public static getDefaultMessagesMaxExpiryDaysCount()I
    .locals 1

    .prologue
    .line 301
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMessagesMaxExpiryDaysCount:I

    return v0
.end method

.method public static getDefaultMessagesMinExpiryDaysCount()I
    .locals 1

    .prologue
    .line 304
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMessagesMinExpiryDaysCount:I

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 293
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    return v0
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static getGroupMmsEnabled()Z
    .locals 1

    .prologue
    .line 380
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    return v0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    .prologue
    .line 324
    sget v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    return v0
.end method

.method public static getMMSDeliveryReportsEnabled()Z
    .locals 1

    .prologue
    .line 348
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    return v0
.end method

.method public static getMMSPriorityEnabled()Z
    .locals 1

    .prologue
    .line 236
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSPriority:Z

    return v0
.end method

.method public static getMMSReadReportsEnabled()Z
    .locals 1

    .prologue
    .line 340
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    return v0
.end method

.method public static getMMSSendDeliveryAndReadReports()Z
    .locals 1

    .prologue
    .line 240
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSSendDeliveryAndReadReports:Z

    return v0
.end method

.method public static getMaxImageHeight()I
    .locals 1

    .prologue
    .line 277
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    return v0
.end method

.method public static getMaxImageWidth()I
    .locals 1

    .prologue
    .line 281
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    return v0
.end method

.method public static getMaxMessageCountPerThread()I
    .locals 1

    .prologue
    .line 320
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 1

    .prologue
    .line 233
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    return v0
.end method

.method public static getMaxRestrictedMessageSize()I
    .locals 1

    .prologue
    .line 392
    sget v0, Lcom/android/mms/MmsConfig;->mMaxRestrictedMessageSize:I

    return v0
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .locals 1

    .prologue
    .line 356
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static getMaxSlideNumber()I
    .locals 1

    .prologue
    .line 187
    sget v0, Lcom/android/mms/MmsConfig;->MAX_SLIDE_NUM:I

    return v0
.end method

.method public static getMaxSubjectLength()I
    .locals 1

    .prologue
    .line 376
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    return v0
.end method

.method public static getMaxTextLimit()I
    .locals 2

    .prologue
    .line 289
    sget v0, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7d0

    goto :goto_0
.end method

.method public static getMinMessageCountPerThread()I
    .locals 1

    .prologue
    .line 316
    sget v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .locals 1

    .prologue
    .line 328
    sget v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    const-string/jumbo v0, "9798"

    return-object v0
.end method

.method public static getMmsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 226
    sget v1, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMultipartSmsEnabled()Z
    .locals 1

    .prologue
    .line 332
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    return v0
.end method

.method public static getNotifyWapMMSC()Z
    .locals 1

    .prologue
    .line 352
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    return v0
.end method

.method public static getRecipientLimit()I
    .locals 1

    .prologue
    .line 285
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    # FEAT(recipients): no app-side cap on group size (stock mms_config.xml said 10)
    invoke-static {v0}, Lcom/android/mms/argon/ArgonConfig;->recipientLimit(I)I

    move-result v0

    return v0
.end method

.method public static getSMSDeliveryReportsEnabled()Z
    .locals 1

    .prologue
    .line 344
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    return v0
.end method

.method public static getSlideDurationEnabled()Z
    .locals 1

    .prologue
    .line 336
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    return v0
.end method

.method public static getSmsToMmsTextThreshold(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    return v0

    .line 222
    :cond_0
    sget v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    return v0
.end method

.method public static getTransIdEnabled()Z
    .locals 1

    .prologue
    .line 249
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getZoomMessage()Z
    .locals 1

    .prologue
    .line 579
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mZoomMessage:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 176
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mnc/mcc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 177
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->MAX_SLIDE_NUM:I

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->sIsRcsVersion:Z

    .line 184
    return-void
.end method

.method public static isAliasEnabled()Z
    .locals 1

    .prologue
    .line 360
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    return v0
.end method

.method public static isAutoDeleteByDaysEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isCreationModeEnabled()Z
    .locals 1

    .prologue
    .line 384
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mIsEnabledCreationmode:Z

    return v0
.end method

.method public static isMostRecentlyUsedTemplatesEnable(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 595
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isMostlyUsedTemplatesEnable(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isOMACPEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isRcsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->getInstance()Lcom/suntek/mway/rcs/client/api/support/SupportApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->isRcsSupported()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    return v0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    invoke-static {v1}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    .line 153
    return v0
.end method

.method public static isRcsEnabledAndOnline()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 159
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getInstance()Lcom/suntek/mway/rcs/client/api/basic/BasicApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->isOnline()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    return v0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    invoke-static {v1}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    .line 162
    return v0
.end method

.method public static isRcsVersion()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sIsRcsVersion:Z

    return v0
.end method

.method public static isSmsEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 191
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSmsPromoDismissed(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 200
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    const-string/jumbo v1, "sms_promo_dismissed_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f050001

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 431
    :try_start_0
    const-string/jumbo v0, "mms_config"

    invoke-static {v5, v0}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 434
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 435
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 436
    if-nez v6, :cond_2

    .line 551
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 554
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->readUAProfFromSystem()V

    .line 558
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    if-nez v0, :cond_29

    .line 559
    const-string/jumbo v0, "uaProfUrl"

    .line 562
    :goto_2
    if-eqz v0, :cond_1

    .line 564
    const-string/jumbo v1, "MmsConfig.loadMmsSettings mms_config.xml missing %s setting"

    new-array v2, v2, [Ljava/lang/Object;

    .line 565
    aput-object v0, v2, v3

    .line 564
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 566
    const-string/jumbo v1, "Mms"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_1
    return-void

    .line 439
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v5, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 440
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 442
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2a

    .line 443
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 450
    :goto_3
    const-string/jumbo v0, "name"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string/jumbo v0, "bool"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 453
    const-string/jumbo v0, "enabledMMS"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 454
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_4
    sput v0, Lcom/android/mms/MmsConfig;->mMmsEnabled:I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    :try_start_2
    const-string/jumbo v4, "Mms"

    const-string/jumbo v6, "loadMmsSettings caught "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 551
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :cond_3
    move v0, v3

    .line 454
    goto :goto_4

    .line 455
    :cond_4
    :try_start_3
    const-string/jumbo v0, "enabledTransID"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 546
    :catch_1
    move-exception v0

    .line 547
    :try_start_4
    const-string/jumbo v4, "Mms"

    const-string/jumbo v6, "loadMmsSettings caught "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 551
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 457
    :cond_5
    :try_start_5
    const-string/jumbo v0, "enabledNotifyWapMMSC"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 458
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 548
    :catch_2
    move-exception v0

    .line 549
    :try_start_6
    const-string/jumbo v4, "Mms"

    const-string/jumbo v6, "loadMmsSettings caught "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 551
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 459
    :cond_6
    :try_start_7
    const-string/jumbo v0, "aliasEnabled"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 460
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 550
    :catchall_0
    move-exception v0

    .line 551
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 550
    throw v0

    .line 461
    :cond_7
    :try_start_8
    const-string/jumbo v0, "allowAttachAudio"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 462
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    goto/16 :goto_0

    .line 463
    :cond_8
    const-string/jumbo v0, "enableMultipartSMS"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 464
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMultipartSMS:Z

    goto/16 :goto_0

    .line 465
    :cond_9
    const-string/jumbo v0, "enableSlideDuration"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 466
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSlideDuration:Z

    goto/16 :goto_0

    .line 467
    :cond_a
    const-string/jumbo v0, "enableMMSReadReports"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 468
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSReadReports:Z

    goto/16 :goto_0

    .line 469
    :cond_b
    const-string/jumbo v0, "enableSMSDeliveryReports"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 470
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSMSDeliveryReports:Z

    goto/16 :goto_0

    .line 471
    :cond_c
    const-string/jumbo v0, "enableMMSDeliveryReports"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 472
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSDeliveryReports:Z

    goto/16 :goto_0

    .line 473
    :cond_d
    const-string/jumbo v0, "enableGroupMms"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 474
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mEnableGroupMms:Z

    goto/16 :goto_0

    .line 475
    :cond_e
    const-string/jumbo v0, "enableCreationMode"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 476
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mIsEnabledCreationmode:Z

    goto/16 :goto_0

    .line 477
    :cond_f
    const-string/jumbo v0, "enableMMSPriority"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 478
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSPriority:Z

    goto/16 :goto_0

    .line 479
    :cond_10
    const-string/jumbo v0, "enableMMSSendDeliveryReadReports"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mEnableMMSSendDeliveryAndReadReports:Z

    goto/16 :goto_0

    .line 482
    :cond_11
    const-string/jumbo v0, "int"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 484
    const-string/jumbo v0, "maxMessageSize"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 485
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_0

    .line 486
    :cond_12
    const-string/jumbo v0, "maxImageHeight"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 487
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto/16 :goto_0

    .line 488
    :cond_13
    const-string/jumbo v0, "maxImageWidth"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 489
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto/16 :goto_0

    .line 490
    :cond_14
    const-string/jumbo v0, "defaultSMSMessagesPerThread"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 491
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    goto/16 :goto_0

    .line 492
    :cond_15
    const-string/jumbo v0, "defaultMMSMessagesPerThread"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 493
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    goto/16 :goto_0

    .line 494
    :cond_16
    const-string/jumbo v0, "minMessageCountPerThread"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 495
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    goto/16 :goto_0

    .line 496
    :cond_17
    const-string/jumbo v0, "maxMessageCountPerThread"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 497
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    goto/16 :goto_0

    .line 498
    :cond_18
    const-string/jumbo v0, "recipientLimit"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 499
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 500
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    if-gez v0, :cond_0

    .line 501
    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    goto/16 :goto_0

    .line 503
    :cond_19
    const-string/jumbo v0, "httpSocketTimeout"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 504
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    goto/16 :goto_0

    .line 505
    :cond_1a
    const-string/jumbo v0, "minimumSlideElementDuration"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 506
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    goto/16 :goto_0

    .line 507
    :cond_1b
    const-string/jumbo v0, "maxSizeScaleForPendingMmsAllowed"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 508
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    goto/16 :goto_0

    .line 509
    :cond_1c
    const-string/jumbo v0, "aliasMinChars"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 510
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    goto/16 :goto_0

    .line 511
    :cond_1d
    const-string/jumbo v0, "aliasMaxChars"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 512
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    goto/16 :goto_0

    .line 513
    :cond_1e
    const-string/jumbo v0, "smsToMmsTextThreshold"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0a0004

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 516
    if-nez v0, :cond_1f

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1f
    sput v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    goto/16 :goto_0

    .line 518
    :cond_20
    const-string/jumbo v0, "maxMessageTextSize"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 519
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxTextLength:I

    goto/16 :goto_0

    .line 520
    :cond_21
    const-string/jumbo v0, "maxSubjectLength"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 521
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSubjectLength:I

    goto/16 :goto_0

    .line 522
    :cond_22
    const-string/jumbo v0, "maxRestrictedMessageSize"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxRestrictedMessageSize:I

    goto/16 :goto_0

    .line 526
    :cond_23
    const-string/jumbo v0, "string"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const-string/jumbo v0, "userAgent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 529
    sput-object v4, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    goto/16 :goto_0

    .line 530
    :cond_24
    const-string/jumbo v0, "uaProfTagName"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 531
    sput-object v4, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    goto/16 :goto_0

    .line 532
    :cond_25
    const-string/jumbo v0, "uaProfUrl"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 533
    sput-object v4, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 534
    :cond_26
    const-string/jumbo v0, "httpParams"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 535
    sput-object v4, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    goto/16 :goto_0

    .line 536
    :cond_27
    const-string/jumbo v0, "httpParamsLine1Key"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 537
    sput-object v4, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    goto/16 :goto_0

    .line 538
    :cond_28
    const-string/jumbo v0, "emailGatewayNumber"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    sput-object v4, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :cond_29
    move-object v0, v1

    .line 558
    goto/16 :goto_2

    :cond_2a
    move-object v4, v1

    goto/16 :goto_3
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 422
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 425
    :cond_1
    return-void
.end method

.method private static readUAProfFromSystem()V
    .locals 4

    .prologue
    .line 583
    const-string/jumbo v0, "ro.device.wapprofile.url"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get the system property  of ro.device.wapprofile.url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 588
    :cond_0
    return-void
.end method
