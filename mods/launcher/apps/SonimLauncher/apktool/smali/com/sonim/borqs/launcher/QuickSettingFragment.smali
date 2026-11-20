.class public Lcom/sonim/borqs/launcher/QuickSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "QuickSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/QuickSettingFragment$10;,
        Lcom/sonim/borqs/launcher/QuickSettingFragment$1;,
        Lcom/sonim/borqs/launcher/QuickSettingFragment$2;,
        Lcom/sonim/borqs/launcher/QuickSettingFragment$3;,
        Lcom/sonim/borqs/launcher/QuickSettingFragment$4;,
        Lcom/sonim/borqs/launcher/QuickSettingFragment$5;,
        Lcom/sonim/borqs/launcher/QuickSettingFragment$6;,
        Lcom/sonim/borqs/launcher/QuickSettingFragment$7;,
        Lcom/sonim/borqs/launcher/QuickSettingFragment$8;,
        Lcom/sonim/borqs/launcher/QuickSettingFragment$9;
    }
.end annotation


# instance fields
# FEAT(tray): pending or active Quick Settings for this resume
.field private mWaveQuickSettings:Lcom/sonim/borqs/launcher/WaveQuickSettings;
.field private final EXTRA_AVAILABLE:Ljava/lang/String;

.field private final EXTRA_ENABLED:Ljava/lang/String;

.field private final MSG_TORCH_AVAILABLE:I

.field private final MSG_TORCH_ENABLED:I

.field private final PRE_AIRPLANE_LISTENERS:Ljava/lang/String;

.field private final PRE_AIRPLANE_LISTENER_PACKAGES:Ljava/lang/String;

.field dataDialog:Landroid/app/AlertDialog;

.field private mATTMobileData:Lcom/sonim/borqs/launcher/MultiProfilePreference;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothTetherSettings:Landroid/preference/Preference;

.field private mCameraSupported:Z

.field private mConnectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

.field private mEnableAirplaneMode:Landroid/preference/SwitchPreference;

.field private mEnableBluetooth:Landroid/preference/SwitchPreference;

.field private mEnableMobileData:Landroid/preference/SwitchPreference;

.field private mEnableTorchLight:Landroid/preference/SwitchPreference;

.field private mEnableWifi:Landroid/preference/SwitchPreference;

.field private mEnableWifiCalling:Lcom/sonim/borqs/launcher/WifiCallingPreference;

.field private mFlashlightController:Lcom/sonim/borqs/launcher/FlashlightController;

.field mFlashlightListener:Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;

.field private mHasUserInput:Z

.field private mHotspotSettings:Landroid/preference/SwitchPreference;

.field private mIsAirplaneEnabled:Z

.field private mIsSDKFeatureEnabled:Z

.field private mItemChangeCount:I

.field private mListView:Landroid/widget/ListView;

.field private mMobileDataEvent:Z

.field private mNotShowAgainCheckbox:Landroid/widget/CheckBox;

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mQuickSettingsRoot:Landroid/preference/PreferenceScreen;

.field private mStateMachineEvent:Z

.field private mStaticQuickSettingsHeader:Landroid/preference/PreferenceCategory;

.field private mSwitchProfile:Lcom/sonim/borqs/launcher/MultiProfilePreference;

.field private mTelephonyExtManager:Lorg/borqs/internal/TelephonyExtManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTetheringReceiver:Landroid/content/BroadcastReceiver;

.field private mToast:Landroid/widget/Toast;

.field private mToggleTorchReceiver:Landroid/content/BroadcastReceiver;

.field private mTorchHandler:Landroid/os/Handler;

.field private mUSBTetherSettings:Landroid/preference/Preference;

.field mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbSettings:Landroid/preference/Preference;

.field private mWfcEnabled:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private nHotspotSettings:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mStaticQuickSettingsHeader:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTorchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbSettings:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Lcom/sonim/borqs/launcher/FlashlightController;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightController:Lcom/sonim/borqs/launcher/FlashlightController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonim/borqs/launcher/QuickSettingFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mItemChangeCount:I

    return v0
.end method

