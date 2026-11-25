.class public Lcom/sonim/borqs/launcher/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/LauncherActivity$1;,
        Lcom/sonim/borqs/launcher/LauncherActivity$2;,
        Lcom/sonim/borqs/launcher/LauncherActivity$3;,
        Lcom/sonim/borqs/launcher/LauncherActivity$4;,
        Lcom/sonim/borqs/launcher/LauncherActivity$5;,
        Lcom/sonim/borqs/launcher/LauncherActivity$6;,
        Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;,
        Lcom/sonim/borqs/launcher/LauncherActivity$Apps;,
        Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;,
        Lcom/sonim/borqs/launcher/LauncherActivity$Folder;,
        Lcom/sonim/borqs/launcher/LauncherActivity$HomeViewPagerAdapter;,
        Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;,
        Lcom/sonim/borqs/launcher/LauncherActivity$LoadEventsCallback;,
        Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;,
        Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;,
        Lcom/sonim/borqs/launcher/LauncherActivity$ShortcutUpdateListener;,
        Lcom/sonim/borqs/launcher/LauncherActivity$TextViewImageGetter;,
        Lcom/sonim/borqs/launcher/LauncherActivity$ThemeChangedListener;,
        Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;
    }
.end annotation


# static fields
.field private static mDpadCenterPrefKey:Ljava/lang/String;

.field private static mDpadDownPrefKey:Ljava/lang/String;

.field private static mDpadUpPrefKey:Ljava/lang/String;

.field private static mIsStealthModeEnabled:Z

.field private static mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private final CAMERA_INDEX:I

.field private final EXTRA_IS_FROM_LAUNCHER:Ljava/lang/String;

.field private final NUM_PAGES:I

.field private final PAGE_HOME_SCREEN:I

.field private final PAGE_MY_EVENTS:I

.field private final PAGE_QUICK_SETTINGS:I

.field SIMChangeReceiver:Landroid/content/BroadcastReceiver;

.field appInstalledReceiver:Landroid/content/BroadcastReceiver;

.field homeNavigationShortcutChangeReceiver:Landroid/content/BroadcastReceiver;

.field private isAirplaneModeOn:Z

.field isLongPressonStar:Z

.field private mAppTrayListChangedReceiver:Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;

.field private mAppsAndFolderCursor:Landroid/database/Cursor;

.field private mAppsAndFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsOrFolder:Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

.field private mCameraSupported:Z

.field private mCircleIndicator:Lcom/sonim/borqs/launcher/CirclePageIndicator;

