.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagingPreferenceActivity$1;,
        Lcom/android/mms/ui/MessagingPreferenceActivity$2;,
        Lcom/android/mms/ui/MessagingPreferenceActivity$3;,
        Lcom/android/mms/ui/MessagingPreferenceActivity$4;,
        Lcom/android/mms/ui/MessagingPreferenceActivity$MyAlertDialogFragment;,
        Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;,
        Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;
    }
.end annotation


# static fields
.field private static mHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;


# instance fields
.field private mAdvancedPrefCategory:Landroid/preference/PreferenceCategory;

.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private mAutoDeleteMessagesByDayPref:Landroid/preference/SwitchPreference;

.field private mCBsettingPref:Landroid/preference/Preference;

.field private mCellBroadcsatsPref:Landroid/preference/Preference;

.field private mChatWallpaperPref:Landroid/preference/Preference;

.field private mClearHistoryPref:Landroid/preference/Preference;

.field private mConfigurationmessage:Landroid/preference/Preference;

.field private mDisplayPrefCategory:Landroid/preference/PreferenceCategory;

.field private mEnableFailureChangeToSmsPref:Landroid/preference/CheckBoxPreference;

.field private mEnableGesture:Landroid/preference/Preference;

.field private mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mEnableRcsMessagePref:Landroid/preference/CheckBoxPreference;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private mIsSmsEnabled:Z

.field private mManageSim1Pref:Landroid/preference/Preference;

.field private mManageSim2Pref:Landroid/preference/Preference;

.field private mManageSimPref:Landroid/preference/Preference;

.field private mMemoryStatusPref:Landroid/preference/Preference;

.field mMessagesExpiryDaysListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMessagesExpiryDaysPref:Landroid/preference/Preference;

.field private mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

.field private mMmsCreationModePref:Landroid/preference/ListPreference;

.field private mMmsDeliveryReportPref:Landroid/preference/Preference;

.field private mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

.field private mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

.field private mMmsExpiryPref:Landroid/preference/ListPreference;

.field private mMmsGroupMmsPref:Landroid/preference/Preference;

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsPrefCategory:Landroid/preference/PreferenceCategory;

.field private mMmsReadReportPref:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mMmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt;

.field private mMmsSizeLimit:Landroid/preference/Preference;

.field private mMmsTextSettingsPref:Landroid/preference/Preference;

.field private mNotificationPrefCategory:Landroid/preference/PreferenceCategory;

.field private mOtherPrefCategory:Landroid/preference/PreferenceCategory;

.field private mPopUpAlertPref:Landroid/preference/SwitchPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtonePref:Landroid/preference/RingtonePreference;

.field private mSmsDeliveryReportPref:Landroid/preference/Preference;

.field private mSmsDeliveryReportPrefSub1:Landroid/preference/Preference;

.field private mSmsDeliveryReportPrefSub2:Landroid/preference/Preference;

.field private mSmsDisabledPref:Landroid/preference/Preference;

.field private mSmsEnabledPref:Landroid/preference/Preference;

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsPrefCategory:Landroid/preference/PreferenceCategory;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt;

.field private mSmsSignatureEditPref:Landroid/preference/EditTextPreference;

.field private mSmsSignaturePref:Landroid/preference/CheckBoxPreference;

.field private mSmsTemplate:Landroid/preference/Preference;

.field private mSmsValidityCard1Pref:Landroid/preference/ListPreference;

.field private mSmsValidityCard2Pref:Landroid/preference/ListPreference;

.field private mSmsValidityPref:Landroid/preference/ListPreference;

.field private mSmscPrefCate:Landroid/preference/PreferenceCategory;

.field private mSmscPrefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mStoragePrefCategory:Landroid/preference/PreferenceCategory;