.method static synthetic -get6(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mNotShowAgainCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonim/borqs/launcher/QuickSettingFragment;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mQuickSettingsRoot:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHasUserInput:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonim/borqs/launcher/QuickSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mItemChangeCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonim/borqs/launcher/QuickSettingFragment;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->hasUsb(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->addUsbSettingIfNotPresent()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->performDataToggle(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setListSelectionToTop()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setTorchAvailablility(Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setTorchState(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->showTurnOffWifiDialog()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->turnOffWifi()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->turnOffWificancel()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->closeProfileProxy()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->hideShowBluetoothTetherSetting(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->hideShowHotspotSetting(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->hideShowUSBTetherSetting(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initAirplaneModeSetting()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initBluetoothSetting()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initMobileDataSetting()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initWifiSetting()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 79
    const-string/jumbo v0, "pre_airplane_listeners_active"

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->PRE_AIRPLANE_LISTENERS:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "pre_airplane_listeners_pkg"

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->PRE_AIRPLANE_LISTENER_PACKAGES:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mToast:Landroid/widget/Toast;

    .line 118
    iput-boolean v2, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsSDKFeatureEnabled:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mItemChangeCount:I

    .line 127
    iput-boolean v2, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mMobileDataEvent:Z

    .line 128
    iput-boolean v3, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mCameraSupported:Z

    .line 129
    iput-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 661
    iput-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->dataDialog:Landroid/app/AlertDialog;

    .line 688
    new-instance v0, Lcom/sonim/borqs/launcher/QuickSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$1;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mToggleTorchReceiver:Landroid/content/BroadcastReceiver;

    .line 696
    new-instance v0, Lcom/sonim/borqs/launcher/QuickSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$2;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 822
    new-instance v0, Lcom/sonim/borqs/launcher/QuickSettingFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment$3;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 883
    new-instance v0, Lcom/sonim/borqs/launcher/QuickSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$4;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 952
    new-instance v0, Lcom/sonim/borqs/launcher/QuickSettingFragment$5;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$5;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mConnectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 967
    new-instance v0, Lcom/sonim/borqs/launcher/QuickSettingFragment$6;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$6;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 1054
    new-instance v0, Lcom/sonim/borqs/launcher/QuickSettingFragment$7;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$7;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    .line 1194
    new-instance v0, Lcom/sonim/borqs/launcher/QuickSettingFragment$8;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$8;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 1265
    iput v3, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->MSG_TORCH_ENABLED:I

    .line 1266
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->MSG_TORCH_AVAILABLE:I

    .line 1267
    const-string/jumbo v0, "torch_enabled"

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->EXTRA_ENABLED:Ljava/lang/String;

    .line 1268
    const-string/jumbo v0, "torch_available"

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->EXTRA_AVAILABLE:Ljava/lang/String;

    .line 1292
    new-instance v0, Lcom/sonim/borqs/launcher/QuickSettingFragment$9;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$9;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    .line 1291
    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightListener:Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;

    .line 1347
    new-instance v0, Lcom/sonim/borqs/launcher/QuickSettingFragment$10;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment$10;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTorchHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method private addBluetoothTetherSettingIfNotPresent()V
    .locals 2

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothTetherSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothTetherSettings:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getPreferenceOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1216
    return-void

    .line 1219
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothTetherSettings:Landroid/preference/Preference;

    .line 1220
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothTetherSettings:Landroid/preference/Preference;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 1221
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothTetherSettings:Landroid/preference/Preference;

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1222
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothTetherSettings:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getPreferenceOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1223
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothTetherSettings:Landroid/preference/Preference;

    const-string/jumbo v1, "key_bluetooth_tether_settings"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothTetherSettings:Landroid/preference/Preference;

    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$25;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$25;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1236
    return-void
.end method

.method private addHotspotSettingIfNotPresent()V
    .locals 2

    .prologue
    .line 1120
    sget-boolean v0, Landroid/os/Build;->IS_VZW:Z

    if-eqz v0, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getPreferenceOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 1123
    return-void

    .line 1125
    :cond_0
    new-instance v0, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    .line 1126
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 1127
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 1128
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getPreferenceOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 1129
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "key_hotspot_settings"

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1163
    :goto_0
    return-void

    .line 1132
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->nHotspotSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 1133
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->nHotspotSettings:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getPreferenceOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1134
    return-void

    .line 1136
    :cond_2
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->nHotspotSettings:Landroid/preference/Preference;

    .line 1137
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->nHotspotSettings:Landroid/preference/Preference;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 1138
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->nHotspotSettings:Landroid/preference/Preference;

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1139
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->nHotspotSettings:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getPreferenceOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1140
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->nHotspotSettings:Landroid/preference/Preference;

    const-string/jumbo v1, "key_hotspot_settings"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->nHotspotSettings:Landroid/preference/Preference;

    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$24;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$24;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private addSwitchProfile()V
    .locals 2

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mSwitchProfile:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$27;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$27;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MultiProfilePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1504
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setCurrentProfile()V

    .line 1505
    return-void
.end method

.method private addTetherSettingIfNotPresent()V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUSBTetherSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUSBTetherSettings:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getPreferenceOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1031
    return-void

    .line 1034
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUSBTetherSettings:Landroid/preference/Preference;

    .line 1035
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUSBTetherSettings:Landroid/preference/Preference;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 1036
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUSBTetherSettings:Landroid/preference/Preference;

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1037
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUSBTetherSettings:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getPreferenceOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1038
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUSBTetherSettings:Landroid/preference/Preference;

    const-string/jumbo v1, "key_usb_tether_settings"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUSBTetherSettings:Landroid/preference/Preference;

    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$23;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$23;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1052
    return-void
.end method

.method private addUsbSettingIfNotPresent()V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbSettings:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getPreferenceOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1004
    return-void

    .line 1006
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbSettings:Landroid/preference/Preference;

    .line 1007
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbSettings:Landroid/preference/Preference;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 1008
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbSettings:Landroid/preference/Preference;

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1009
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbSettings:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getPreferenceOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1010
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbSettings:Landroid/preference/Preference;

    const-string/jumbo v1, "key_usb_settings"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbSettings:Landroid/preference/Preference;

    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$22;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$22;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1022
    return-void
.end method

.method private closeProfileProxy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1253
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1254
    const-string/jumbo v0, "QuickSettingFragment"

    const-string/jumbo v1, "onServiceDisconnected closeProfileProxy"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1256
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    .line 1255
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1259
    return-void
.end method

.method public static create()Lcom/sonim/borqs/launcher/QuickSettingFragment;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/sonim/borqs/launcher/QuickSettingFragment;

    invoke-direct {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;-><init>()V

    .line 138
    return-object v0
.end method

.method private getPreferenceOrder()I
    .locals 2

    .prologue
    .line 1385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1386
    if-lez v0, :cond_0

    .line 1387
    neg-int v0, v0

    return v0

    .line 1389
    :cond_0
    return v0
.end method

.method private getProfileIcon(I)I
    .locals 1

    .prologue
    .line 1571
    packed-switch p1, :pswitch_data_0

    .line 1585
    const v0, 0x7f020055

    return v0

    .line 1573
    :pswitch_0
    const v0, 0x7f020057

    return v0

    .line 1575
    :pswitch_1
    const v0, 0x7f02004f

    return v0

    .line 1577
    :pswitch_2
    const v0, 0x7f020056

    return v0

    .line 1579
    :pswitch_3
    const v0, 0x7f02004e

    return v0

    .line 1583
    :pswitch_4
    const v0, 0x7f020050

    return v0

    .line 1571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static getProfileString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1590
    packed-switch p1, :pswitch_data_0

    .line 1607
    return-object p2

    .line 1592
    :pswitch_0
    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1594
    :pswitch_1
    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1596
    :pswitch_2
    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1598
    :pswitch_3
    const v0, 0x7f0b0048

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1603
    :pswitch_4
    return-object p2

    .line 1605
    :pswitch_5
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1590
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getWiFiState()I
    .locals 4

    .prologue
    .line 711
    const/4 v0, 0x1

    .line 713
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 716
    :cond_0
    const-string/jumbo v1, "QuickSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWiFiState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    return v0
.end method

.method private handlePreAirplaneEnabler()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1466
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1467
    const-string/jumbo v1, "pre_airplane_listeners_active"

    .line 1465
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1469
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1470
    const-string/jumbo v2, "pre_airplane_listeners_pkg"

    .line 1468
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1471
    const-string/jumbo v2, "QuickSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending preairplane broadcast... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "PKG:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonim/borqs/launcher/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    if-lez v0, :cond_0

    if-eqz v1, :cond_0

    .line 1474
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.PREAIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1476
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1477
    return v5

    .line 1479
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private hasUsb(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1091
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    return v2

    .line 1092
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1093
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 1094
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    return v0

    .line 1093
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1097
    :cond_3
    return v2
.end method

.method private hideShowBluetoothTetherSetting(Z)V
    .locals 2

    .prologue
    .line 1240
    if-eqz p1, :cond_1

    .line 1241
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->addBluetoothTetherSettingIfNotPresent()V

    .line 1242
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothTetherSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1243
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setListSelectionToTop()V

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothTetherSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "key_bluetooth_tether_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothTetherSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private hideShowHotspotSetting(Z)V
    .locals 2

    .prologue
    .line 1166
    if-eqz p1, :cond_2

    .line 1167
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->addHotspotSettingIfNotPresent()V

    .line 1168
    sget-boolean v0, Landroid/os/Build;->IS_VZW:Z

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1172
    :goto_0
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setListSelectionToTop()V

    .line 1187
    :cond_0
    :goto_1
    return-void

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->nHotspotSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1174
    :cond_2
    sget-boolean v0, Landroid/os/Build;->IS_VZW:Z

    if-eqz v0, :cond_3

    .line 1175
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "key_hotspot_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1181
    :cond_3
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->nHotspotSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "key_hotspot_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->nHotspotSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private hideShowUSBTetherSetting(Z)V
    .locals 2

    .prologue
    .line 1102
    if-eqz p1, :cond_1

    .line 1103
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->addTetherSettingIfNotPresent()V

    .line 1104
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUSBTetherSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1105
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setListSelectionToTop()V

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUSBTetherSettings:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "key_usb_tether_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUSBTetherSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initAirplaneModeSetting()V
    .locals 5

    .prologue
    const v2, 0x7f02002e

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 832
    const-string/jumbo v0, "QuickSettingFragment"

    const-string/jumbo v1, "Activity not initialized"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 837
    const-string/jumbo v4, "airplane_mode_on"

    .line 835
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsAirplaneEnabled:Z

    .line 838
    const-string/jumbo v0, "QuickSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initAirplaneModeSetting : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsAirplaneEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableAirplaneMode:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsAirplaneEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 840
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsAirplaneEnabled:Z

    if-eqz v0, :cond_3

    .line 841
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableAirplaneMode:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isAirplaneLockedbySPCC()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 847
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 835
    goto :goto_0

    .line 842
    :cond_2
    const v0, 0x7f020030

    goto :goto_1

    .line 844
    :cond_3
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableAirplaneMode:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isAirplaneLockedbySPCC()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setIcon(I)V

    goto :goto_2

    .line 845
    :cond_4
    const v2, 0x7f02002f

    goto :goto_3
.end method

.method private initBluetoothSetting()V
    .locals 4

    .prologue
    const v0, 0x7f020031

    .line 865
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 866
    const-string/jumbo v0, "QuickSettingFragment"

    const-string/jumbo v1, "Activity not initialized"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    return-void

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 870
    iget-object v2, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 871
    iget-object v2, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 872
    if-eqz v1, :cond_2

    .line 873
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isBluetoothLockedbySPCC()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 881
    :goto_1
    return-void

    .line 874
    :cond_1
    const v0, 0x7f020033

    goto :goto_0

    .line 876
    :cond_2
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isBluetoothLockedbySPCC()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 878
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->hideShowBluetoothTetherSetting(Z)V

    goto :goto_1

    .line 877
    :cond_3
    const v0, 0x7f020032

    goto :goto_2
.end method

.method private initHotspotSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 344
    const-string/jumbo v0, "QuickSettingFragment"

    const-string/jumbo v1, "Activity not initialized"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    .line 348
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->addHotspotSettingIfNotPresent()V

    .line 349
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 350
    const-string/jumbo v2, "airplane_mode_on"

    .line 349
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 352
    if-eqz v0, :cond_1

    .line 353
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 354
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 364
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 358
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setIcon(I)V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initMobileDataSetting()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 903
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mATTMobileData:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mATTMobileData:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    .line 904
    :goto_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isMobileDataSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsAirplaneEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    move v3, v1

    .line 906
    :goto_1
    if-eqz v0, :cond_0

    .line 907
    if-eqz v3, :cond_7

    const v1, 0x7f020037

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 911
    :cond_0
    if-eqz v0, :cond_2

    .line 913
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isMobileDataSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsAirplaneEnabled:Z

    if-eqz v1, :cond_8

    :cond_1
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mATTMobileData:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    if-eqz v0, :cond_3

    .line 918
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mATTMobileData:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    if-eqz v3, :cond_9

    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Lcom/sonim/borqs/launcher/MultiProfilePreference;->setProfileText(Ljava/lang/String;)V

    .line 922
    :cond_3
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableMobileData:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableMobileData:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setMobileDataChecked(ZLandroid/preference/SwitchPreference;)V

    .line 923
    :cond_4
    return-void

    .line 903
    :cond_5
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableMobileData:Landroid/preference/SwitchPreference;

    goto :goto_0

    :cond_6
    move v3, v2

    .line 904
    goto :goto_1

    .line 908
    :cond_7
    const v1, 0x7f020036

    goto :goto_2

    .line 913
    :cond_8
    const/4 v1, 0x1

    goto :goto_3

    .line 918
    :cond_9
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private initSettings()V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initWifiSetting()V

    .line 331
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initWifiCallSetting()V

    .line 332
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initAirplaneModeSetting()V

    .line 333
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initBluetoothSetting()V

    .line 334
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initMobileDataSetting()V

    .line 335
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initTorch()V

    .line 336
    sget-boolean v0, Landroid/os/Build;->IS_VZW:Z

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->hideShowHotspotSetting(Z)V

    .line 338
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initHotspotSetting()V

    .line 340
    :cond_0
    return-void
.end method

.method private initTorch()V
    .locals 2

    .prologue
    .line 1271
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mCameraSupported:Z

    if-nez v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->isTorchOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1273
    return-void

    .line 1275
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1276
    const-string/jumbo v0, "QuickSettingFragment"

    const-string/jumbo v1, "Activity not initialized"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    return-void

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_2

    .line 1280
    return-void

    .line 1283
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightController:Lcom/sonim/borqs/launcher/FlashlightController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightController:Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/FlashlightController;->hasFlashlight()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1284
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1288
    :goto_0
    return-void

    .line 1286
    :cond_3
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightController:Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/FlashlightController;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setTorchState(Z)V

    goto :goto_0
.end method

.method private initWifiCallSetting()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 762
    const-string/jumbo v0, "QuickSettingFragment"

    const-string/jumbo v1, "Activity not initialized"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-void

    .line 765
    :cond_0
    const-string/jumbo v0, "persist.radio.vowifi_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    move v0, v1

    .line 766
    :goto_0
    iget-object v3, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifiCalling:Lcom/sonim/borqs/launcher/WifiCallingPreference;

    if-eqz v3, :cond_2

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifiCalling:Lcom/sonim/borqs/launcher/WifiCallingPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 768
    return-void

    :cond_1
    move v0, v2

    .line 765
    goto :goto_0

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 771
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 770
    :goto_1
    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWfcEnabled:Z

    .line 772
    const-string/jumbo v0, "QuickSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initWifiCallSetting () mWfcEnabled ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWfcEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWfcEnabled:Z

    if-eqz v0, :cond_4

    .line 774
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifiCalling:Lcom/sonim/borqs/launcher/WifiCallingPreference;

    invoke-virtual {v0, v2}, Lcom/sonim/borqs/launcher/WifiCallingPreference;->setState(Z)V

    .line 775
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifiCalling:Lcom/sonim/borqs/launcher/WifiCallingPreference;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/WifiCallingPreference;->setIcon(I)V

    .line 780
    :goto_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifiCalling:Lcom/sonim/borqs/launcher/WifiCallingPreference;

    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$21;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$21;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/WifiCallingPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 793
    return-void

    :cond_3
    move v0, v1

    .line 770
    goto :goto_1

    .line 777
    :cond_4
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifiCalling:Lcom/sonim/borqs/launcher/WifiCallingPreference;

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/WifiCallingPreference;->setState(Z)V

    .line 778
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifiCalling:Lcom/sonim/borqs/launcher/WifiCallingPreference;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/WifiCallingPreference;->setIcon(I)V

    goto :goto_2
.end method

.method private initWifiSetting()V
    .locals 4

    .prologue
    const v0, 0x7f02003f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 721
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 722
    const-string/jumbo v0, "QuickSettingFragment"

    const-string/jumbo v1, "Activity not initialized"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-void

    .line 727
    :cond_0
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getWiFiState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 745
    invoke-direct {p0, v3}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setWifiChecked(Z)V

    .line 746
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 749
    :goto_0
    return-void

    .line 730
    :pswitch_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 733
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setWifiChecked(Z)V

    .line 734
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 735
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isWifiLockedbySPCC()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setIcon(I)V

    goto :goto_0

    .line 736
    :cond_1
    const v0, 0x7f020041

    goto :goto_1

    .line 739
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setWifiChecked(Z)V

    .line 740
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 741
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isWifiLockedbySPCC()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setIcon(I)V

    goto :goto_0

    .line 742
    :cond_2
    const v0, 0x7f020040

    goto :goto_2

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isAirplaneLockedbySPCC()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1433
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsSDKFeatureEnabled:Z

    if-eqz v0, :cond_0

    .line 1434
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SPCCSettingsManager;->getAirplaneModeLockState(Landroid/content/Context;)I

    move-result v0

    .line 1435
    const-string/jumbo v1, "SONIMSDK3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Airplane :: islocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    if-eqz v0, :cond_0

    .line 1437
    const/4 v0, 0x1

    return v0

    .line 1440
    :cond_0
    return v4
.end method

.method private isBluetoothLockedbySPCC()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1422
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsSDKFeatureEnabled:Z

    if-eqz v0, :cond_0

    .line 1423
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SPCCSettingsManager;->getBluetoothLockState(Landroid/content/Context;)I

    move-result v0

    .line 1424
    if-eqz v0, :cond_0

    .line 1425
    const-string/jumbo v0, "SONIMSDK3.0"

    const-string/jumbo v1, "Bluetooth :: islocked"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const/4 v0, 0x1

    return v0

    .line 1429
    :cond_0
    return v1
.end method

.method private isMobileDataLockedbySPCC()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1444
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsSDKFeatureEnabled:Z

    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SPCCSettingsManager;->getMobileDataLockState(Landroid/content/Context;)I

    move-result v0

    .line 1446
    const-string/jumbo v1, "SONIMSDK3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MobileData :: islocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    if-eqz v0, :cond_0

    .line 1448
    const/4 v0, 0x1

    return v0

    .line 1451
    :cond_0
    return v4
.end method

.method private isRoaming()Z
    .locals 2

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 1618
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1619
    const-string/jumbo v1, "phone"

    .line 1618
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 1621
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0

    .line 1622
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isStealthModeEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1545
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1546
    const-string/jumbo v1, "multi_profile_current_profile_name"

    .line 1545
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 1548
    :cond_0
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1549
    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1550
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1551
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1552
    const/4 v0, 0x1

    return v0

    .line 1555
    :cond_1
    return v2
.end method

.method private isWifiLockedbySPCC()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1411
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsSDKFeatureEnabled:Z

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SPCCSettingsManager;->getWifiLockState(Landroid/content/Context;)I

    move-result v0

    .line 1413
    if-eqz v0, :cond_0

    .line 1414
    const-string/jumbo v0, "SONIMSDK3.0"

    const-string/jumbo v1, "Wifi :: islocked"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const/4 v0, 0x1

    return v0

    .line 1418
    :cond_0
    return v1
.end method

.method private performDataToggle(Z)V
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setMobileDataEnabled(Z)V

    .line 684
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableMobileData:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 685
    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setMobileDataUI(Z)V

    .line 686
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mConnectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SERVICE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    .line 248
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 247
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 252
    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 252
    const/4 v3, 0x1

    .line 251
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 274
    iget-object v2, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    .line 273
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightController:Lcom/sonim/borqs/launcher/FlashlightController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightController:Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/FlashlightController;->hasFlashlight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightController:Lcom/sonim/borqs/launcher/FlashlightController;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightListener:Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/FlashlightController;->addListener(Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;)V

    .line 285
    :cond_1
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mCameraSupported:Z

    if-nez v0, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mToggleTorchReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.borqs.torch.ACTION_TOGGLE_TORCH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    :cond_2
    return-void
.end method

.method private setAirplaneMode(Z)V
    .locals 3

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 851
    const-string/jumbo v2, "airplane_mode_on"

    .line 852
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 850
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 854
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 855
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 856
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 857
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 856
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 858
    return-void

    .line 852
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCurrentProfile()V
    .locals 3

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1528
    const-string/jumbo v1, "multi_profile_current_profile_name"

    .line 1527
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1529
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1531
    :cond_0
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1532
    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1533
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1534
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 1535
    invoke-direct {p0, v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setCurrentProfileIcon(I)V

    .line 1536
    iget-object v2, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getProfileString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setCurrentProfileText(Ljava/lang/String;)V

    .line 1542
    :goto_0
    return-void

    .line 1540
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setCurrentProfileText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurrentProfileIcon(I)V
    .locals 2

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mSwitchProfile:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    if-eqz v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mSwitchProfile:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getProfileIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MultiProfilePreference;->setIcon(I)V

    .line 1562
    :cond_0
    return-void
.end method

.method private setCurrentProfileText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mSwitchProfile:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mSwitchProfile:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    invoke-virtual {v0, p1}, Lcom/sonim/borqs/launcher/MultiProfilePreference;->setProfileText(Ljava/lang/String;)V

    .line 1568
    :cond_0
    return-void
.end method

.method private setListSelectionToTop()V
    .locals 4

    .prologue
    .line 1398
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHasUserInput:Z

    if-nez v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$26;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$26;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    .line 1405
    const-wide/16 v2, 0x12c

    .line 1399
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1407
    :cond_0
    return-void
.end method

.method private setMobileDataChecked(ZLandroid/preference/SwitchPreference;)V
    .locals 1

    .prologue
    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mMobileDataEvent:Z

    .line 934
    invoke-virtual {p2, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mMobileDataEvent:Z

    .line 936
    return-void
.end method

.method private setMobileDataUI(Z)V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableMobileData:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 927
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableMobileData:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_1

    const v0, 0x7f020037

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 930
    :cond_0
    return-void

    .line 928
    :cond_1
    const v0, 0x7f020036

    goto :goto_0
.end method

.method private setTorchAvailablility(Z)V
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1345
    return-void
.end method

.method private setTorchState(Z)V
    .locals 2

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1335
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1336
    if-eqz p1, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 1341
    :goto_0
    return-void

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setIcon(I)V

    goto :goto_0
.end method

.method private setWifiChecked(Z)V
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mStateMachineEvent:Z

    .line 753
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mStateMachineEvent:Z

    .line 755
    return-void
.end method

.method private showDisableDialog()V
    .locals 4

    .prologue
    .line 664
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 666
    new-instance v2, Lcom/sonim/borqs/launcher/QuickSettingFragment$19;

    invoke-direct {v2, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$19;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    const v3, 0x104000a

    .line 665
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 672
    new-instance v2, Lcom/sonim/borqs/launcher/QuickSettingFragment$20;

    invoke-direct {v2, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$20;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    const/high16 v3, 0x1040000

    .line 665
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 678
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->dataDialog:Landroid/app/AlertDialog;

    .line 679
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->dataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 680
    return-void
.end method

.method private showTurnOffWifiDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 455
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 456
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 457
    const v2, 0x7f03000a

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 458
    const v0, 0x7f0e0026

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mNotShowAgainCheckbox:Landroid/widget/CheckBox;

    .line 459
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    const-string/jumbo v0, "persist.sys.wifi.check"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 462
    const v1, 0x7f0b0057

    .line 461
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 463
    const v1, 0x7f0b0058

    .line 461
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 466
    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$13;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$13;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    .line 465
    const v2, 0x7f0b0059

    .line 461
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 478
    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$14;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$14;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    .line 477
    const v2, 0x7f0b005a

    .line 461
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 487
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 497
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->turnOffWifi()V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    .line 493
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 494
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 495
    return-void
.end method

.method private turnOffWifi()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 444
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    .line 445
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 446
    return-void
.end method

.method private turnOffWificancel()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 450
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 451
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiStateChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBTReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 302
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 307
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 311
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTetheringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    :cond_4
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->closeProfileProxy()V

    .line 316
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightController:Lcom/sonim/borqs/launcher/FlashlightController;

    if-eqz v0, :cond_5

    .line 317
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightController:Lcom/sonim/borqs/launcher/FlashlightController;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightListener:Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/FlashlightController;->removeListener(Lcom/sonim/borqs/launcher/FlashlightController$FlashlightListener;)V

    .line 320
    :cond_5
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mCameraSupported:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mToggleTorchReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 321
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mToggleTorchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    :cond_6
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mConnectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 324
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mConnectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 327
    :cond_7
    return-void
.end method

.method private updateCurrentProfile()V
    .locals 2

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isStealthModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1512
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->updateQuickProfileForStealthMode(Z)V

    .line 1513
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mSwitchProfile:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mQuickSettingsRoot:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "key_switch_profile"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mQuickSettingsRoot:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mSwitchProfile:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1524
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->updateQuickProfileForStealthMode(Z)V

    .line 1519
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mQuickSettingsRoot:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "key_switch_profile"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1520
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mQuickSettingsRoot:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mSwitchProfile:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1522
    :cond_2
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setCurrentProfile()V

    goto :goto_0
.end method


# virtual methods
.method public isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 940
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 940
    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 367
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 370
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 371
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mListView:Landroid/widget/ListView;

    .line 372
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 374
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$11;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 392
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$12;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$12;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 407
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 408
    const-string/jumbo v1, "wifi"

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 410
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 411
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 412
    const-string/jumbo v1, "phone"

    .line 411
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 413
    new-instance v0, Lcom/sonim/borqs/launcher/FlashlightController;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonim/borqs/launcher/FlashlightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mFlashlightController:Lcom/sonim/borqs/launcher/FlashlightController;

    .line 415
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 416
    const-string/jumbo v1, "connectivity"

    .line 415
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 418
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 145
    const v1, 0x11200ee

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mIsSDKFeatureEnabled:Z

    .line 146
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->addPreferencesFromResource(I)V

    .line 147
    const-string/jumbo v0, "key_quick_settings_root"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mQuickSettingsRoot:Landroid/preference/PreferenceScreen;

    .line 149
    const-string/jumbo v0, "key_static_quick_settings_header"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 148
    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mStaticQuickSettingsHeader:Landroid/preference/PreferenceCategory;

    .line 150
    const-string/jumbo v0, "key_dynamic_quick_settings"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mDynamicQuickSettings:Landroid/preference/PreferenceCategory;

    .line 151
    const-string/jumbo v0, "key_enable_wifi"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifi:Landroid/preference/SwitchPreference;

    .line 152
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    const-string/jumbo v0, "key_enable_wifi_calling"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/WifiCallingPreference;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifiCalling:Lcom/sonim/borqs/launcher/WifiCallingPreference;

    .line 154
    const-string/jumbo v0, "key_enable_bluetooth"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    .line 155
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    const-string/jumbo v0, "key_enable_mobile_data"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 158
    instance-of v1, v0, Lcom/sonim/borqs/launcher/MultiProfilePreference;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Lcom/sonim/borqs/launcher/MultiProfilePreference;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mATTMobileData:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    .line 160
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mATTMobileData:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    invoke-virtual {v0, p0}, Lcom/sonim/borqs/launcher/MultiProfilePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    :goto_0
    const-string/jumbo v0, "key_enable_airplane_mode"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableAirplaneMode:Landroid/preference/SwitchPreference;

    .line 166
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableAirplaneMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string/jumbo v0, "key_enable_torch"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    .line 172
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 173
    const-string/jumbo v1, "android.hardware.camera"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mCameraSupported:Z

    .line 175
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 176
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mCameraSupported:Z

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->isTorchOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    :goto_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mQuickSettingsRoot:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mStaticQuickSettingsHeader:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    .line 187
    const-string/jumbo v0, "key_switch_profile"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/MultiProfilePreference;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mSwitchProfile:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    .line 188
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    const v1, 0x1120069

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isStealthModeEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 188
    if-eqz v0, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->addSwitchProfile()V

    .line 197
    :goto_2
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 196
    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 198
    return-void

    .line 162
    :cond_0
    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableMobileData:Landroid/preference/SwitchPreference;

    .line 163
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableMobileData:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mQuickSettingsRoot:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mSwitchProfile:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 233
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->dataDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->dataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->dataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 236
    :cond_0
    # FEAT(tray): cancel pending startup, or fall through to tear down active listeners
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWaveQuickSettings:Lcom/sonim/borqs/launcher/WaveQuickSettings;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWaveQuickSettings:Lcom/sonim/borqs/launcher/WaveQuickSettings;

    if-eqz v0, :wave_settings_paused

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/WaveQuickSettings;->stop()Z

    move-result v0

    if-eqz v0, :wave_settings_paused

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->unregisterReceivers()V

    .line 237
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->removeProfileUpdateListener(Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;)V

    .line 238
    :wave_settings_paused
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/16 v7, 0x7d3

    const v5, 0x7f02004a

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 501
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 502
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/borqs/internal/TelephonyExtManager;->getInstance(Landroid/content/Context;)Lorg/borqs/internal/TelephonyExtManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTelephonyExtManager:Lorg/borqs/internal/TelephonyExtManager;

    .line 503
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTelephonyExtManager:Lorg/borqs/internal/TelephonyExtManager;

    invoke-virtual {v0}, Lorg/borqs/internal/TelephonyExtManager;->isOperatorSimInserted()Z

    move-result v2

    .line 504
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 505
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 506
    iget-object v3, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_5

    .line 507
    if-eqz v1, :cond_4

    sget-boolean v1, Landroid/os/Build;->IS_VZW:Z

    if-eqz v1, :cond_4

    .line 509
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 510
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 511
    const v1, 0x7f0b0037

    .line 510
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 512
    const v1, 0x7f0b0038

    .line 510
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 513
    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$15;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$15;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    const v2, 0x7f0b0039

    .line 510
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 519
    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$16;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$16;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    const v2, 0x7f0b003a

    .line 510
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->setType(I)V

    .line 528
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 556
    :cond_0
    :goto_0
    return v6

    .line 529
    :cond_1
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 531
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->showTurnOffWifiDialog()V

    goto :goto_0

    .line 532
    :cond_2
    if-ne v0, v6, :cond_3

    .line 534
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    const v1, 0x7f0b000a

    .line 534
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 536
    const v1, 0x7f0b003b

    .line 534
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 537
    new-instance v1, Lcom/sonim/borqs/launcher/QuickSettingFragment$17;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment$17;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    const v2, 0x7f0b003c

    .line 534
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->setType(I)V

    .line 546
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 547
    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    if-nez v2, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->showTurnOffWifiDialog()V

    goto :goto_0

    .line 552
    :cond_4
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    .line 553
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 554
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setIcon(I)V

    goto :goto_0

    .line 559
    :cond_5
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifi:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_b

    .line 560
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_6

    .line 561
    const-string/jumbo v0, "QuickSettingFragment"

    const-string/jumbo v1, "Cannot enable/disable Wifi"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    return v4

    .line 564
    :cond_6
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mStateMachineEvent:Z

    if-eqz v0, :cond_7

    return v4

    .line 566
    :cond_7
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isWifiLockedbySPCC()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 567
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->showSdkAdminToast()V

    .line 568
    return v4

    .line 572
    :cond_8
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 574
    if-eqz v1, :cond_a

    .line 575
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 576
    sget-boolean v0, Landroid/os/Build;->IS_VZW:Z

    if-eqz v0, :cond_9

    .line 577
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 578
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 583
    :cond_9
    :goto_1
    return v6

    .line 581
    :cond_a
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1

    .line 584
    :cond_b
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableAirplaneMode:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_11

    .line 585
    const-string/jumbo v0, "QuickSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in Airplane onClick, enable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-boolean v0, Landroid/os/Build;->IS_VZW:Z

    if-eqz v0, :cond_c

    .line 587
    if-eqz v1, :cond_d

    .line 588
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 589
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setIcon(I)V

    .line 590
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 597
    :cond_c
    :goto_2
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isAirplaneLockedbySPCC()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 598
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->showSdkAdminToast()V

    .line 599
    return v4

    .line 592
    :cond_d
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHotspotSettings:Landroid/preference/SwitchPreference;

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    .line 602
    :cond_e
    if-eqz v1, :cond_f

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->handlePreAirplaneEnabler()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 603
    :cond_f
    invoke-direct {p0, v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setAirplaneMode(Z)V

    .line 607
    :cond_10
    return v6

    .line 608
    :cond_11
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_14

    .line 610
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isBluetoothLockedbySPCC()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 611
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->showSdkAdminToast()V

    .line 612
    return v4

    .line 615
    :cond_12
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableBluetooth:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 617
    if-eqz v1, :cond_13

    .line 618
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 622
    :goto_3
    return v6

    .line 620
    :cond_13
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_3

    .line 623
    :cond_14
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_16

    .line 624
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mCameraSupported:Z

    if-nez v0, :cond_15

    .line 625
    return v4

    .line 628
    :cond_15
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 631
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sonim/borqs/launcher/QuickSettingFragment$18;

    invoke-direct {v2, p0, v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment$18;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;Z)V

    .line 636
    const-wide/16 v4, 0x1f4

    .line 631
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 638
    return v6

    .line 639
    :cond_16
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableMobileData:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_1a

    .line 640
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isMobileDataLockedbySPCC()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 641
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->showSdkAdminToast()V

    .line 642
    return v4

    .line 644
    :cond_17
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mMobileDataEvent:Z

    if-eqz v0, :cond_19

    :cond_18
    return v4

    .line 646
    :cond_19
    if-nez v1, :cond_1b

    sget-boolean v0, Landroid/os/Build;->IS_VZW:Z

    if-eqz v0, :cond_1b

    .line 647
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->showDisableDialog()V

    .line 658
    :cond_1a
    return v4

    .line 649
    :cond_1b
    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setMobileDataEnabled(Z)V

    .line 650
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableMobileData:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 652
    invoke-direct {p0, v1}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->setMobileDataUI(Z)V

    .line 653
    return v6
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 422
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 423
    iget-object v1, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mATTMobileData:Lcom/sonim/borqs/launcher/MultiProfilePreference;

    if-ne p1, v1, :cond_1

    .line 424
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isMobileDataLockedbySPCC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->showSdkAdminToast()V

    .line 426
    return v2

    .line 428
    :cond_0
    const-string/jumbo v1, "com.qualcomm.qti.networksetting"

    .line 429
    const-string/jumbo v2, ".MobileNetworkSettings"

    .line 430
    new-instance v3, Landroid/content/ComponentName;

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 433
    return v5

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mEnableTorchLight:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->toggleTorch()V

    .line 437
    return v5

    .line 439
    :cond_2
    return v2
.end method

.method public onProfileChange()V
    .locals 0

    .prologue
    .line 1612
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->updateCurrentProfile()V

    .line 1613
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mHasUserInput:Z

    # FEAT(tray): only initialize Quick Settings when its page is shown
    new-instance v0, Lcom/sonim/borqs/launcher/WaveQuickSettings;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/WaveQuickSettings;-><init>(Lcom/sonim/borqs/launcher/QuickSettingFragment;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mWaveQuickSettings:Lcom/sonim/borqs/launcher/WaveQuickSettings;

    return-void
.end method

# FEAT(tray): the stock Quick Settings startup, called by WaveQuickSettings
.method waveStartSettings()V
    .locals 2

    .line 204
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->registerReceivers()V

    .line 205
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->initSettings()V

    .line 206
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setProfileUpdateListener(Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;)V

    .line 209
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    const v1, 0x1120069

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->updateCurrentProfile()V

    .line 213
    :cond_0
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 950
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->setUserVisibleHint(Z)V

    .line 218
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    if-eqz p1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 223
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    goto :goto_0
.end method

.method public showSdkAdminToast()V
    .locals 3

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1458
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1459
    const v1, 0x10405b7

    .line 1460
    const/4 v2, 0x0

    .line 1458
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mToast:Landroid/widget/Toast;

    .line 1461
    iget-object v0, p0, Lcom/sonim/borqs/launcher/QuickSettingFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1462
    return-void
.end method