.field private mColorfulThemeIconIds:[I

.field private mContext:Landroid/content/Context;

.field private mCustomCling:Landroid/view/View;

.field private mDPADCenterPkgName:Ljava/lang/String;

.field private mDPADDownPkgName:Ljava/lang/String;

.field private mDPADUpPkgName:Ljava/lang/String;

.field private mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

.field private mDefaultHomeKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

.field private mDrawerFolderGrid:Landroid/widget/GridView;

.field private mFolderName:Ljava/lang/String;

.field mGoToWorkspace:Z

.field mHandler:Landroid/os/Handler;

.field private mHomeScreenFrameLayout:Landroid/widget/FrameLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsAppTrayshown:Z

.field private mIsClingVisible:Z

.field private mIsClingVisibleOnSIMInsert:Z

.field private mIsFirstPageCling:Z

.field mIsLongPresson0:Z

.field mIsMultiprofileFeaturesEnabled:Z

.field private mIsSTKPostionSet:Z

.field mIsSafeMode:Z

.field private mIsSonimAppsPostionSet:Z

.field private mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

.field private mLauncherWindowFocused:Z

.field private mLockHintLayout:Landroid/widget/FrameLayout;

.field private mLockHintString:Ljava/lang/String;

.field private mLockHintTextView:Landroid/widget/TextView;

.field public mMissedEventCallback:Lcom/sonim/borqs/launcher/LauncherActivity$LoadEventsCallback;

.field private mMultiProfileObserver:Landroid/database/ContentObserver;

.field private mNManger:Landroid/app/NotificationManager;

.field private mNewEventNotice:Landroid/widget/ImageView;

.field private mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

.field private mOperatorNameServiceName:Landroid/widget/TextView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

.field private mParseComplete:Z

.field private mPkgName:Ljava/lang/String;

.field private mProfileChangeCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mShortcutUpdateListener:Lcom/sonim/borqs/launcher/LauncherActivity$ShortcutUpdateListener;

.field private mThemeChangedListener:Lcom/sonim/borqs/launcher/LauncherActivity$ThemeChangedListener;

.field mThread:Ljava/lang/Thread;

.field private mfolderFlag:Ljava/lang/Boolean;


# direct methods
.method static synthetic -get0(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get10()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadUpPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/DrawerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    return-object v0
.end method

.method static synthetic -get12(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/sonim/borqs/launcher/LauncherActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisible:Z

    return v0
.end method

.method static synthetic -get14(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mLockHintLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get15(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mOperatorNameServiceName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get16(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get17(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get18()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/CirclePageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCircleIndicator:Lcom/sonim/borqs/launcher/CirclePageIndicator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/helper/DatabaseHelper;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadCenterPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadDownPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonim/borqs/launcher/LauncherActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->isAirplaneModeOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/sonim/borqs/launcher/LauncherActivity;Lcom/sonim/borqs/launcher/DrawerAdapter;)Lcom/sonim/borqs/launcher/DrawerAdapter;
    .locals 0

    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    return-object p1
.end method

.method static synthetic -set6(Lcom/sonim/borqs/launcher/LauncherActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisibleOnSIMInsert:Z

    return p1
.end method

.method static synthetic -set7(Lcom/sonim/borqs/launcher/LauncherActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSTKPostionSet:Z

    return p1
.end method

.method static synthetic -set8(Lcom/sonim/borqs/launcher/LauncherActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mParseComplete:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/telephony/TelephonyManager;
    .locals 1

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonim/borqs/launcher/LauncherActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isSIMReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/sonim/borqs/launcher/LauncherActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->announceScreenForAccessibility(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->checkNavigationKeyAndSetDefault(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonim/borqs/launcher/LauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->checkPTTEnabled()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonim/borqs/launcher/LauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->notifyProfileUpdate()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonim/borqs/launcher/LauncherActivity;->setShortcutDrawable(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->updateNavigationKey(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    sput-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadUpPrefKey:Ljava/lang/String;

    .line 150
    sput-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadDownPrefKey:Ljava/lang/String;

    .line 151
    sput-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadCenterPrefKey:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->sLock:Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->NUM_PAGES:I

    .line 123
    iput v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->PAGE_QUICK_SETTINGS:I

    .line 124
    iput v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->PAGE_HOME_SCREEN:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->PAGE_MY_EVENTS:I

    .line 146
    const-string/jumbo v0, "isFromLauncher"

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->EXTRA_IS_FROM_LAUNCHER:Ljava/lang/String;

    .line 212
    iput-boolean v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->isLongPressonStar:Z

    .line 214
    iput-boolean v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsLongPresson0:Z

    .line 215
    iput-boolean v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->isAirplaneModeOn:Z

    .line 226
    iput-boolean v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCameraSupported:Z

    .line 233
    new-instance v0, Lcom/sonim/borqs/launcher/LauncherActivity$1;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity$1;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDefaultHomeKeys:Ljava/util/ArrayList;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    .line 410
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mfolderFlag:Ljava/lang/Boolean;

    .line 428
    iput-boolean v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSTKPostionSet:Z

    .line 429
    iput-boolean v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSonimAppsPostionSet:Z

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mProfileChangeCallback:Ljava/util/ArrayList;

    .line 665
    iput-boolean v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mParseComplete:Z

    .line 700
    new-instance v0, Lcom/sonim/borqs/launcher/LauncherActivity$2;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity$2;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHandler:Landroid/os/Handler;

    .line 723
    const/16 v0, 0xa

    iput v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->CAMERA_INDEX:I

    .line 1433
    new-instance v0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    .line 2528
    new-instance v0, Lcom/sonim/borqs/launcher/LauncherActivity$3;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity$3;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->SIMChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2593
    new-instance v0, Lcom/sonim/borqs/launcher/LauncherActivity$4;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity$4;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->appInstalledReceiver:Landroid/content/BroadcastReceiver;

    .line 2996
    new-instance v0, Lcom/sonim/borqs/launcher/LauncherActivity$5;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity$5;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->homeNavigationShortcutChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 3056
    new-instance v0, Lcom/sonim/borqs/launcher/LauncherActivity$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$6;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mMultiProfileObserver:Landroid/database/ContentObserver;

    .line 108
    return-void
.end method

.method private announceScreenForAccessibility(I)V
    .locals 2

    .prologue
    .line 3103
    packed-switch p1, :pswitch_data_0

    .line 3119
    :goto_0
    return-void

    .line 3105
    :pswitch_0
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3106
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/AccessibilityUtil;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3109
    :pswitch_1
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3110
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/AccessibilityUtil;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3113
    :pswitch_2
    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3114
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/AccessibilityUtil;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    .line 1820
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1821
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1826
    :cond_1
    if-eq v0, v2, :cond_2

    .line 1827
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1829
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1830
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected start tag: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1831
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1831
    const-string/jumbo v2, ", expected "

    .line 1830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1833
    :cond_3
    return-void
.end method

.method private checkNavigationKeyAndSetDefault(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2883
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2884
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadUpPrefKey:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2885
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadDownPrefKey:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2886
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadCenterPrefKey:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2888
    if-eqz p1, :cond_2

    .line 2889
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2890
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "dpad_up_key_default_pref"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    .line 2891
    sget-object v1, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadUpPrefKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2892
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2893
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-direct {p0, v1, v4}, Lcom/sonim/borqs/launcher/LauncherActivity;->setShortcutDrawable(Ljava/lang/String;I)V

    .line 2895
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2896
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 2897
    const-string/jumbo v2, "dpad_down_key_default_pref"

    .line 2896
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    .line 2898
    sget-object v1, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadDownPrefKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2899
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2900
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    const/16 v2, 0x65

    invoke-direct {p0, v1, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->setShortcutDrawable(Ljava/lang/String;I)V

    .line 2902
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2903
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 2904
    const-string/jumbo v2, "dpad_center_key_default_pref"

    .line 2903
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    .line 2905
    sget-object v1, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadCenterPrefKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2906
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2907
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->setShortcutDrawable(Ljava/lang/String;I)V

    .line 2910
    :cond_2
    return-void
.end method

.method private checkPTTEnabled()V
    .locals 4

    .prologue
    .line 3177
    :try_start_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.bell.ptt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3178
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPTTEnabled: PTT isEnabled - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_0

    .line 3180
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->updateAppTrayList()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3185
    :cond_0
    :goto_0
    return-void

    .line 3182
    :catch_0
    move-exception v0

    .line 3183
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPTTEnabled:  Ex -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createIntentFilters()V
    .locals 2

    .prologue
    .line 808
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 810
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 809
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    const-string/jumbo v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    .line 811
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->SIMChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 816
    return-void
.end method

.method private enableNLService()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 786
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 787
    const-string/jumbo v3, "enabled_notification_listeners"

    .line 786
    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 790
    const/4 v1, 0x0

    .line 792
    if-eqz v3, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 793
    :cond_0
    const-string/jumbo v1, "com.borqs.easervice/com.borqs.easervice.NLService"

    .line 799
    :goto_0
    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 801
    const-string/jumbo v2, "enabled_notification_listeners"

    .line 800
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 804
    :cond_1
    return-void

    .line 795
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.borqs.easervice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":com.borqs.easervice/com.borqs.easervice.NLService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method private getAssginedAppLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 2986
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2987
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2988
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " class :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2990
    return-object v0

    .line 2992
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFolderIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    # FEAT(tray): WaveTray's drawn icon for every folder (null = fallback: stock icon)
    invoke-static {p0, p1}, Lcom/sonim/borqs/launcher/WaveTray;->folderIconHook(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :wave_icon

    return-object v0

    :wave_icon
    const/4 v3, 0x0

    .line 2203
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2204
    const v1, 0x7f020048

    .line 2203
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2206
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "current_theme"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2208
    const-string/jumbo v2, "Applications"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2209
    const-string/jumbo v2, "Aplicaciones"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 2208
    if-eqz v2, :cond_3

    .line 2210
    :cond_0
    if-nez v1, :cond_2

    .line 2211
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2212
    const v1, 0x7f020043

    .line 2211
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2243
    :cond_1
    :goto_0
    return-object v0

    .line 2214
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2215
    const v1, 0x7f020051

    .line 2214
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2218
    :cond_3
    const-string/jumbo v2, "Tools"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2219
    const-string/jumbo v2, "Outils"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 2218
    if-eqz v2, :cond_6

    .line 2220
    :cond_4
    if-nez v1, :cond_5

    .line 2221
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2222
    const v1, 0x7f020045

    .line 2221
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2224
    :cond_5
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2225
    const v1, 0x7f020053

    .line 2224
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2228
    :cond_6
    const-string/jumbo v2, "Music"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2229
    const-string/jumbo v2, "M\u00fasica"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 2228
    if-eqz v2, :cond_9

    .line 2230
    :cond_7
    if-nez v1, :cond_8

    .line 2231
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2232
    const v1, 0x7f020044

    .line 2231
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2234
    :cond_8
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2235
    const v1, 0x7f020052

    .line 2234
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2237
    :cond_9
    const-string/jumbo v1, "Verizon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2240
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2241
    const v1, 0x7f020049

    .line 2240
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3070
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 3072
    :cond_0
    invoke-static {p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->isQuickProfileSwitchPkgAndClassName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3073
    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3076
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3075
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3079
    :try_start_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3080
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3079
    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3085
    :goto_0
    return-object v0

    .line 3081
    :catch_0
    move-exception v0

    .line 3082
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception at getPkgOrDefaultIcon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3083
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method private getPkgOrDefaultIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 2087
    invoke-virtual {p0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPkgIconForTheme(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2089
    if-nez v0, :cond_0

    .line 2090
    :try_start_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2091
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2090
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2097
    :cond_0
    :goto_0
    return-object v0

    .line 2093
    :catch_0
    move-exception v1

    .line 2094
    const-string/jumbo v2, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception at getPkgOrDefaultIcon "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getQuickProfileSwitch(Landroid/content/Context;)Lcom/sonim/borqs/launcher/LauncherActivity$Apps;
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getQuickProfileSwitch(Landroid/content/Context;Z)Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    move-result-object v0

    return-object v0
.end method

.method public static getQuickProfileSwitch(Landroid/content/Context;Z)Lcom/sonim/borqs/launcher/LauncherActivity$Apps;
    .locals 3

    .prologue
    .line 308
    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-direct {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;-><init>()V

    sput-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    .line 309
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 310
    const-string/jumbo v1, "com.borqs.intent.action.QUICK_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string/jumbo v1, "com.borqs.multiprofile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 313
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 314
    sget-object v1, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {v1, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIntent(Landroid/content/Intent;)V

    .line 316
    if-eqz p1, :cond_1

    .line 317
    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 318
    const v2, 0x7f020046

    .line 317
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :goto_0
    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    const-string/jumbo v1, "QUICK_PROFILE_PKG/QUICK_PROFILE_CLASS"

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageName(Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    const-string/jumbo v1, "QUICK_PROFILE_PKG/QUICK_PROFILE_CLASS"

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageAndClassName(Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    const v1, 0x7f0b004b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setName(Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    return-object v0

    .line 320
    :cond_1
    invoke-static {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setQuickProfileIcon(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 1599
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getToolsFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2198
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCling()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2456
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisible:Z

    if-eqz v0, :cond_4

    .line 2458
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsFirstPageCling:Z

    if-eqz v0, :cond_0

    .line 2459
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->showFTUSecondScreen()V

    .line 2460
    return v2

    .line 2462
    :cond_0
    iput-boolean v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisible:Z

    .line 2466
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisibleOnSIMInsert:Z

    if-eqz v0, :cond_1

    .line 2467
    iput-boolean v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisibleOnSIMInsert:Z

    .line 2469
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCustomCling:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2470
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2477
    iget-boolean v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisibleOnSIMInsert:Z

    if-nez v1, :cond_3

    .line 2478
    const-string/jumbo v1, "cling.workspace.cling"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2479
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isSIMReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2480
    const-string/jumbo v1, "sim.cling.pref"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2485
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2498
    return v2

    .line 2483
    :cond_3
    const-string/jumbo v1, "sim.cling.pref"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2500
    :cond_4
    return v1
.end method

.method private initUserPrefService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1310
    sget-boolean v0, Landroid/os/Build;->IS_SPRINT:Z

    if-nez v0, :cond_0

    .line 1311
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1312
    const-string/jumbo v1, "location_mode"

    .line 1313
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1311
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1317
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1318
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1321
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1322
    const-string/jumbo v1, "sms_default_application"

    const-string/jumbo v2, "com.android.mms"

    .line 1323
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getUserId()I

    move-result v3

    .line 1321
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1324
    return-void
.end method

.method private initializeColorfulThemeDrawables()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2105
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mColorfulThemeIconIds:[I

    if-eqz v0, :cond_0

    return-void

    .line 2107
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2108
    const v2, 0x7f060002

    .line 2107
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2109
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2110
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mColorfulThemeIconIds:[I

    move v0, v1

    .line 2111
    :goto_0
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mColorfulThemeIconIds:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 2112
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mColorfulThemeIconIds:[I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v0

    .line 2111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2114
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2115
    return-void
.end method

.method private isAppTrayVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1099
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    const/4 v0, 0x1

    return v0

    .line 1104
    :cond_0
    return v1
.end method

.method public static final isQuickProfileSwitchPkgAndClassName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    const-string/jumbo v0, "QUICK_PROFILE_PKG/QUICK_PROFILE_CLASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 360
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSIMReady()Z
    .locals 2

    .prologue
    .line 2961
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2962
    const/4 v0, 0x1

    return v0

    .line 2964
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSIMValidAndFunctional()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2949
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 2950
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2951
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2955
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2952
    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2953
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2954
    if-eqz v0, :cond_0

    .line 2957
    return v2
.end method

.method private isSTKReady()Z
    .locals 2

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "com.android.stk"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2942
    if-nez v0, :cond_0

    .line 2943
    const/4 v0, 0x0

    return v0

    .line 2945
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized loadAppTrayWithAppsAndFolder()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 1603
    :try_start_0
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v2, "starting parsing and DB poplate"

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const-string/jumbo v0, " loadAppTrayWithAppsAndFolder - start "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 1608
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1609
    const-string/jumbo v0, "com.borqs.camera/com.borqs.camera.CameraActivity"

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    :try_start_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1613
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCameraSupported:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x7f040000

    .line 1612
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 1614
    const-string/jumbo v0, "applist"

    invoke-static {v5, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1616
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 1617
    const-string/jumbo v0, ""

    .line 1619
    const/4 v7, 0x0

    .line 1620
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSTKPostionSet:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 1621
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_8

    .line 1622
    :cond_1
    if-eq v8, v12, :cond_8

    .line 1624
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 1627
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1629
    const-string/jumbo v9, "app"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1630
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1631
    iget-object v9, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10, v8}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->createToDo(Ljava/lang/String;Ljava/lang/String;)J

    .line 1632
    const-string/jumbo v9, "LauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "app-->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " at position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    add-int/lit8 v1, v1, 0x1

    .line 1636
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1638
    const-string/jumbo v8, "camera_index"

    invoke-interface {v3, v8, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1639
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1676
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1613
    :cond_3
    const v0, 0x7f040001

    goto :goto_0

    .line 1641
    :cond_4
    const-string/jumbo v9, "folder"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1642
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v8

    if-eqz v8, :cond_5

    .line 1643
    const-string/jumbo v0, "name"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1644
    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1647
    :cond_5
    :goto_2
    iget-boolean v8, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSTKPostionSet:Z

    if-nez v8, :cond_6

    .line 1648
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getToolsFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 1647
    if-eqz v8, :cond_6

    .line 1649
    const-string/jumbo v8, "LauncherActivity"

    .line 1650
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " folder name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1651
    const-string/jumbo v10, " toolsFolderPostion = "

    .line 1650
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1649
    invoke-static {v8, v9}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-direct {p0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->setToolsFolderPosition(I)V

    .line 1653
    :cond_6
    iget-boolean v8, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSonimAppsPostionSet:Z

    if-nez v8, :cond_7

    .line 1654
    const v8, 0x7f0b0018

    invoke-virtual {p0, v8}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 1653
    if-eqz v8, :cond_7

    .line 1655
    const-string/jumbo v8, "sonim_postion"

    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1656
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1657
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSonimAppsPostionSet:Z

    .line 1660
    :cond_7
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    .line 1662
    :goto_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1663
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "app"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 1662
    if-eqz v8, :cond_2

    .line 1664
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1667
    const-string/jumbo v9, "LauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " foldername : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "::folder content: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1668
    const-string/jumbo v11, ": at position = "

    .line 1667
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    iget-object v9, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    invoke-virtual {v9, v0, v8}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->createToDo(Ljava/lang/String;Ljava/lang/String;)J

    .line 1670
    add-int/lit8 v1, v1, 0x1

    .line 1671
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    :goto_4
    :try_start_3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1680
    const-string/jumbo v1, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "XmlPullParserException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->finsihOnFatalError(Ljava/lang/String;)V

    .line 1694
    :cond_8
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " loadAppTrayWithAppsAndFolder - end found : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 1695
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "finisned parsing and DB poplate"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 1696
    return-void

    .line 1644
    :cond_9
    :try_start_4
    const-string/jumbo v0, "name"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto/16 :goto_2

    .line 1689
    :catch_1
    move-exception v0

    .line 1690
    :goto_6
    :try_start_5
    const-string/jumbo v2, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->finsihOnFatalError(Ljava/lang/String;)V

    move v2, v1

    goto :goto_5

    .line 1686
    :catch_2
    move-exception v0

    move v2, v1

    .line 1687
    :goto_7
    const-string/jumbo v1, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SQLiteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->finsihOnFatalError(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1682
    :catch_3
    move-exception v0

    move v2, v1

    .line 1683
    :goto_8
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1684
    const-string/jumbo v1, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->finsihOnFatalError(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    .line 1678
    :catch_4
    move-exception v0

    move v2, v1

    goto/16 :goto_4

    .line 1682
    :catch_5
    move-exception v0

    goto :goto_8

    .line 1686
    :catch_6
    move-exception v0

    goto :goto_7

    .line 1689
    :catch_7
    move-exception v0

    move v1, v2

    goto :goto_6
.end method

.method private loadConfigKeysApps()V
    .locals 6

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1714
    :try_start_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1715
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCameraSupported:Z

    if-eqz v0, :cond_4

    const v0, 0x7f040002

    .line 1714
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 1717
    const-string/jumbo v2, "favorites"

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1719
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 1720
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadUpPrefKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    .line 1721
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadDownPrefKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    .line 1722
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadCenterPrefKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    .line 1725
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_3

    .line 1726
    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 1728
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1731
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1732
    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadUpPrefKey:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1733
    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1732
    if-eqz v4, :cond_5

    .line 1734
    :cond_2
    const-string/jumbo v4, "keyup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1735
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 1736
    sget-object v4, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadUpPrefKey:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1737
    const-string/jumbo v4, "dpad_up_key_default_pref"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1738
    iput-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    .line 1739
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1764
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->finsihOnFatalError(Ljava/lang/String;)V

    .line 1771
    :cond_3
    :goto_2
    return-void

    .line 1716
    :cond_4
    const v0, 0x7f040003

    goto/16 :goto_0

    .line 1741
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadDownPrefKey:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1742
    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1741
    if-eqz v4, :cond_7

    .line 1743
    :cond_6
    const-string/jumbo v4, "keydown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1744
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 1745
    sget-object v4, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadDownPrefKey:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1746
    const-string/jumbo v4, "dpad_down_key_default_pref"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1747
    iput-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    .line 1748
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1766
    :catch_1
    move-exception v0

    .line 1767
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1768
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->finsihOnFatalError(Ljava/lang/String;)V

    goto :goto_2

    .line 1750
    :cond_7
    :try_start_2
    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadCenterPrefKey:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1751
    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1750
    if-eqz v4, :cond_0

    .line 1752
    :cond_8
    const-string/jumbo v4, "keycenter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1753
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 1754
    sget-object v4, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadCenterPrefKey:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1755
    const-string/jumbo v4, "dpad_center_key_default_pref"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1756
    iput-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    .line 1757
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method private notifyProfileUpdate()V
    .locals 2

    .prologue
    .line 3146
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mProfileChangeCallback:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mProfileChangeCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 3147
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mProfileChangeCallback:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;

    .line 3148
    invoke-interface {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;->onProfileChange()V

    goto :goto_0

    .line 3150
    :cond_1
    return-void
.end method

.method private registerAppTrayListChangedReceiver()V
    .locals 2

    .prologue
    .line 3166
    new-instance v0, Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppTrayListChangedReceiver:Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;

    .line 3167
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.sonim.UpdateLauncherAppList"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3168
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppTrayListChangedReceiver:Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3169
    return-void
.end method

.method private requireAccessibleKeyHandling(I)Z
    .locals 1

    .prologue
    .line 3089
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    .line 3090
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 3095
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3091
    :cond_1
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 3092
    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 3093
    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    .line 3094
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    .line 3097
    const/4 v0, 0x0

    return v0
.end method

.method private setDefaultWallPaper()V
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 2524
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 2526
    return-void
.end method

.method private setEventInfo(Lcom/sonim/borqs/launcher/MyEventsItem;I)V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mMissedEventCallback:Lcom/sonim/borqs/launcher/LauncherActivity$LoadEventsCallback;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mMissedEventCallback:Lcom/sonim/borqs/launcher/LauncherActivity$LoadEventsCallback;

    invoke-interface {v0, p1, p2}, Lcom/sonim/borqs/launcher/LauncherActivity$LoadEventsCallback;->onLoadNotificationMissedEventInfo(Lcom/sonim/borqs/launcher/MyEventsItem;I)V

    .line 539
    :cond_0
    return-void
.end method

.method private static setQuickProfileIcon(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    sget-boolean v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsStealthModeEnabled:Z

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 340
    const v2, 0x7f020047

    .line 339
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 354
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string/jumbo v0, "com.sonim.borqs.launcher.prefs"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 344
    const-string/jumbo v1, "current_theme"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 346
    if-nez v0, :cond_1

    .line 347
    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 348
    const v2, 0x7f020046

    .line 347
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 350
    :cond_1
    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 351
    const v2, 0x7f020054

    .line 350
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setShortcutDrawable(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mShortcutUpdateListener:Lcom/sonim/borqs/launcher/LauncherActivity$ShortcutUpdateListener;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mShortcutUpdateListener:Lcom/sonim/borqs/launcher/LauncherActivity$ShortcutUpdateListener;

    invoke-interface {v0, p1, p2}, Lcom/sonim/borqs/launcher/LauncherActivity$ShortcutUpdateListener;->setShortcutDrawable(Ljava/lang/String;I)V

    .line 1814
    :cond_0
    return-void
.end method

.method private setToolsFolderPosition(I)V
    .locals 3

    .prologue
    .line 2391
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set tools folder position-------pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " :: mIsSTKPostionSet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSTKPostionSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSTKPostionSet:Z

    if-nez v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2394
    const-string/jumbo v1, "stk_postion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2395
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSTKPostionSet:Z

    .line 2398
    :cond_0
    return-void
.end method

.method private showFTUSecondScreen()V
    .locals 2

    .prologue
    .line 2433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisible:Z

    .line 2434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsFirstPageCling:Z

    .line 2435
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCustomCling:Landroid/view/View;

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2436
    if-eqz v0, :cond_0

    .line 2437
    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2439
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCustomCling:Landroid/view/View;

    const v1, 0x7f0e0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2440
    if-eqz v0, :cond_1

    .line 2441
    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2443
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCustomCling:Landroid/view/View;

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2444
    if-eqz v0, :cond_2

    .line 2445
    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2447
    :cond_2
    return-void
.end method

.method private startAction(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1570
    invoke-static {p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->isQuickProfileSwitchPkgAndClassName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1571
    sget-boolean v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsStealthModeEnabled:Z

    if-nez v0, :cond_0

    .line 1572
    invoke-static {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getQuickProfileSwitch(Landroid/content/Context;)Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1578
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getAssginedAppLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1576
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startGlobalSearch()V
    .locals 3

    .prologue
    .line 2508
    const-string/jumbo v0, "search"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2510
    invoke-virtual {v0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2511
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2512
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2513
    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    .line 2514
    return-void
.end method

.method private startWallpaper()V
    .locals 2

    .prologue
    .line 2517
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2518
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2520
    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2519
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 2521
    return-void
.end method

.method private unregisterAppTrayListChangedReceiver()V
    .locals 1

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppTrayListChangedReceiver:Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;

    if-eqz v0, :cond_0

    .line 3173
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppTrayListChangedReceiver:Lcom/sonim/borqs/launcher/LauncherActivity$AppTrayListChangedReceiver;

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3174
    :cond_0
    return-void
.end method

.method private unregisterReceiverOnPause()V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->SIMChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 879
    return-void
.end method

.method private updateAppTrayList()V
    .locals 9

    .prologue
    # FEAT(tray): disabled PTT only promotes Calculator in the stock fallback
    invoke-static {}, Lcom/sonim/borqs/launcher/WaveTray;->usesStockTray()Z

    move-result v0

    if-nez v0, :wave_stock_ptt

    return-void

    :wave_stock_ptt
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 3190
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move-object v4, v0

    move-object v5, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    .line 3191
    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "Phone"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "T\u00e9l\u00e9phone"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3192
    :cond_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3193
    :goto_1
    instance-of v1, v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    if-eqz v1, :cond_6

    .line 3194
    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    .line 3195
    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->getAppListInsideFolder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    .line 3196
    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Calculator"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Calculatrice"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_2
    :goto_2
    move-object v4, v0

    move-object v5, v1

    move v1, v3

    goto :goto_0

    .line 3203
    :cond_3
    const-string/jumbo v0, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ": updateAppTrayList: Dialer current position:  -  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
    if-eq v1, v2, :cond_4

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 3205
    invoke-virtual {v4}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->getAppListInsideFolder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3206
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3208
    :cond_4
    return-void

    :cond_5
    move-object v1, v5

    goto :goto_2

    :cond_6
    move-object v0, v4

    move-object v1, v5

    goto :goto_2

    :cond_7
    move v3, v1

    goto :goto_1
.end method

.method private updateNavigationKey(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2861
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadUpPrefKey:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2862
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadDownPrefKey:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2863
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadCenterPrefKey:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2865
    if-eqz p1, :cond_2

    .line 2866
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2867
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-direct {p0, v0, v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->setShortcutDrawable(Ljava/lang/String;I)V

    .line 2869
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2870
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->setShortcutDrawable(Ljava/lang/String;I)V

    .line 2872
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2873
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->setShortcutDrawable(Ljava/lang/String;I)V

    .line 2876
    :cond_2
    return-void
.end method

.method private verifyThemeChange()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 2121
    const-string/jumbo v1, "LauncherActivity"

    const-string/jumbo v2, "In verifyThemeChange"

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    iget-object v6, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2123
    :try_start_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2124
    :cond_0
    const-string/jumbo v1, "LauncherActivity"

    const-string/jumbo v2, "verifyThemeChange - No Apps or Folders"

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 2125
    return-void

    .line 2127
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "previous_theme"

    .line 2128
    const/4 v3, 0x0

    .line 2127
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2129
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "current_theme"

    .line 2130
    const/4 v5, 0x0

    .line 2129
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2131
    if-eq v2, v1, :cond_7

    move v5, v4

    .line 2132
    :goto_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_6

    .line 2133
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    .line 2134
    instance-of v2, v1, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    if-eqz v2, :cond_5

    .line 2135
    move-object v0, v1

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    move-object v2, v0

    .line 2137
    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->getFolderIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2140
    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->getAppListInsideFolder()Ljava/util/ArrayList;

    move-result-object v7

    .line 2141
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    move v3, v4

    .line 2142
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 2143
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    .line 2145
    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v8

    .line 2144
    invoke-direct {p0, v8}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPkgOrDefaultIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2146
    if-eqz v8, :cond_2

    .line 2147
    invoke-virtual {v2, v8}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2148
    invoke-virtual {v7, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2142
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 2152
    :cond_3
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2132
    :cond_4
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 2153
    :cond_5
    instance-of v2, v1, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    if-eqz v2, :cond_4

    .line 2155
    move-object v0, v1

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v2

    .line 2154
    invoke-direct {p0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPkgOrDefaultIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2156
    if-eqz v2, :cond_4

    .line 2157
    invoke-virtual {v1, v2}, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2158
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2122
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1

    .line 2163
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    if-eqz v1, :cond_8

    .line 2164
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/DrawerAdapter;->notifyDataSetChanged()V

    .line 2168
    :goto_3
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/AccessArrayList;

    .line 2169
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    .line 2168
    invoke-virtual {v1, v2}, Lcom/sonim/borqs/launcher/AccessArrayList;->setAppsAndFolderListForShorcut(Ljava/util/ArrayList;)V

    .line 2170
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/AccessArrayList;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/AccessArrayList;->notifyAppListChanged()V

    .line 2172
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mThemeChangedListener:Lcom/sonim/borqs/launcher/LauncherActivity$ThemeChangedListener;

    if-eqz v1, :cond_7

    .line 2173
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mThemeChangedListener:Lcom/sonim/borqs/launcher/LauncherActivity$ThemeChangedListener;

    invoke-interface {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$ThemeChangedListener;->onThemeChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit v6

    .line 2177
    return-void

    .line 2166
    :cond_8
    :try_start_3
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method autoStartAppIfNeeded(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2844
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2845
    const-string/jumbo v0, "com.sonimtech.autostart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2846
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2847
    new-instance v1, Landroid/content/ComponentName;

    .line 2848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".SonimAppActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2847
    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2850
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2851
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    .line 2854
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    # FEAT(tray): while an app or folder is being moved, the d-pad carries it
    invoke-static {p0, p1}, Lcom/sonim/borqs/launcher/WaveTray;->dispatchKey(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :wave_keys

    return v0

    :wave_keys
    const v3, 0x7f0b004d

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1439
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisible:Z

    if-eqz v0, :cond_1

    .line 1440
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1441
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->handleCling()Z

    move-result v0

    return v0

    .line 1443
    :cond_0
    return v4

    .line 1448
    :cond_1
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->isLongPressonStar:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    .line 1449
    return v4

    .line 1451
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1452
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 1455
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/AccessibilityUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1456
    invoke-direct {p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->requireAccessibleKeyHandling(I)Z

    move-result v0

    .line 1455
    if-eqz v0, :cond_6

    .line 1461
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    iget v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->count:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    iget v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->keyCode:I

    if-eq v0, v1, :cond_4

    .line 1462
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 1463
    const/4 v0, 0x0

    .line 1464
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->reset()V

    .line 1466
    sparse-switch v1, :sswitch_data_0

    .line 1492
    :goto_0
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v2, v0}, Lcom/sonim/borqs/launcher/AccessibilityUtil;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1494
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    iput v4, v0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->count:I

    .line 1495
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    iput v1, v0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->keyCode:I

    .line 1496
    return v4

    .line 1468
    :sswitch_0
    invoke-virtual {p0, v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    .line 1470
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1468
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1474
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    .line 1476
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1474
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1479
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    .line 1481
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1479
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1485
    :sswitch_3
    const v0, 0x7f0b004e

    .line 1484
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1489
    :sswitch_4
    const v0, 0x7f0b004f

    .line 1488
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1499
    :cond_4
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    iget v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->count:I

    if-ne v0, v4, :cond_6

    .line 1500
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1501
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    iget v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->keyUpCount:I

    if-gtz v0, :cond_5

    .line 1502
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    iput v4, v0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->keyUpCount:I

    .line 1503
    return v4

    .line 1507
    :cond_5
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    iget v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->keyCode:I

    if-ne v0, v1, :cond_6

    .line 1508
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mKeyEventInfo:Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->reset()V

    .line 1516
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_8

    .line 1518
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 1521
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startDPADUpAction()V

    .line 1523
    :cond_7
    return v4

    .line 1525
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1526
    const/16 v1, 0x14

    .line 1525
    if-ne v0, v1, :cond_a

    .line 1527
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 1531
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startDPADDownAction()V

    .line 1533
    :cond_9
    return v4

    .line 1535
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_b

    .line 1536
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_d

    .line 1537
    :cond_b
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisible:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1535
    if-eqz v0, :cond_d

    .line 1538
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_c

    .line 1542
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startDPADCenterAction()V

    .line 1545
    :cond_c
    return v4

    .line 1551
    :cond_d
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1552
    return v0

    .line 1466
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 3066
    const/4 v0, 0x1

    return v0
.end method

.method public finsihOnFatalError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " finsihOnFatalError,exiting launcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->finish()V

    .line 1701
    return-void
.end method

.method public getDPADCenterPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getDPADDownPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getDPADUpPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgIconForTheme(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2069
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "current_theme"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2073
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2074
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->initializeColorfulThemeDrawables()V

    .line 2075
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2076
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2077
    if-ltz v0, :cond_0

    .line 2078
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mColorfulThemeIconIds:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 2080
    :cond_0
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Theme icon not found for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemTimeInSecond(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1707
    return-void
.end method

.method public initNewEventNotice()V
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "com.sonim.borqs.launcher.newevent.visibility"

    .line 547
    const/4 v2, 0x0

    .line 546
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 548
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->showNewEventNotice(Z)V

    .line 550
    return-void
.end method

.method public loadMissedEventInfoFromNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 483
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v0}, Lcom/borqs/easervice/EventInfo;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 484
    new-instance v0, Lcom/sonim/borqs/launcher/MyEventsItem;

    invoke-direct {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;-><init>()V

    .line 485
    invoke-virtual {v0, v4}, Lcom/sonim/borqs/launcher/MyEventsItem;->setEventTypeAndPriority(I)V

    .line 486
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getTitleTxt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    const v1, 0x7f020021

    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getLastEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonim/borqs/launcher/MyEventsItem;->setLastEventTime(J)V

    .line 489
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 491
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v2, v2, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v2}, Lcom/borqs/easervice/EventInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 492
    const-string/jumbo v2, "remove_missed_events"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 493
    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setLaunchIntent(Landroid/content/Intent;)V

    .line 494
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setTotalMissedEvents(I)V

    .line 495
    invoke-direct {p0, v0, v4}, Lcom/sonim/borqs/launcher/LauncherActivity;->setEventInfo(Lcom/sonim/borqs/launcher/MyEventsItem;I)V

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v0}, Lcom/borqs/easervice/EventInfo;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 502
    new-instance v0, Lcom/sonim/borqs/launcher/MyEventsItem;

    invoke-direct {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;-><init>()V

    .line 503
    invoke-virtual {v0, v5}, Lcom/sonim/borqs/launcher/MyEventsItem;->setEventTypeAndPriority(I)V

    .line 504
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getTitleTxt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 505
    const v1, 0x7f020022

    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 506
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getLastEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonim/borqs/launcher/MyEventsItem;->setLastEventTime(J)V

    .line 507
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 509
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v2, v2, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v2}, Lcom/borqs/easervice/EventInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 510
    const-string/jumbo v2, "remove_missed_events"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 511
    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setLaunchIntent(Landroid/content/Intent;)V

    .line 512
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setTotalMissedEvents(I)V

    .line 513
    invoke-direct {p0, v0, v5}, Lcom/sonim/borqs/launcher/LauncherActivity;->setEventInfo(Lcom/sonim/borqs/launcher/MyEventsItem;I)V

    .line 519
    :goto_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v0}, Lcom/borqs/easervice/EventInfo;->getCount()I

    move-result v0

    if-ltz v0, :cond_2

    .line 520
    new-instance v0, Lcom/sonim/borqs/launcher/MyEventsItem;

    invoke-direct {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;-><init>()V

    .line 521
    invoke-virtual {v0, v6}, Lcom/sonim/borqs/launcher/MyEventsItem;->setEventTypeAndPriority(I)V

    .line 522
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getTitleTxt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 523
    const v1, 0x7f020025

    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 524
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getLastEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonim/borqs/launcher/MyEventsItem;->setLastEventTime(J)V

    .line 525
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 527
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v1}, Lcom/borqs/easervice/EventInfo;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsItem;->setTotalMissedEvents(I)V

    .line 528
    invoke-direct {p0, v0, v6}, Lcom/sonim/borqs/launcher/LauncherActivity;->setEventInfo(Lcom/sonim/borqs/launcher/MyEventsItem;I)V

    .line 533
    :goto_2
    return-void

    .line 497
    :cond_0
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "no alarm events"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-direct {p0, v7, v4}, Lcom/sonim/borqs/launcher/LauncherActivity;->setEventInfo(Lcom/sonim/borqs/launcher/MyEventsItem;I)V

    goto/16 :goto_0

    .line 515
    :cond_1
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "no calendar events"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0, v7, v5}, Lcom/sonim/borqs/launcher/LauncherActivity;->setEventInfo(Lcom/sonim/borqs/launcher/MyEventsItem;I)V

    goto :goto_1

    .line 530
    :cond_2
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "no voicemail events"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-direct {p0, v7, v6}, Lcom/sonim/borqs/launcher/LauncherActivity;->setEventInfo(Lcom/sonim/borqs/launcher/MyEventsItem;I)V

    goto :goto_2
.end method

.method public loadXMlIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 731
    const-string/jumbo v0, "version.txt"

    .line 732
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 735
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->readTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 736
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Latest2 version number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "zzzzzz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "version_number"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    const-string/jumbo v2, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Old 2version number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "zzzzzz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 740
    :cond_0
    const-string/jumbo v1, "LauncherActivity"

    const-string/jumbo v2, "Version number does not match "

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string/jumbo v1, "LauncherActivity"

    const-string/jumbo v2, "Clearing DB"

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->dropTable(Landroid/content/Context;)V

    .line 743
    const-string/jumbo v1, "reloading XML due to version number change"

    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->loadAppTrayWithAppsAndFolder()V

    .line 745
    const-string/jumbo v1, " loadXMlIfNeeded, load app-tray finished"

    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 746
    const-string/jumbo v1, "com.sonim.borqs.launcher.prefs"

    .line 747
    const/4 v2, 0x0

    .line 746
    invoke-virtual {p0, v1, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 748
    const-string/jumbo v2, "version_number"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 749
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 752
    :cond_1
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "getVersionNumberAndLoadXMl end"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1154
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1155
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1158
    const-string/jumbo v2, "isFromLauncher"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1160
    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1165
    new-instance v1, Lcom/sonim/borqs/launcher/LauncherActivity$8;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/LauncherActivity$8;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    .line 1170
    const-wide/16 v2, 0x1f4

    .line 1165
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1171
    return-void

    .line 1161
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1090
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackPressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHomeScreenFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1095
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 555
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 556
    const-string/jumbo v0, "com.sonim.borqs.launcher.prefs"

    .line 557
    const/4 v1, 0x0

    .line 556
    invoke-virtual {p0, v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 558
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCameraSupported:Z

    .line 559
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 560
    iput-object p0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    .line 561
    new-instance v0, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    .line 562
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNManger:Landroid/app/NotificationManager;

    .line 563
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setContentView(I)V

    .line 565
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 566
    const v1, 0x1120069

    .line 565
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsMultiprofileFeaturesEnabled:Z

    .line 568
    const v0, 0x7f0e0002

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 569
    new-instance v0, Lcom/sonim/borqs/launcher/LauncherActivity$HomeViewPagerAdapter;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$HomeViewPagerAdapter;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

    .line 570
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 573
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 576
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/CirclePageIndicator;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCircleIndicator:Lcom/sonim/borqs/launcher/CirclePageIndicator;

    .line 577
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCircleIndicator:Lcom/sonim/borqs/launcher/CirclePageIndicator;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 578
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/sonim/borqs/launcher/LauncherActivity$7;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/LauncherActivity$7;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 598
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 600
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNewEventNotice:Landroid/widget/ImageView;

    .line 602
    const v0, 0x7f0e0007

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mOperatorNameServiceName:Landroid/widget/TextView;

    .line 605
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mOperatorNameServiceName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    const v0, 0x7f0e0008

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 608
    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mLockHintLayout:Landroid/widget/FrameLayout;

    .line 610
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mLockHintString:Ljava/lang/String;

    .line 611
    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mLockHintTextView:Landroid/widget/TextView;

    .line 613
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 616
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setDefaultWallPaper()V

    .line 618
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadUpPrefKey:Ljava/lang/String;

    .line 619
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadDownPrefKey:Ljava/lang/String;

    .line 620
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDpadCenterPrefKey:Ljava/lang/String;

    .line 623
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->loadConfigKeysApps()V

    .line 626
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->showFirstRunWorkspaceCling()V

    .line 628
    const-string/jumbo v0, " onCreate-before thread start "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 629
    new-instance v0, Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonim/borqs/launcher/NotificationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    .line 630
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->enableNLService()V

    .line 631
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/NotificationHelper;->registerEventCallbacks()V

    .line 634
    const v0, 0x7f0e0001

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 633
    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHomeScreenFrameLayout:Landroid/widget/FrameLayout;

    .line 636
    const v0, 0x7f0e0009

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    .line 637
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 638
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSafeMode:Z

    .line 640
    const-string/jumbo v0, " onCreate- before register pkg intent : time "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->registerPkgAddRemoveChangeBoradcastReciever()V

    .line 642
    const-string/jumbo v0, " onCreate-, after register pkg intent : time "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 652
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sonim.borqs.KEY_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->homeNavigationShortcutChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 656
    invoke-static {p0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->isStealthModeEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsStealthModeEnabled:Z

    .line 657
    const-string/jumbo v0, " onCreate-end  ============"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 659
    new-instance v0, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$ParseThread;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mThread:Ljava/lang/Thread;

    .line 660
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 661
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->registerAppTrayListChangedReceiver()V

    .line 664
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    # FEAT(tray): build the menu when opening it, with the current selection
    const/4 v0, 0x1

    return v0
.end method

# FEAT(tray): stock menu builder, used only for the stock fallback
.method private waveStockMenu(Landroid/view/Menu;)Z
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0


    .line 974
    const/4 v0, 0x7

    const v1, 0x7f0b0014

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 975
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 976
    const/4 v0, 0x3

    .line 977
    const v1, 0x7f0b0002

    .line 976
    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 978
    const/4 v0, 0x2

    .line 979
    const v1, 0x7f0b0001

    .line 978
    invoke-interface {p1, v5, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 980
    const/16 v0, 0x9

    .line 981
    const v1, 0x7f0b0022

    .line 980
    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1007
    :cond_0
    :goto_0
    const/4 v0, 0x6

    const v1, 0x7f0b0003

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1009
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1007
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1011
    const v0, 0x7f0b0004

    invoke-interface {p1, v4, v6, v7, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1012
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1013
    const/high16 v2, 0x10000000

    .line 1012
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1011
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1015
    return v5

    .line 982
    :cond_1
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v0

    .line 986
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Selected position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 987
    const-string/jumbo v3, "list size : "

    .line 986
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 987
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 986
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 990
    if-ltz v0, :cond_2

    .line 991
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_2

    .line 993
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsOrFolder:Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    .line 994
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateOptionsMenu, mDrawerFolderGrid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 995
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsOrFolder:Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;->getName()Ljava/lang/String;

    move-result-object v2

    .line 994
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsOrFolder:Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    instance-of v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    if-eqz v0, :cond_2

    .line 997
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "onCreateOptionsMenu, item is type of App"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsOrFolder:Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPkgName:Ljava/lang/String;

    .line 999
    const/16 v0, 0x8

    const v1, 0x7f0b0015

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1003
    :cond_2
    const v0, 0x7f0b0005

    invoke-interface {p1, v4, v7, v6, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 820
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 821
    const-string/jumbo v0, " Cancelling AsyncTask cos of config change"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 825
    :cond_0
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "onDestroy of launcher"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 827
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->appInstalledReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->appInstalledReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->homeNavigationShortcutChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->homeNavigationShortcutChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/NotificationHelper;->unregisterEventCallbacks()V

    .line 838
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/NotificationHelper;->getEventNotifier()Lcom/borqs/eventnotifier/EventNotifier;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 839
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNotificationHelper:Lcom/sonim/borqs/launcher/NotificationHelper;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/NotificationHelper;->getEventNotifier()Lcom/borqs/eventnotifier/EventNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/borqs/eventnotifier/EventNotifier;->finish()V

    .line 842
    :cond_3
    sput-object v2, Lcom/sonim/borqs/launcher/LauncherActivity;->mQuickProfileSwitch:Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    .line 843
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mProfileChangeCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 844
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->unregisterAppTrayListChangedReceiver()V

    .line 845
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1178
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v0

    .line 1184
    packed-switch p1, :pswitch_data_0

    .line 1250
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHomeScreenFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1252
    packed-switch p1, :pswitch_data_1

    .line 1262
    :cond_1
    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    const/16 v0, 0x11

    if-ne p1, v0, :cond_6

    .line 1263
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1264
    return v6

    .line 1186
    :pswitch_0
    if-lez v0, :cond_3

    .line 1187
    add-int/lit8 v0, v0, -0x1

    .line 1188
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 1193
    :cond_3
    if-nez v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/DrawerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 1200
    :pswitch_1
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/DrawerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 1202
    add-int/lit8 v0, v0, 0x1

    .line 1203
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 1208
    :cond_4
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/DrawerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 1217
    :pswitch_2
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getNumColumns()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 1224
    :pswitch_3
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 1228
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/DrawerAdapter;->getCount()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 1227
    double-to-int v2, v2

    .line 1229
    mul-int/2addr v2, v1

    .line 1233
    sub-int/2addr v0, v1

    .line 1236
    if-gez v0, :cond_5

    .line 1239
    add-int/2addr v0, v2

    .line 1242
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    invoke-virtual {v2}, Lcom/sonim/borqs/launcher/DrawerAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 1243
    sub-int/2addr v0, v1

    .line 1246
    :cond_5
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto/16 :goto_0

    .line 1254
    :pswitch_4
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startDPADLeftAction()V

    .line 1255
    return v6

    .line 1257
    :pswitch_5
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startDPADRightAction()V

    .line 1258
    return v6

    .line 1270
    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 1271
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1272
    return v7

    .line 1274
    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    .line 1275
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1276
    return v6

    .line 1279
    :cond_8
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x8

    if-eq p1, v0, :cond_9

    .line 1280
    const/16 v0, 0x9

    if-ne p1, v0, :cond_a

    .line 1289
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    .line 1290
    const-string/jumbo v2, "tel"

    .line 1291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1292
    const-string/jumbo v4, ""

    .line 1291
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1289
    invoke-static {v2, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1293
    const-string/jumbo v1, "fromLauncher"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1294
    const-string/jumbo v1, "eventDownTime"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1295
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    .line 1297
    return v6

    .line 1281
    :cond_a
    const/16 v0, 0xa

    if-eq p1, v0, :cond_9

    .line 1282
    const/16 v0, 0xb

    if-eq p1, v0, :cond_9

    .line 1283
    const/16 v0, 0xc

    if-eq p1, v0, :cond_9

    .line 1284
    const/16 v0, 0xd

    if-eq p1, v0, :cond_9

    .line 1285
    const/16 v0, 0xe

    if-eq p1, v0, :cond_9

    .line 1286
    const/16 v0, 0xf

    if-eq p1, v0, :cond_9

    .line 1287
    const/16 v0, 0x10

    if-eq p1, v0, :cond_9

    .line 1299
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1184
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1252
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1109
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    sparse-switch p1, :sswitch_data_0

    .line 1150
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1112
    :sswitch_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1118
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1117
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1119
    iput-boolean v6, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->isLongPressonStar:Z

    .line 1120
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mLockHintTextView:Landroid/widget/TextView;

    .line 1121
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mLockHintString:Ljava/lang/String;

    new-instance v2, Lcom/sonim/borqs/launcher/LauncherActivity$TextViewImageGetter;

    invoke-direct {v2, p0, v7}, Lcom/sonim/borqs/launcher/LauncherActivity$TextViewImageGetter;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;Lcom/sonim/borqs/launcher/LauncherActivity$TextViewImageGetter;)V

    invoke-static {v1, v2, v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    .line 1120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mLockHintLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 1125
    const v1, 0x7f0b0050

    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1124
    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/AccessibilityUtil;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1134
    :cond_1
    return v6

    .line 1136
    :sswitch_1
    iput-boolean v6, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsLongPresson0:Z

    .line 1137
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    .line 1138
    const-string/jumbo v2, "tel"

    .line 1139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    const/16 v5, 0x51

    invoke-virtual {v4, v5}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1140
    const-string/jumbo v4, ""

    .line 1139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1137
    invoke-static {v2, v3, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1141
    const-string/jumbo v1, "fromLauncher"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1142
    const-string/jumbo v1, "eventDownTime"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1143
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    .line 1145
    return v6

    .line 1110
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1333
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1333
    if-eqz v0, :cond_1

    .line 1335
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    .line 1343
    :goto_0
    return v5

    .line 1340
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0

    .line 1345
    :cond_1
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x12

    if-ne p1, v0, :cond_2

    .line 1346
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    .line 1347
    const-string/jumbo v2, "tel"

    .line 1348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1349
    const-string/jumbo v4, ""

    .line 1348
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1346
    invoke-static {v2, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1350
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    .line 1351
    return v5

    .line 1358
    :cond_2
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x11

    if-ne p1, v0, :cond_4

    .line 1359
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->isLongPressonStar:Z

    if-eqz v0, :cond_3

    .line 1360
    invoke-virtual {p0, v6}, Lcom/sonim/borqs/launcher/LauncherActivity;->lockNow(Landroid/os/Bundle;)V

    .line 1361
    iput-boolean v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->isLongPressonStar:Z

    .line 1369
    :goto_1
    return v5

    .line 1363
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    .line 1364
    const-string/jumbo v2, "tel"

    .line 1365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1366
    const-string/jumbo v4, ""

    .line 1365
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1363
    invoke-static {v2, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1367
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_1

    .line 1371
    :cond_4
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 1372
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsLongPresson0:Z

    if-eqz v0, :cond_5

    .line 1373
    iput-boolean v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsLongPresson0:Z

    .line 1381
    :goto_2
    return v5

    .line 1375
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    .line 1376
    const-string/jumbo v2, "tel"

    .line 1377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1378
    const-string/jumbo v4, ""

    .line 1377
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1375
    invoke-static {v2, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1379
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_2

    .line 1384
    :cond_6
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 1385
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1386
    return v5

    .line 1388
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 921
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 922
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 923
    if-eqz v0, :cond_3

    const-string/jumbo v1, "extra_for_red_key_press"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 924
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Extra for Redk key - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 925
    const-string/jumbo v3, "extra_for_red_key_press"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 924
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisibleOnSIMInsert:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 929
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "Launching app tray"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHomeScreenFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHomeScreenFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 935
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    # FEAT(tray): open on the first entry (v4 = 0)
    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setSelection(I)V

    .line 936
    # FEAT(tray): no smooth scroll after setSelection

    .line 937
    iput-boolean v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mGoToWorkspace:Z

    .line 959
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisible:Z

    if-eqz v0, :cond_2

    .line 960
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->handleCling()Z

    .line 962
    :cond_2
    return-void

    .line 940
    :cond_3
    if-eqz v0, :cond_1

    const-string/jumbo v1, "extra_for_red_key_press"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHomeScreenFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 944
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "mHomeScreenFrameLayout is not visible, making it visible"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iput-boolean v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mGoToWorkspace:Z

    .line 946
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHomeScreenFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 954
    :cond_4
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mLauncherWindowFocused:Z

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1020
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1048
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1023
    :pswitch_1
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startGlobalSearch()V

    .line 1024
    return v3

    .line 1026
    :pswitch_2
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startWallpaper()V

    .line 1027
    return v3

    .line 1030
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startNotification()V

    .line 1031
    return v3

    .line 1034
    :pswitch_4
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOptionsItemSelected, Appinfo for package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1037
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 1038
    return v3

    .line 1040
    :pswitch_5
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startThemesActivity()V

    .line 1041
    return v3

    .line 1043
    :pswitch_6
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startHomeShortcutsActivity()V

    .line 1044
    return v3

    .line 1020
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 849
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    # FEAT(tray): a move in progress is put down where it is
    invoke-static {p0}, Lcom/sonim/borqs/launcher/WaveTray;->onPause(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    .line 850
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsAppTrayshown:Z

    .line 851
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->unregisterReceiverOnPause()V

    .line 853
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsMultiprofileFeaturesEnabled:Z

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mMultiProfileObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 856
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mMultiProfileObserver:Landroid/database/ContentObserver;

    .line 855
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 859
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1080
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    # FEAT(tray): replace the old menu, without invalidating it while it is opening
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-static {p0, p1}, Lcom/sonim/borqs/launcher/WaveMenu;->prepare(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :wave_stock_menu

    return v0

    :wave_stock_menu
    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->waveStockMenu(Landroid/view/Menu;)Z

    .line 1082
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrepareOptionsMenu app-tray visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1084
    return v3
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 883
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 887
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->createIntentFilters()V

    .line 890
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsMultiprofileFeaturesEnabled:Z

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 893
    const-string/jumbo v1, "multi_profile_current_profile_name"

    .line 892
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 894
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mMultiProfileObserver:Landroid/database/ContentObserver;

    .line 893
    const/4 v3, 0x1

    .line 891
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 896
    :cond_0
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mGoToWorkspace:Z

    if-eqz v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHomeScreenFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 906
    :cond_1
    :goto_0
    iput-boolean v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mGoToWorkspace:Z

    .line 907
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->verifyThemeChange()V

    .line 908
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->initNewEventNotice()V

    .line 909
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 910
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->announceScreenForAccessibility(I)V

    .line 915
    :cond_2
    :goto_1
    return-void

    .line 900
    :cond_3
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsAppTrayshown:Z

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHomeScreenFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 911
    :cond_4
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 913
    const v1, 0x7f0b0016

    invoke-virtual {p0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 912
    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/AccessibilityUtil;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 864
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 865
    const-string/jumbo v0, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Enter onStop isChangingConfigurations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isChangingConfigurations()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Enter onStop isChangingConfigurations "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isChangingConfigurations()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 867
    const-string/jumbo v0, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Enter onStop getChangingConfigurations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Enter onStop getChangingConfigurations "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getChangingConfigurations()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 870
    :goto_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getChangingConfigurations()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_1

    move v3, v1

    .line 871
    :goto_1
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getChangingConfigurations()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v1, :cond_2

    .line 872
    :goto_2
    const-string/jumbo v2, "LauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Enter onStop keyboardHidder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mccChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mncChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Enter onStop keyboardHidder "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " mccChange "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " mncChange "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 875
    return-void

    :cond_0
    move v0, v2

    .line 869
    goto :goto_0

    :cond_1
    move v3, v2

    .line 870
    goto :goto_1

    :cond_2
    move v1, v2

    .line 871
    goto :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 966
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 967
    iput-boolean p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mLauncherWindowFocused:Z

    .line 968
    return-void
.end method

.method public readTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 759
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 761
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 764
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 765
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 769
    :catch_0
    move-exception v0

    .line 770
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->finsihOnFatalError(Ljava/lang/String;)V

    .line 773
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 767
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 768
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public registerPkgAddRemoveChangeBoradcastReciever()V
    .locals 3

    .prologue
    .line 777
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 778
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 779
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 780
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 781
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 782
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->appInstalledReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 783
    return-void
.end method

.method public removeProfileUpdateListener(Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;)V
    .locals 1

    .prologue
    .line 3142
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mProfileChangeCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3143
    return-void
.end method

.method public setAppsAndFolderList()V
    .locals 0

    # FEAT(tray): the tray as the user arranged it (WaveTray), not the stock list
    invoke-static {p0}, Lcom/sonim/borqs/launcher/WaveTray;->rebuild(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    return-void
.end method

# FEAT(tray): the stock builder, renamed; WaveTray falls back to it (waveStockTray) if ours fails
.method public waveStockSetAppsAndFolderList()V
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2254
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v3, "setAppsAndFolderList - start"

    invoke-static {v0, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    const-string/jumbo v0, " setAppsAndFolderList - start "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 2259
    const-string/jumbo v0, "com.borqs.camera/com.borqs.camera.CameraActivity"

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v1

    .line 2261
    :try_start_0
    iget-object v7, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2262
    :try_start_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2265
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 2266
    :cond_1
    const-string/jumbo v0, " setAppsAndFolderList - Returning since cursor count will be zero "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2378
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->close()V

    .line 2379
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2268
    :cond_3
    return-void

    :cond_4
    move v3, v1

    .line 2271
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2272
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    .line 2273
    const-string/jumbo v8, "folder"

    .line 2272
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2274
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2275
    const-string/jumbo v4, "LauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAppsAndFolderList, folder name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v0, :cond_b

    .line 2279
    :cond_5
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    .line 2280
    const-string/jumbo v8, "pkgname"

    .line 2279
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2283
    if-nez v1, :cond_7

    .line 2285
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2287
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2288
    const-string/jumbo v1, "camera_postion"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v1, v5

    .line 2291
    goto :goto_0

    .line 2292
    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2294
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2295
    const-string/jumbo v4, "camera_postion"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2296
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v1, v5

    .line 2300
    :cond_7
    const-string/jumbo v4, "LauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAppsAndFolderList, app : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    new-instance v4, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-direct {v4}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2303
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 2305
    const-string/jumbo v9, "LauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setAppsAndFolderList, app : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    invoke-virtual {v4, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageAndClassName(Ljava/lang/String;)V

    .line 2308
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPkgIconForTheme(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2309
    if-nez v0, :cond_8

    .line 2310
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2312
    :cond_8
    invoke-virtual {v4, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2313
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2314
    iget-object v9, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2313
    invoke-virtual {v0, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setName(Ljava/lang/String;)V

    .line 2315
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2316
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2315
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIntent(Landroid/content/Intent;)V

    .line 2317
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageName(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2323
    :try_start_5
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2324
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mfolderFlag:Ljava/lang/Boolean;

    .line 2325
    add-int/lit8 v0, v3, 0x1

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_1
    move v3, v1

    move v1, v0

    goto/16 :goto_0

    .line 2318
    :catch_0
    move-exception v0

    .line 2319
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2320
    const-string/jumbo v4, "LauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2261
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v7

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2377
    :catchall_1
    move-exception v0

    .line 2378
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->close()V

    .line 2379
    :cond_9
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2377
    :cond_a
    throw v0

    .line 2329
    :cond_b
    :try_start_7
    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mfolderFlag:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_13

    .line 2330
    :cond_c
    new-instance v4, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    invoke-direct {v4, p0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    .line 2331
    const-string/jumbo v2, "LauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "folder name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2333
    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getFolderIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2334
    invoke-virtual {v4, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->setName(Ljava/lang/String;)V

    .line 2335
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2336
    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mFolderName:Ljava/lang/String;

    .line 2337
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mfolderFlag:Ljava/lang/Boolean;

    .line 2338
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getToolsFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2339
    invoke-direct {p0, v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->setToolsFolderPosition(I)V

    .line 2341
    :cond_d
    add-int/lit8 v2, v3, 0x1

    move-object v3, v4

    .line 2345
    :goto_2
    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2346
    new-instance v4, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-direct {v4}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;-><init>()V

    .line 2347
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    .line 2348
    const-string/jumbo v9, "pkgname"

    .line 2347
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 2350
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 2352
    const-string/jumbo v9, "LauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setAppsAndFolderList, cn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    const-string/jumbo v9, "LauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setAppsAndFolderList, pkgname : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    const-string/jumbo v9, "LauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setAppsAndFolderList, pkg mgr : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    invoke-virtual {v4, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageAndClassName(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPkgIconForTheme(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2358
    if-nez v0, :cond_e

    .line 2359
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2361
    :cond_e
    invoke-virtual {v4, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2362
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2363
    iget-object v9, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2362
    invoke-virtual {v0, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setName(Ljava/lang/String;)V

    .line 2364
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIntent(Landroid/content/Intent;)V

    .line 2365
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageName(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2371
    :try_start_9
    invoke-virtual {v3, v4}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->setAppListInsideFolder(Lcom/sonim/borqs/launcher/LauncherActivity$Apps;)V

    move v0, v1

    move v1, v2

    move-object v2, v3

    goto/16 :goto_1

    .line 2366
    :catch_1
    move-exception v0

    .line 2367
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2368
    const-string/jumbo v4, "LauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v12, v2

    move-object v2, v3

    move v3, v12

    .line 2369
    goto/16 :goto_0

    :cond_f
    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2378
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->close()V

    .line 2379
    :cond_10
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2382
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " setAppsAndFolderList - app-tray has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " items "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 2383
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setInstalledApps()V

    .line 2384
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setSTKApp()V

    .line 2385
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/AccessArrayList;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/AccessArrayList;->setAppsAndFolderListForShorcut(Ljava/util/ArrayList;)V

    .line 2386
    const-string/jumbo v0, " setAppsAndFolderList - end "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 2387
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "setAppsAndFolderList - end"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    return-void

    :cond_12
    move v0, v1

    move v1, v2

    move-object v2, v3

    goto/16 :goto_1

    :cond_13
    move v12, v3

    move-object v3, v2

    move v2, v12

    goto/16 :goto_2
.end method

.method public setFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2184
    const-string/jumbo v0, "Applications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2185
    const-string/jumbo v0, "Aplicaciones"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2184
    if-eqz v0, :cond_2

    .line 2186
    :cond_0
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2194
    :cond_1
    :goto_0
    return-object p1

    .line 2187
    :cond_2
    const-string/jumbo v0, "Tools"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2188
    const-string/jumbo v0, "Outils"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2187
    if-eqz v0, :cond_4

    .line 2189
    :cond_3
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getToolsFolderName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2190
    :cond_4
    const-string/jumbo v0, "Music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2191
    const-string/jumbo v0, "M\u00fasica"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2190
    if-eqz v0, :cond_1

    .line 2192
    :cond_5
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public declared-synchronized setInstalledApps()V
    .locals 14

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    .line 1864
    :try_start_0
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "setInstalledApps - start"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    const-string/jumbo v0, " setInstalledApps - start "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 1866
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSafeMode:Z

    if-eqz v0, :cond_0

    .line 1867
    const-string/jumbo v0, " setInstalledApps - SAFE mode, return "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 1868
    return-void

    .line 1871
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1872
    :try_start_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sonim_postion"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1874
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInstalledApps ACTION_PACKAGE_ADDED,sonimAppsPostion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$AppsAndFolder;

    .line 1879
    instance-of v1, v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    if-eqz v1, :cond_3

    .line 1880
    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    .line 1885
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    move v6, v4

    .line 1887
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_6

    .line 1888
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1890
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_4

    move v2, v5

    .line 1892
    :goto_1
    if-nez v2, :cond_5

    .line 1894
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1895
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1896
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1897
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1898
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 1899
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1901
    const-string/jumbo v2, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " resolveInfoList.size() : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 1902
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    .line 1903
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1904
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1905
    new-instance v10, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-direct {v10}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;-><init>()V

    .line 1906
    const-string/jumbo v11, "LauncherActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "appInfo : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1907
    if-eqz v2, :cond_2

    .line 1910
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1909
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 1911
    invoke-virtual {v10, v2}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageAndClassName(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {p0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPkgIconForTheme(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1914
    if-nez v2, :cond_1

    .line 1915
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v11}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1917
    :cond_1
    invoke-virtual {v10, v2}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1918
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1919
    iget-object v11, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1918
    invoke-virtual {v2, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setName(Ljava/lang/String;)V

    .line 1923
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIntent(Landroid/content/Intent;)V

    .line 1924
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageName(Ljava/lang/String;)V

    .line 1925
    if-eqz v0, :cond_2

    .line 1926
    invoke-virtual {v0, v10}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->setAppListInsideFolder(Lcom/sonim/borqs/launcher/LauncherActivity$Apps;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1902
    :cond_2
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    :cond_3
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 1882
    return-void

    :cond_4
    move v2, v4

    .line 1890
    goto/16 :goto_1

    .line 1928
    :catch_0
    move-exception v2

    .line 1929
    :try_start_5
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1930
    const-string/jumbo v10, "LauncherActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1871
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v7

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1887
    :cond_5
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    :cond_6
    :try_start_7
    monitor-exit v7

    .line 1940
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "setInstalledApps - end"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const-string/jumbo v0, " setInstalledApps - end "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    .line 1942
    return-void
.end method

.method public setMissedEventCallback(Lcom/sonim/borqs/launcher/LauncherActivity$LoadEventsCallback;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mMissedEventCallback:Lcom/sonim/borqs/launcher/LauncherActivity$LoadEventsCallback;

    .line 480
    return-void
.end method

.method public setProfileUpdateListener(Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;)V
    .locals 1

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mProfileChangeCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3139
    return-void
.end method

.method public declared-synchronized setSTKApp()V
    .locals 11

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    monitor-enter p0

    .line 1948
    :try_start_0
    iget-object v6, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1949
    :try_start_1
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isSTKReady()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isSIMValidAndFunctional()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1951
    const-string/jumbo v0, " setSTKApp - start "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V

    .line 1952
    new-instance v7, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-direct {v7}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;-><init>()V

    .line 1958
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1959
    :cond_0
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "stk---, App-tray is not set"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    const-string/jumbo v0, " setSTKApp - list not ready -return "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 1961
    return-void

    .line 1963
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "stk_postion"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1964
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stk--- setSTKApp : mSTKPostion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    if-eq v0, v5, :cond_2

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3

    .line 1967
    :cond_2
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "stk---, Tools folder position is not correct"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    const-string/jumbo v0, " setSTKApp - tools folder postion is wrong -return "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 1969
    return-void

    .line 1971
    :cond_3
    :try_start_5
    const-string/jumbo v1, "LauncherActivity"

    const-string/jumbo v2, "stk--- setSTKApp : Adding STK in list"

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    if-eqz v1, :cond_6

    .line 1973
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    .line 1978
    const-string/jumbo v8, "com.android.stk"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1982
    :try_start_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1983
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1984
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1985
    const-string/jumbo v2, "com.android.stk"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1986
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1987
    const/4 v3, 0x0

    .line 1986
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 1988
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 1990
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stk--- resolveInfoList.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 1991
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_9

    .line 1992
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stk--- setSTKApp, pkgname : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.android.stk/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1995
    const-string/jumbo v2, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stk---, setSTKApp, pkgAndClassName : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    if-eqz v1, :cond_5

    .line 1998
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1997
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1999
    invoke-virtual {v7, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageAndClassName(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {p0, v8}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPkgIconForTheme(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2002
    if-nez v1, :cond_4

    .line 2003
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2005
    :cond_4
    invoke-virtual {v7, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2006
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 2007
    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2006
    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setName(Ljava/lang/String;)V

    .line 2010
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "com.android.stk"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIntent(Landroid/content/Intent;)V

    .line 2011
    const-string/jumbo v1, "com.android.stk"

    invoke-virtual {v7, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageName(Ljava/lang/String;)V

    .line 2015
    :cond_5
    new-instance v1, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-direct {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;-><init>()V

    move v3, v4

    move v2, v4

    .line 2020
    :goto_1
    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    .line 2021
    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    .line 2022
    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v1

    .line 2023
    invoke-virtual {v7}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v10

    .line 2022
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2024
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stk---  ,setting flag, app.getPackageAndClassName(): "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2026
    invoke-virtual {v7}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v10

    .line 2024
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2028
    const/4 v1, 0x1

    .line 2020
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 1975
    :cond_6
    :try_start_7
    const-string/jumbo v0, " setSTKApp - tool-postion is not instance of folder-return "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    .line 1976
    return-void

    .line 2032
    :cond_7
    if-nez v2, :cond_8

    .line 2033
    :try_start_9
    invoke-virtual {v0, v7}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->setAppListInsideFolder(Lcom/sonim/borqs/launcher/LauncherActivity$Apps;)V
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1991
    :cond_8
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_0

    .line 2037
    :catch_0
    move-exception v0

    .line 2038
    :try_start_a
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2039
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    .line 2041
    return-void

    .line 2043
    :cond_9
    :try_start_c
    const-string/jumbo v0, " setSTKApp - end "

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getSystemTimeInSecond(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_a
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    monitor-exit p0

    .line 2046
    return-void

    .line 1948
    :catchall_0
    move-exception v0

    :try_start_e
    monitor-exit v6

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    move v1, v2

    goto :goto_2
.end method

.method public setShortcutUpdateListener(Lcom/sonim/borqs/launcher/LauncherActivity$ShortcutUpdateListener;)V
    .locals 0

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mShortcutUpdateListener:Lcom/sonim/borqs/launcher/LauncherActivity$ShortcutUpdateListener;

    .line 1808
    return-void
.end method

.method public setThemeChangedListener(Lcom/sonim/borqs/launcher/LauncherActivity$ThemeChangedListener;)V
    .locals 0

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mThemeChangedListener:Lcom/sonim/borqs/launcher/LauncherActivity$ThemeChangedListener;

    .line 2059
    return-void
.end method

.method public showFTU()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2417
    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsClingVisible:Z

    .line 2418
    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsFirstPageCling:Z

    .line 2421
    const/high16 v0, 0x7f0e0000

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2422
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030002

    .line 2423
    const/4 v3, 0x0

    .line 2422
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCustomCling:Landroid/view/View;

    .line 2425
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mCustomCling:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2426
    return-void
.end method

.method public showFirstRunWorkspaceCling()V
    .locals 3

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "cling.workspace.cling"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2406
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->initUserPrefService()V

    .line 2407
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->showFTU()V

    .line 2408
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "FTU called "

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    :cond_0
    return-void
.end method

.method public showNewEventNotice(Z)V
    .locals 2

    .prologue
    .line 542
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mNewEventNotice:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    return-void

    .line 542
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startActivitySafely(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const v2, 0x7f0b0013

    const/4 v1, 0x0

    .line 1392
    if-eqz p1, :cond_0

    .line 1394
    const/high16 v0, 0x10000000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1395
    invoke-virtual {p0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    :goto_0
    return-void

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1402
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1404
    const-string/jumbo v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    .line 1402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1405
    const-string/jumbo v3, "or use the exported attribute for this activity. "

    .line 1402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1406
    const-string/jumbo v3, " intent="

    .line 1402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1396
    :catch_1
    move-exception v0

    .line 1397
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1409
    :cond_0
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startDPADCenterAction()V
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADCenterPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startAction(Ljava/lang/String;)V

    .line 1566
    return-void
.end method

.method public startDPADDownAction()V
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADDownPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startAction(Ljava/lang/String;)V

    .line 1562
    return-void
.end method

.method public startDPADLeftAction()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1582
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1587
    :goto_0
    return-void

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public startDPADRightAction()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1591
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1596
    :goto_0
    return-void

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public startDPADUpAction()V
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDPADUpPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startAction(Ljava/lang/String;)V

    .line 1558
    return-void
.end method

.method startHomeShortcutsActivity()V
    .locals 3

    .prologue
    .line 1072
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1073
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonim/borqs/launcher/HomeNavigationKeys;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1074
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1075
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 1076
    return-void
.end method

.method startNotification()V
    .locals 4

    .prologue
    .line 1054
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1055
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.NotificationManagerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1058
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 1060
    return-void
.end method

.method startThemesActivity()V
    .locals 3

    .prologue
    .line 1066
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1067
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonim/borqs/launcher/HomeThemes;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1068
    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 1069
    return-void
.end method

.method public updateQuickProfileForStealthMode(Z)V
    .locals 2

    .prologue
    .line 330
    sget-boolean v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsStealthModeEnabled:Z

    .line 331
    sput-boolean p1, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsStealthModeEnabled:Z

    .line 332
    sget-boolean v1, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsStealthModeEnabled:Z

    if-eq v1, v0, :cond_0

    .line 333
    const-string/jumbo v0, "QUICK_PROFILE_PKG/QUICK_PROFILE_CLASS"

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->updateNavigationKey(Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

# FEAT(tray): bridges for WaveTray (package-private, Java can't name the synthetic -getN)

.method static waveList(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static waveGrid(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerFolderGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static waveAdapter(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/DrawerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDrawerAdapterObject:Lcom/sonim/borqs/launcher/DrawerAdapter;

    return-object v0
.end method

.method static wavePrefs(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static waveCursor(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static waveDb(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/helper/DatabaseHelper;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    return-object v0
.end method

.method static waveWallpaper(Lcom/sonim/borqs/launcher/LauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startWallpaper()V

    return-void
.end method

.method static waveLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sonim/borqs/launcher/LauncherActivity;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static waveTrayVisible(Lcom/sonim/borqs/launcher/LauncherActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->isAppTrayVisible()Z

    move-result v0

    return v0
.end method

.method static waveStockFolderIcon(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getFolderIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static waveCheckNavKey(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->checkNavigationKeyAndSetDefault(Ljava/lang/String;)V

    return-void
.end method

.method static waveUpdateNavKey(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->updateNavigationKey(Ljava/lang/String;)V

    return-void
.end method

.method static waveStockTray(Lcom/sonim/borqs/launcher/LauncherActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mDataBaseHelpler:Lcom/sonim/borqs/launcher/helper/DatabaseHelper;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/helper/DatabaseHelper;->getAppAndFolderCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity;->mAppsAndFolderCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->waveStockSetAppsAndFolderList()V

    return-void
.end method
# END FEAT(tray)