.field private mVibratePref:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get1()Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/ext/util/RecyclerExt;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/ext/util/RecyclerExt;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->adjustSMSC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->chooseFromCamera()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSmscFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSmscFromPreference(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->chooseFromGallery()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->putSmscIntoPref(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessagesDislayExpiryDays()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showToast(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSIMSMSPref()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSMSCPref()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1078
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    .line 1077
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 1095
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    .line 1094
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 1112
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    .line 1111
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessagesExpiryDaysListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 126
    return-void
.end method

.method private adjustSMSC(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1413
    return-object v0
.end method

.method private chooseFromCamera()V
    .locals 6

    .prologue
    .line 1533
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1534
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/mms/util/Utils;->getStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1535
    const-string/jumbo v3, "/DCIM/"

    .line 1534
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1534
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1537
    if-eqz v1, :cond_0

    .line 1538
    const-string/jumbo v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1539
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1541
    :cond_0
    return-void
.end method

.method private chooseFromGallery()V
    .locals 2

    .prologue
    .line 1525
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1526
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1528
    const v1, 0x7f070340

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1529
    const/4 v1, 0x1

    .line 1527
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1530
    return-void
.end method

.method private static enableFailureChangeToSms(ZLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 1714
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setRcsServiceChangeToSmsPolicy(Z)V

    .line 1716
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1717
    const-string/jumbo v1, "pref_key_rcs_message_failure_change_to_sms"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1718
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1719
    return-void
.end method

.method public static enableNotifications(ZLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 1167
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1169
    const-string/jumbo v1, "pref_key_enable_notifications"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1172
    return-void
.end method

.method private static enableRcsMessagePloicy(ZLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 1701
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1702
    const-string/jumbo v1, "pref_key_rcs_immediately_message_policy"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1703
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1704
    return-void
.end method

.method private static getFailureChangeToSmsEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1707
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1709
    const-string/jumbo v1, "pref_key_rcs_message_failure_change_to_sms"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1710
    return v0
.end method

.method public static getIsGroupMmsEnabled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1421
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1422
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v1

    .line 1421
    if-eqz v1, :cond_0

    .line 1423
    return v0

    .line 1425
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1427
    const-string/jumbo v2, "pref_key_mms_group_mms"

    const/4 v3, 0x1

    .line 1426
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1428
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1430
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1428
    :cond_1
    return v0
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1158
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1160
    const-string/jumbo v1, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1161
    return v0
.end method

.method public static getPopUpAlertEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1637
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1639
    const-string/jumbo v1, "pref_key_alert_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1640
    return v0
.end method

.method private static getRcsMessagePloicyEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1693
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1695
    const-string/jumbo v1, "pref_key_rcs_immediately_message_policy"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1696
    return v0
.end method

.method private getSMSCDialogTitle(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 766
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0702aa

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 781
    :goto_0
    return-object v0

    .line 768
    :cond_0
    const v0, 0x7f0702a9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAirPlaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 762
    const-string/jumbo v2, "airplane_mode_on"

    .line 761
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadPrefs()V
    .locals 4

    .prologue
    const v3, 0x7f09003b

    const/4 v2, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 377
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 382
    :goto_0
    const-string/jumbo v0, "pref_key_sms_disabled"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    .line 383
    const-string/jumbo v0, "pref_key_sms_enabled"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsEnabledPref:Landroid/preference/Preference;

    .line 384
    const-string/jumbo v0, "pref_key_enable_gesture"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableGesture:Landroid/preference/Preference;

    .line 386
    const-string/jumbo v0, "pref_key_storage_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mStoragePrefCategory:Landroid/preference/PreferenceCategory;

    .line 387
    const-string/jumbo v0, "pref_key_sms_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    .line 388
    const-string/jumbo v0, "pref_key_mms_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPrefCategory:Landroid/preference/PreferenceCategory;

    .line 390
    const-string/jumbo v0, "pref_key_notification_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 389
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPrefCategory:Landroid/preference/PreferenceCategory;

    .line 392
    const-string/jumbo v0, "pref_key_display_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mDisplayPrefCategory:Landroid/preference/PreferenceCategory;

    .line 393
    const-string/jumbo v0, "pref_key_other_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOtherPrefCategory:Landroid/preference/PreferenceCategory;

    .line 394
    const-string/jumbo v0, "pref_key_advanced_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAdvancedPrefCategory:Landroid/preference/PreferenceCategory;

    # FEAT(rcs settings): "Chat (RCS) messages settings" entry under Advanced settings
    invoke-static {p0, v0}, Lcom/android/mms/wave/WaveRcsSettings;->addEntry(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceCategory;)V

    .line 396
    const-string/jumbo v0, "pref_key_memory_status"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMemoryStatusPref:Landroid/preference/Preference;

    .line 397
    const-string/jumbo v0, "pref_key_cell_broadcasts"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCellBroadcsatsPref:Landroid/preference/Preference;

    .line 398
    const-string/jumbo v0, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 399
    const-string/jumbo v0, "pref_key_manage_sim_messages_slot1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    .line 400
    const-string/jumbo v0, "pref_key_manage_sim_messages_slot2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    .line 401
    const-string/jumbo v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    .line 402
    const-string/jumbo v0, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    .line 403
    const-string/jumbo v0, "pref_key_sms_delivery_reports_slot1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPrefSub1:Landroid/preference/Preference;

    .line 404
    const-string/jumbo v0, "pref_key_sms_delivery_reports_slot2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPrefSub2:Landroid/preference/Preference;

    .line 405
    const-string/jumbo v0, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    .line 406
    const-string/jumbo v0, "pref_key_mms_group_mms"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsGroupMmsPref:Landroid/preference/Preference;

    .line 407
    const-string/jumbo v0, "pref_key_mms_read_reports"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    .line 408
    const-string/jumbo v0, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    .line 409
    const-string/jumbo v0, "pref_key_mms_clear_history"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mClearHistoryPref:Landroid/preference/Preference;

    .line 410
    const-string/jumbo v0, "pref_key_enable_notifications"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 411
    const-string/jumbo v0, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    .line 412
    const-string/jumbo v0, "pref_key_mms_expiry"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryPref:Landroid/preference/ListPreference;

    .line 413
    const-string/jumbo v0, "pref_key_mms_expiry_slot1"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryCard1Pref:Landroid/preference/ListPreference;

    .line 414
    const-string/jumbo v0, "pref_key_mms_expiry_slot2"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryCard2Pref:Landroid/preference/ListPreference;

    .line 415
    const-string/jumbo v0, "pref_key_creation_mode"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCreationModePref:Landroid/preference/ListPreference;

    .line 416
    const-string/jumbo v0, "pref_key_enable_signature"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSignaturePref:Landroid/preference/CheckBoxPreference;

    .line 417
    const-string/jumbo v0, "pref_key_edit_signature"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSignatureEditPref:Landroid/preference/EditTextPreference;

    .line 418
    const-string/jumbo v0, "pref_key_mms_text_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsTextSettingsPref:Landroid/preference/Preference;

    .line 419
    const-string/jumbo v0, "pref_key_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibratePref:Landroid/preference/SwitchPreference;

    .line 420
    const-string/jumbo v0, "pref_key_alert_dialog"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopUpAlertPref:Landroid/preference/SwitchPreference;

    .line 421
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 422
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibratePref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibratePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 424
    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibratePref:Landroid/preference/SwitchPreference;

    .line 426
    :cond_1
    const-string/jumbo v0, "pref_key_root"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 427
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 429
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    const-string/jumbo v1, "pref_key_ringtone"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RingtonePreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    .line 431
    const-string/jumbo v1, "pref_key_message_template"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsTemplate:Landroid/preference/Preference;

    .line 432
    const-string/jumbo v1, "pref_key_sms_validity_period"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityPref:Landroid/preference/ListPreference;

    .line 434
    const-string/jumbo v1, "pref_key_sms_validity_period_slot1"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 433
    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityCard1Pref:Landroid/preference/ListPreference;

    .line 436
    const-string/jumbo v1, "pref_key_sms_validity_period_slot2"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 435
    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityCard2Pref:Landroid/preference/ListPreference;

    .line 438
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isOMACPEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 439
    const-string/jumbo v1, "pref_key_configuration_message"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mConfigurationmessage:Landroid/preference/Preference;

    .line 446
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 447
    const-string/jumbo v1, "pref_key_auto_delete_by_days"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAutoDeleteMessagesByDayPref:Landroid/preference/SwitchPreference;

    .line 448
    const-string/jumbo v1, "pref_key_messages_expiry_days"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessagesExpiryDaysPref:Landroid/preference/Preference;

    .line 457
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDisabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 461
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsEnabledPref:Landroid/preference/Preference;

    if-eqz v1, :cond_4

    .line 462
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsEnabledPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 465
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableGesture:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    .line 466
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mDisplayPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableGesture:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 469
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOtherPrefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_6

    .line 470
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 471
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOtherPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 476
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    if-eqz v0, :cond_7

    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 482
    const-string/jumbo v0, "pref_key_rcs_immediately_message_policy"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableRcsMessagePref:Landroid/preference/CheckBoxPreference;

    .line 484
    const-string/jumbo v0, "pref_key_rcs_message_failure_change_to_sms"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 483
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableFailureChangeToSmsPref:Landroid/preference/CheckBoxPreference;

    .line 487
    :cond_8
    const-string/jumbo v0, "pref_key_mms_size_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsSizeLimit:Landroid/preference/Preference;

    .line 489
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 490
    const-string/jumbo v0, "pref_key_cell_broadcast"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBsettingPref:Landroid/preference/Preference;

    .line 491
    const-string/jumbo v0, "pref_key_message_font_size"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizePref:Landroid/preference/ListPreference;

    .line 494
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 495
    const-string/jumbo v0, "pref_key_chat_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mChatWallpaperPref:Landroid/preference/Preference;

    .line 498
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopUpAlertPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_b

    .line 499
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopUpAlertPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 502
    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 503
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsTextSettingsPref:Landroid/preference/Preference;

    if-eqz v0, :cond_c

    .line 504
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAdvancedPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsTextSettingsPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 506
    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessagePreferences()V

    # FIX(retention): hide the old retention controls in both settings layouts.
    invoke-static {p0}, Lcom/android/mms/ui/WaveRetentionSettings;->hide(Landroid/preference/PreferenceActivity;)V

    .line 507
    return-void

    .line 379
    :cond_d
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 442
    :cond_e
    const-string/jumbo v1, "pref_key_sms_omacp_configuration"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 443
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 451
    :cond_f
    const-string/jumbo v1, "pref_key_storage_delete_by_days"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 452
    if-eqz v1, :cond_2

    .line 453
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method private static putSmscIntoPref(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 1673
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1675
    const-string/jumbo v1, "pref_key_default_smsc"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1676
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1677
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1679
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1680
    const-string/jumbo v0, "slot"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1681
    const-string/jumbo v0, "smsc"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    const-string/jumbo v2, "userobj"

    iget-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1684
    iput-object v1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1686
    invoke-virtual {p3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1687
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1689
    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, p0}, Landroid/preference/RingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1177
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1178
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1179
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1180
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 1

    .prologue
    .line 510
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 513
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 514
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 515
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->loadPrefs()V

    .line 516
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSmsEnabledState()V

    .line 525
    return-void
.end method

.method private setChatWallpaper()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v3, 0x0

    .line 1434
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1435
    const v1, 0x7f060013

    .line 1434
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1438
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1440
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1442
    const v5, 0x7f070342

    .line 1440
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1443
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1445
    const v6, 0x7f070341

    .line 1443
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1450
    :goto_0
    new-array v5, v9, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v3

    .line 1451
    aput-object v2, v5, v10

    .line 1453
    const-string/jumbo v0, "imageField"

    .line 1454
    const-string/jumbo v0, "textField"

    .line 1455
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 1459
    :goto_1
    if-ge v0, v9, :cond_0

    .line 1460
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1461
    const-string/jumbo v7, "imageField"

    aget-object v8, v5, v0

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    const-string/jumbo v7, "textField"

    aget-object v8, v4, v0

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1446
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1447
    :goto_2
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1466
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 1468
    new-array v4, v9, [Ljava/lang/String;

    .line 1469
    const-string/jumbo v1, "imageField"

    aput-object v1, v4, v3

    const-string/jumbo v1, "textField"

    aput-object v1, v4, v10

    .line 1471
    const v1, 0x7f0f016b

    .line 1472
    const v3, 0x7f0f016c

    .line 1470
    filled-new-array {v1, v3}, [I

    move-result-object v5

    .line 1468
    const v3, 0x7f040063

    move-object v1, p0

    .line 1466
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 1475
    new-instance v1, Lcom/android/mms/ui/MessagingPreferenceActivity$13;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$13;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 1490
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1492
    const v2, 0x7f0f0169

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1491
    const v3, 0x7f040062

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1495
    const v1, 0x7f0f016a

    .line 1494
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 1496
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1500
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1501
    const v3, 0x7f07033f

    .line 1500
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1498
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1503
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1504
    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$14;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1522
    return-void

    .line 1446
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private setEnabledNotificationsPref()V
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 834
    return-void
.end method

.method private setMessagePreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 528
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSignatureStatus()V

    .line 530
    const-string/jumbo v0, "pref_key_smsc"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    .line 531
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmscPref()V

    .line 533
    const-string/jumbo v0, "pref_key_root"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 534
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 536
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSIMSMSPref()V

    .line 538
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 539
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPrefSub1:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 541
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPrefSub2:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 542
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 570
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 571
    invoke-static {v3, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->enableRcsMessagePloicy(ZLandroid/content/Context;)V

    .line 572
    invoke-static {v3, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->enableFailureChangeToSms(ZLandroid/content/Context;)V

    .line 573
    const-string/jumbo v1, "pref_key_rcs_send_policy_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 581
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setEnabledNotificationsPref()V

    .line 585
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 586
    const-string/jumbo v1, "pref_key_vibrateWhen"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    const-string/jumbo v1, "pref_key_vibrateWhen"

    .line 587
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    const-string/jumbo v2, "always"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 590
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 591
    const-string/jumbo v3, "pref_key_vibrate"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 592
    const-string/jumbo v3, "pref_key_vibrateWhen"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 594
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibratePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 597
    :cond_1
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 598
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 600
    invoke-static {}, Lcom/android/mms/ext/util/RecyclerExt;->getSmsRecyclerExt()Lcom/android/mms/ext/util/RecyclerExt$SmsRecyclerExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt;

    .line 601
    invoke-static {}, Lcom/android/mms/ext/util/RecyclerExt;->getMmsRecyclerExt()Lcom/android/mms/ext/util/RecyclerExt$MmsRecyclerExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt;

    .line 604
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 605
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 607
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessagesDislayExpiryDays()V

    .line 609
    const-string/jumbo v1, "pref_key_ringtone"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setRingtoneSummary(Ljava/lang/String;)V

    .line 611
    return-void

    .line 546
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 547
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 548
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 549
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPrefSub1:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 554
    :cond_3
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 555
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPrefSub2:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 558
    :cond_4
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v1

    .line 561
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v1

    goto/16 :goto_0

    .line 565
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPrefSub1:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 566
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPrefSub2:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 575
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableRcsMessagePref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getRcsMessagePloicyEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 576
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFailureChangeToSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 577
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableFailureChangeToSmsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 578
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setRcsServiceChangeToSmsPolicy(Z)V

    goto/16 :goto_1
.end method

.method private setMessagesDislayExpiryDays()V
    .locals 4

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessagesExpiryDaysPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessagesExpiryDaysPref:Landroid/preference/Preference;

    .line 851
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 852
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt;

    invoke-virtual {v2, p0}, Lcom/android/mms/ext/util/RecyclerExt;->getMessagesExpiryDays(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 851
    const/high16 v2, 0x7f070000

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 850
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 854
    :cond_0
    return-void
.end method

.method private setMmsDisplayLimit()V
    .locals 4

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    .line 844
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 845
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v2, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 844
    const v2, 0x7f0701c8

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 843
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 846
    return-void
.end method

.method private static setRcsServiceChangeToSmsPolicy(Z)V
    .locals 2

    .prologue
    .line 1723
    :try_start_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->setSendPolicy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    :goto_1
    return-void

    .line 1725
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1726
    :catch_1
    move-exception v0

    .line 1727
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setRingtoneSummary(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 696
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 697
    :goto_0
    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 698
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 700
    return-void

    .line 696
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 699
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0701ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setSMSCPrefState(IZ)V
    .locals 3

    .prologue
    .line 1205
    if-eqz p2, :cond_1

    .line 1206
    const-string/jumbo v0, "MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get SMSC from sub= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSmscFromPreference(I)V

    .line 1219
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1220
    return-void

    .line 1210
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1211
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1212
    const-string/jumbo v2, "slot"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1213
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1214
    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->getSmscFromSub(Landroid/content/Context;ILandroid/os/Message;)V

    goto :goto_0

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSmsDisplayLimit()V
    .locals 4

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    .line 838
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 839
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v2, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 838
    const v2, 0x7f0701c8

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 837
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 840
    return-void
.end method

.method private showSmscPref()V
    .locals 5

    .prologue
    .line 703
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 704
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 705
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 706
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 707
    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSMSCDialogTitle(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 708
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 709
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 724
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefCate:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 725
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_0
    new-instance v3, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 727
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSMSCPref()V

    .line 728
    return-void
.end method

.method private showToast(I)V
    .locals 1

    .prologue
    .line 1193
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1194
    return-void
.end method

.method private startMmsDownload()V
    .locals 4

    .prologue
    .line 1073
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    .line 1074
    const-class v2, Lcom/android/mms/transaction/TransactionService;

    .line 1073
    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1075
    return-void
.end method

.method private updateSIMSMSPref()V
    .locals 2

    .prologue
    .line 731
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 741
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 748
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 758
    :goto_2
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 750
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 751
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 755
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 756
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 753
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private updateSMSCPref()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1223
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1224
    :cond_0
    return-void

    .line 1226
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move v2, v1

    .line 1227
    :goto_0
    if-ge v2, v3, :cond_4

    .line 1229
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1230
    if-eqz v0, :cond_2

    array-length v4, v0

    if-eqz v4, :cond_2

    .line 1231
    aget v0, v0, v1

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isCDMAPhone(I)Z

    move-result v0

    .line 1233
    :goto_1
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isAirPlaneModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1234
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->hasActivatedIccCard(I)Z

    move-result v0

    .line 1233
    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSMSCPrefState(IZ)V

    .line 1227
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1230
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1233
    goto :goto_2

    .line 1236
    :cond_4
    return-void
.end method

.method private updateSignatureStatus()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSignaturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 940
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSignatureEditPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 941
    return-void
.end method

.method private updateSmsEnabledState()V
    .locals 3

    .prologue
    .line 338
    const-string/jumbo v0, "pref_key_root"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 339
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 340
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 342
    const-string/jumbo v2, "Messaging"

    .line 344
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 345
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mStoragePrefCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPrefCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 363
    return-void

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateSmscFromBundle(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1239
    if-eqz p1, :cond_1

    .line 1240
    const-string/jumbo v0, "slot"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1241
    if-eq v0, v1, :cond_1

    .line 1242
    const-string/jumbo v1, "smsc"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1243
    if-nez v1, :cond_0

    .line 1244
    return-void

    .line 1246
    :cond_0
    const-string/jumbo v2, "MessagingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Update SMSC: sub= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " SMSC= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1248
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1251
    :cond_1
    return-void
.end method

.method private updateSmscFromPreference(I)V
    .locals 3

    .prologue
    .line 1662
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1663
    const-string/jumbo v1, "pref_key_default_smsc"

    .line 1664
    const-string/jumbo v2, ""

    .line 1662
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1665
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPrefList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1668
    :cond_0
    return-void
.end method


# virtual methods
.method public getAbsolutePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1600
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 1601
    const-string/jumbo v0, "_data"

    aput-object v0, v2, v1

    .line 1604
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1607
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1609
    const/4 v0, 0x0

    aget-object v0, v2, v0

    .line 1608
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1610
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1616
    if-eqz v1, :cond_0

    .line 1617
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1611
    :cond_0
    return-object v0

    .line 1616
    :cond_1
    if-eqz v1, :cond_2

    .line 1617
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1620
    :cond_2
    :goto_0
    return-object v3

    .line 1613
    :catch_0
    move-exception v0

    .line 1614
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1616
    if-eqz v1, :cond_2

    .line 1617
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1615
    :catchall_0
    move-exception v0

    .line 1616
    if-eqz v1, :cond_3

    .line 1617
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1615
    :cond_3
    throw v0
.end method

.method getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-nez v0, :cond_0

    .line 1128
    new-instance v0, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object v0
.end method

.method public getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 1577
    invoke-static {p0}, Lcom/android/mms/util/Utils;->getStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1578
    new-instance v2, Ljava/io/File;

    const-string/jumbo v1, "temp"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1583
    :cond_0
    const/4 v1, 0x0

    .line 1585
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1585
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1586
    const-string/jumbo v2, ".png"

    .line 1585
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1588
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1589
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1590
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1596
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1591
    :catch_1
    move-exception v0

    .line 1592
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1545
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1546
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1547
    packed-switch p1, :pswitch_data_0

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1549
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1550
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1551
    invoke-virtual {p0, p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getAbsolutePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1553
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1555
    const-string/jumbo v2, "chat_wallpaper"

    .line 1553
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1560
    :pswitch_1
    if-eqz p3, :cond_0

    .line 1561
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1562
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getAbsolutePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1563
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1565
    const-string/jumbo v2, "chat_wallpaper"

    .line 1563
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 307
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mHandler:Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;

    .line 311
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->loadPrefs()V

    .line 313
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 314
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 315
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1135
    packed-switch p1, :pswitch_data_0

    .line 1154
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 1137
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1138
    const v1, 0x7f070276

    .line 1137
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1139
    const v1, 0x7f070277

    .line 1137
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1140
    new-instance v1, Lcom/android/mms/ui/MessagingPreferenceActivity$12;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$12;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    const v2, 0x104000a

    .line 1137
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1150
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 1137
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1151
    const v1, 0x1010355

    .line 1137
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1135
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 944
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 945
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 946
    iget-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_0

    .line 947
    const v0, 0x7f0701b3

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 949
    :cond_0
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 954
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 965
    const/4 v0, 0x0

    return v0

    .line 956
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    .line 957
    return v1

    .line 962
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->finish()V

    .line 963
    return v1

    .line 954
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/AsyncDialog;->clearPendingProgressDialog()V

    .line 373
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1183
    const/4 v0, 0x0

    .line 1184
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtonePref:Landroid/preference/RingtonePreference;

    if-ne p1, v1, :cond_0

    .line 1185
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setRingtoneSummary(Ljava/lang/String;)V

    .line 1186
    const/4 v0, 0x1

    .line 1188
    :cond_0
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    .prologue
    const v1, 0x7f09003b

    const v6, 0x7f0701df

    const/4 v2, 0x1

    .line 971
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 972
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    .line 974
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 975
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    .line 976
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    .line 977
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    .line 978
    const v6, 0x7f0701de

    move-object v1, p0

    .line 972
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    .line 979
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    .line 1066
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 983
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    .line 985
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 986
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    .line 987
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    .line 988
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    move-object v1, p0

    .line 983
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    .line 990
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 991
    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0

    .line 993
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessagesExpiryDaysPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 994
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    .line 996
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessagesExpiryDaysListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 997
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt;

    invoke-virtual {v1, p0}, Lcom/android/mms/ext/util/RecyclerExt;->getMessagesExpiryDays(Landroid/content/Context;)I

    move-result v3

    .line 998
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt;

    invoke-virtual {v1, p0}, Lcom/android/mms/ext/util/RecyclerExt;->getMessagesMinExpiryDays(Landroid/content/Context;)I

    move-result v4

    .line 999
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecyclerExt:Lcom/android/mms/ext/util/RecyclerExt;

    invoke-virtual {v1, p0}, Lcom/android/mms/ext/util/RecyclerExt;->getMessagesMaxExpiryDays(Landroid/content/Context;)I

    move-result v5

    .line 1001
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f070001

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    .line 994
    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1003
    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0

    .line 1005
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsTemplate:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    .line 1006
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessageTemplate;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1007
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_5

    .line 1008
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1009
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSim1Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_6

    .line 1010
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1011
    const-string/jumbo v1, "slot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1012
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1013
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSim2Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_7

    .line 1014
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1015
    const-string/jumbo v1, "slot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1016
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1017
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mClearHistoryPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_9

    .line 1018
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1019
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    .line 1021
    :cond_8
    return v2

    .line 1022
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 1024
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->enableNotifications(ZLandroid/content/Context;)V

    goto/16 :goto_0

    .line 1025
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSignaturePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_b

    .line 1026
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSignatureStatus()V

    goto/16 :goto_0

    .line 1027
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 1028
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startMmsDownload()V

    goto/16 :goto_0

    .line 1032
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mConfigurationmessage:Landroid/preference/Preference;

    if-ne p2, v0, :cond_d

    .line 1034
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.CONFIGURE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    const-string/jumbo v1, "MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity not found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1039
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMemoryStatusPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_e

    .line 1040
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->showMemoryStatusDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1041
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCellBroadcsatsPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_f

    .line 1043
    :try_start_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getCellBroadcastIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1044
    :catch_1
    move-exception v0

    .line 1045
    const-string/jumbo v0, "MessagingPreferenceActivity"

    .line 1046
    const-string/jumbo v1, "ActivityNotFoundException for CellBroadcastListActivity"

    .line 1045
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1048
    :cond_f
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1050
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBsettingPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_10

    .line 1052
    :try_start_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getCellBroadcastIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1053
    :catch_2
    move-exception v0

    .line 1054
    const-string/jumbo v0, "MessagingPreferenceActivity"

    .line 1055
    const-string/jumbo v1, "ActivityNotFoundException for CellBroadcastListActivity"

    .line 1054
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1057
    :cond_10
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1059
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mChatWallpaperPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_11

    .line 1060
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setChatWallpaper()V

    goto/16 :goto_0

    .line 1061
    :cond_11
    const-string/jumbo v0, "pref_key_sms_text_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_12

    .line 1062
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1063
    :cond_12
    const-string/jumbo v0, "pref_key_mms_text_settings"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 1064
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MmsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 320
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 321
    iget-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    if-eq v0, v1, :cond_0

    .line 322
    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mIsSmsEnabled:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->invalidateOptionsMenu()V

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setEnabledNotificationsPref()V

    .line 330
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSignatureStatus()V

    .line 331
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerListeners()V

    .line 332
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSmsEnabledState()V

    .line 333
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSMSCPref()V

    .line 334
    return-void
.end method
