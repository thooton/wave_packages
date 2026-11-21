.class public Lcom/nuance/flext9_OEM/input/IME;
.super Landroid/inputmethodservice/InputMethodService;
.source "IME.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/IME$1;,
        Lcom/nuance/flext9_OEM/input/IME$2;,
        Lcom/nuance/flext9_OEM/input/IME$3;,
        Lcom/nuance/flext9_OEM/input/IME$4;,
        Lcom/nuance/flext9_OEM/input/IME$IncomingCallListener;
    }
.end annotation


# static fields
.field private static final ACTION_ALERT_FROM_PTT:Ljava/lang/String; = "action_ptt_alert"

.field private static final ACTION_PTT_CALL_START:Ljava/lang/String; = "action_ptt_call_started"

.field private static final ALPHA_HANDWRITING:Ljava/lang/String; = "Alpha.HandWriting"

.field private static final ALPHA_INPUT:Ljava/lang/String; = "Alpha.Input"

.field private static final BASE_HEX:I = 0x10

.field public static final BROWSER_APP:Ljava/lang/String; = "com.android.browser"

.field private static final CARS_EMOJI_SCREEN:I = 0x5

.field private static final CHINESE_HANDWRITING:Ljava/lang/String; = "Chinese.HandWriting"

.field private static final CHINESE_INPUT:Ljava/lang/String; = "Chinese.input"

.field private static final COMMA:C = ','

.field private static final COMMA_STRING:Ljava/lang/String; = ","

.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field private static final EMOJI_UNICODE:Ljava/lang/String; = "emojiunicode"

.field private static final EMOJI_UNICODE_DELIMITER:C = '!'

.field private static final EMOTICONS_SCREEN:I = 0x7

.field private static final ENGLISH_STATUS_DRAWABLES:[[I

.field private static final ENGLISH_STATUS_DRAWABLES_BROWSER:[[I

.field private static final FRENCH_STATUS_DRAWABLES:[[I

.field private static final HARDKEYBOARD_INPUT:Ljava/lang/String; = "Alpha.Hardkey"

.field public static final KEYCODE_LANGUAGE_MENU:I = -0x65

.field public static final KEYCODE_OPTION_MENU:I = -0x64

.field public static final KEYCODE_SHIFTMODE_MENU:I = -0x3e9

.field private static final MSG_CYCLING_KEYBOARD_INPUTS:I = 0x67

.field private static final MSG_CYCLING_LANGUAGE:I = 0x66

.field private static final MSG_HANDLE_KEY_EVENT:I = 0x70

.field private static final MSG_HANDLE_PENDING_HARD_KEYEVENT:I = 0x73

.field private static final MSG_HANDLE_SETUP_IPUTVIEW_COMPLETED:I = 0x72

.field private static final MSG_LAUNCH_SETTINGS:I = 0x6a

.field private static final MSG_SHOW_EULA_DIALOG:I = 0x6f

.field private static final MSG_SHOW_EXPIRATION_DIALOG:I = 0x6d

.field private static final MSG_SHOW_KEYBOARD_MENU:I = 0x68

.field private static final MSG_SHOW_LANGUAGE_MENU:I = 0x69

.field private static final MSG_SHOW_TRIAL_DISCLAIMER_DIALOG:I = 0x6e

.field private static final MSG_SWITCH_INPUTVIEW:I = 0x65

.field private static final MSG_TOGGLE_FULLSCREEN_HWR:I = 0x6c

.field private static final MSG_TOGGLE_HWR_KEYBOARD:I = 0x6b

.field private static final NATURE_EMOJI_SCREEN:I = 0x4

.field private static final NO_VIEW:Ljava/lang/String; = "NO_VIEW"

.field private static final OBJECTS_EMOJI_SCREEN:I = 0x3

.field private static final PEOPLE_EMOJI_SCREEN:I = 0x2

.field public static final PERSIST_INPUTMODE_PREFIX_KEY:Ljava/lang/String; = "FlexT9PersistInputMode"

.field public static final PHONE_SYMBOLS_SCREEN:I = 0x8

.field private static final POS_METHOD:I = 0x1

.field private static final POS_SETTINGS:I = 0x0

.field public static final QUICK_PRESS:I = 0x2ee

.field public static final RECENTS_EMOJI_SCREEN:I = 0x1

.field private static final SPANISH_STATUS_DRAWABLES:[[I

.field private static final SPANISH_STATUS_DRAWABLES_BROWSER:[[I

.field private static final SYMBOLS_EMOJI_SCREEN:I = 0x6

.field public static final SYMBOLS_SCREEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "XT9IME"

.field private static final VERTICAL_BAR_STRING:Ljava/lang/String; = "\\|"

.field public static final WIFI_PORTAL_LOGIN:Ljava/lang/String; = "com.android.captiveportallogin"

.field private static isUserAMonkey:Ljava/lang/reflect/Method;

.field public static mLastActiveWord:Ljava/lang/StringBuilder;

.field private static mMaxRecentEmojis:I

.field private static mRecentEmojiListDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static mRecentEmojilist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ALARM_ALERT_ACTION:Ljava/lang/String;

.field private final FX_VOLUME:F

.field private alarmReceiver:Landroid/content/BroadcastReceiver;

.field private isAllWindowClosed:Z

.field private mAbortedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertMessageDialog:Landroid/app/AlertDialog;

.field private mAllEmojis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

.field private mChanginglanguage:Z

.field private mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

.field private mCurrentInputViewName:Ljava/lang/String;

.field private mDabaseConfig:Lcom/nuance/flext9_OEM/input/DatabaseConfig;

.field private mDontShowToast:Z

.field private mEmojiCarsTab:Landroid/widget/ImageButton;

.field private mEmojiGridViewLoaded:Z

.field private mEmojiNatureTab:Landroid/widget/ImageButton;

.field private mEmojiObjectsTab:Landroid/widget/ImageButton;

.field private mEmojiPeopleTab:Landroid/widget/ImageButton;

.field private mEmojiPunctionsTab:Landroid/widget/ImageButton;

.field private mEmojiRecentsTab:Landroid/widget/ImageButton;

.field mEmojiView:Landroid/view/View;

.field private mEmojiemoticonsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

.field private mEmoticonsTab:Landroid/widget/ImageButton;

.field private mFocusOnHardKeyBoard:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandwritingCandidateView:Landroid/view/View;

.field private mHardKeyEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mHardKeyboardCandidateView:Landroid/view/View;

.field private mHardKeyboardCapsState:Z

.field private mHardKeyboardList:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

.field private mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

.field mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

.field private mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

.field private mInputViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/flext9_OEM/input/InputView;",
            ">;"
        }
    .end annotation
.end field

.field public mIsInputViewShown:Z

.field private mIsViewNeedToPersist:Z

.field private mLanguageDialogOption:Z

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLocale:Ljava/lang/String;

.field private mLocaleChanged:Z

.field private mNatureEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

.field private mObjectEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

.field private mPeopleEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

.field private mPersistInputModeAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistInputModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhoneSymbolsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

.field private mPlacesEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

.field private mPressedKeyEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickPressed:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentEmojiAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

.field private mRepeatedKeyCount:I

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowSuggestions:Z

.field private mSilentMode:Z

.field private mSoundEnabled:Z

.field private mSoundOn:Z

.field private mStarted:Z

.field private mStatusBarIconID:I

.field private mStatusBarIconShown:Z

.field private mSuggestContactNames:Z

.field private mSupportHardKeyboardOnly:Z

.field private mSymbolsEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

.field public mSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

.field private mSymbolsTab:Landroid/widget/ImageButton;

.field private mVibrateDuration:J

.field private mVibrateOn:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWantLanguageToast:Z

.field private mWantToast:Z

.field private mWarningIsShowing:Z

.field public newtext:Ljava/lang/CharSequence;

.field private onClickListerner:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/IME;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/IME;)Lcom/nuance/flext9_OEM/input/InputMethods$Language;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    return-object v0
.end method

.method static synthetic -get10(Lcom/nuance/flext9_OEM/input/IME;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/nuance/flext9_OEM/input/IME;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/nuance/flext9_OEM/input/IME;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiRecentsTab:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get4(Lcom/nuance/flext9_OEM/input/IME;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/nuance/flext9_OEM/input/IME;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandwritingCandidateView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/nuance/flext9_OEM/input/IME;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyEvent:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get7(Lcom/nuance/flext9_OEM/input/IME;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get8(Lcom/nuance/flext9_OEM/input/IME;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get9(Lcom/nuance/flext9_OEM/input/IME;)Lcom/nuance/flext9_OEM/input/HorizontalPager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/nuance/flext9_OEM/input/IME;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/nuance/flext9_OEM/input/IME;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mWantToast:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->handleXT9LanguageCyclingKey()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->launchSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/nuance/flext9_OEM/input/IME;Lcom/nuance/flext9_OEM/input/InputFieldInfo;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/IME;->setupInputView(Lcom/nuance/flext9_OEM/input/InputFieldInfo;ZZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/nuance/flext9_OEM/input/IME;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/IME;->showAlertMessageDialog(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->showEULAMessageDialog()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->showLanguageMenu()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->togleHwrAndKeyboardInputMode()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/nuance/flext9_OEM/input/IME;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->updateRingerMode()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/flext9_OEM/input/IME;->isUserAMonkey:Ljava/lang/reflect/Method;

    .line 188
    sput v4, Lcom/nuance/flext9_OEM/input/IME;->mMaxRecentEmojis:I

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/IME;->map:Ljava/util/HashMap;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    .line 273
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiListDeque:Ljava/util/ArrayDeque;

    .line 300
    new-array v0, v6, [[I

    .line 301
    const v1, 0x7f02006d

    const v2, 0x7f02006b

    const v3, 0x7f020069

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    .line 302
    const v1, 0x7f020051

    const v2, 0x7f02004f

    const v3, 0x7f02004d

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 300
    sput-object v0, Lcom/nuance/flext9_OEM/input/IME;->ENGLISH_STATUS_DRAWABLES:[[I

    .line 305
    new-array v0, v6, [[I

    .line 306
    const v1, 0x7f020064

    const v2, 0x7f020062

    const v3, 0x7f020060

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    .line 307
    const v1, 0x7f020057

    const v2, 0x7f020055

    const v3, 0x7f020053

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 305
    sput-object v0, Lcom/nuance/flext9_OEM/input/IME;->SPANISH_STATUS_DRAWABLES:[[I

    .line 310
    new-array v0, v6, [[I

    .line 311
    const v1, 0x7f020068

    const v2, 0x7f020067

    const v3, 0x7f020066

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    .line 312
    const v1, 0x7f02005f

    const v2, 0x7f02005e

    const v3, 0x7f02005d

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 310
    sput-object v0, Lcom/nuance/flext9_OEM/input/IME;->FRENCH_STATUS_DRAWABLES:[[I

    .line 318
    new-array v0, v6, [[I

    .line 319
    const v1, 0x7f02006e

    const v2, 0x7f02006c

    const v3, 0x7f02006a

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    .line 320
    const v1, 0x7f020052

    const v2, 0x7f020050

    const v3, 0x7f02004e

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 318
    sput-object v0, Lcom/nuance/flext9_OEM/input/IME;->ENGLISH_STATUS_DRAWABLES_BROWSER:[[I

    .line 323
    new-array v0, v6, [[I

    .line 324
    const v1, 0x7f020065

    const v2, 0x7f020063

    const v3, 0x7f020061

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    .line 325
    const v1, 0x7f020058

    const v2, 0x7f020056

    const v3, 0x7f020054

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 323
    sput-object v0, Lcom/nuance/flext9_OEM/input/IME;->SPANISH_STATUS_DRAWABLES_BROWSER:[[I

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 199
    const-string/jumbo v0, "com.android.deskclock.ALARM_ALERT"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->ALARM_ALERT_ACTION:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, "NO_VIEW"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 211
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mLocaleChanged:Z

    .line 218
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardCapsState:Z

    .line 226
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mWantLanguageToast:Z

    .line 230
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mDontShowToast:Z

    .line 232
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mWarningIsShowing:Z

    .line 239
    iput-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyEvent:Ljava/util/List;

    .line 245
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/flext9_OEM/input/IME;->FX_VOLUME:F

    .line 250
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    .line 267
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mChanginglanguage:Z

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAllEmojis:Ljava/util/ArrayList;

    .line 289
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiGridViewLoaded:Z

    .line 291
    iput-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeMap:Ljava/util/HashMap;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeAppList:Ljava/util/List;

    .line 298
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSupportHardKeyboardOnly:Z

    .line 2374
    new-instance v0, Lcom/nuance/flext9_OEM/input/IME$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/IME$1;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2848
    new-instance v0, Lcom/nuance/flext9_OEM/input/IME$2;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/IME$2;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 2963
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    .line 3018
    iput-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    .line 3120
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/IME;->isAllWindowClosed:Z

    .line 3227
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mStatusBarIconShown:Z

    .line 3228
    iput v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mStatusBarIconID:I

    .line 3832
    new-instance v0, Lcom/nuance/flext9_OEM/input/IME$3;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/IME$3;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->onClickListerner:Landroid/view/View$OnClickListener;

    .line 4378
    new-instance v0, Lcom/nuance/flext9_OEM/input/IME$4;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/IME$4;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->alarmReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    return-void
.end method

.method private addEvent(Landroid/view/KeyEvent;)V
    .locals 3

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3368
    :cond_0
    return-void

    .line 3369
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3370
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 3371
    return-void

    .line 3369
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3374
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3375
    return-void
.end method

.method private addToAbortedList(I)V
    .locals 2

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1609
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1611
    return-void

    .line 1609
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1614
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    :cond_2
    return-void
.end method

.method private checkTrialBuildInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/16 v3, 0x6e

    const/16 v2, 0x6d

    .line 1223
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->isTrialBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->updateExpirationPeriod()V

    .line 1227
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1232
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 1233
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1232
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->isPrereleaseCandidateBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1242
    const-string/jumbo v1, "trial_disclaimer_msg_already_shown"

    .line 1244
    const-string/jumbo v1, "trial_disclaimer_msg_already_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1246
    const-string/jumbo v1, "trial_disclaimer_msg_already_shown"

    .line 1247
    const/4 v2, 0x1

    .line 1246
    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1249
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1252
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 1253
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1252
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private createCandidatesView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 874
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    :cond_0
    const-string/jumbo v0, "XT9IME"

    const-string/jumbo v1, "createCandidatesView()...no input views"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    return-object v2

    .line 888
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 889
    if-nez v0, :cond_2

    .line 890
    return-object v2

    .line 892
    :cond_2
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->createCandidatesView()Landroid/view/View;

    move-result-object v0

    .line 899
    return-object v0
.end method

.method private createCandidatesViewForHandwritingInput()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 816
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    :cond_0
    const-string/jumbo v0, "XT9IME"

    const-string/jumbo v1, "createCandidatesView()...no input views"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    return-object v2

    .line 830
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getHandWritingInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 831
    if-nez v0, :cond_2

    .line 832
    return-object v2

    .line 834
    :cond_2
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->createCandidatesView()Landroid/view/View;

    move-result-object v0

    .line 841
    return-object v0
.end method

.method private createCandidatesViewForHardKeyInput()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 846
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    :cond_0
    const-string/jumbo v0, "XT9IME"

    const-string/jumbo v1, "createCandidatesView()...no input views"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    return-object v2

    .line 860
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 861
    if-nez v0, :cond_2

    .line 862
    return-object v2

    .line 864
    :cond_2
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->createCandidatesView()Landroid/view/View;

    move-result-object v0

    .line 866
    return-object v0
.end method

.method private createInputViewFor(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f030006

    const/4 v3, 0x0

    .line 695
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    .line 702
    const-string/jumbo v1, "Alpha.Input"

    if-ne p1, v1, :cond_2

    .line 703
    if-nez v0, :cond_1

    .line 704
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    .line 706
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mAllEmojis:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->create(Lcom/nuance/flext9_OEM/input/IME;Ljava/util/ArrayList;)V

    .line 707
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_1
    return-object v0

    .line 712
    :cond_2
    const-string/jumbo v1, "Chinese.input"

    if-ne p1, v1, :cond_4

    .line 713
    if-nez v0, :cond_3

    .line 714
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 715
    const v1, 0x7f030011

    .line 714
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/ChineseInputView;

    .line 716
    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/InputView;->create(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 717
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_3
    return-object v0

    .line 721
    :cond_4
    const-string/jumbo v1, "Alpha.HandWriting"

    if-ne p1, v1, :cond_6

    .line 722
    if-nez v0, :cond_9

    .line 723
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 724
    const v1, 0x7f030003

    .line 723
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;

    .line 725
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->initViews()V

    .line 726
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingContainerView;->getInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v1

    .line 727
    invoke-virtual {v1, p0}, Lcom/nuance/flext9_OEM/input/InputView;->create(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 728
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    const-string/jumbo v2, "Alpha.Hardkey"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 732
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    .line 734
    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/InputView;->create(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 735
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    const-string/jumbo v3, "Alpha.Hardkey"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v0, v1

    .line 739
    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->getContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 741
    :cond_6
    const-string/jumbo v1, "Chinese.HandWriting"

    if-ne p1, v1, :cond_8

    .line 742
    if-nez v0, :cond_7

    .line 743
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 744
    const v1, 0x7f03000f

    .line 743
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;

    .line 745
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->initViews()V

    .line 746
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingContainerView;->getInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 747
    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/InputView;->create(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 748
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_7
    check-cast v0, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseHandWritingInputView;->getContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 758
    :cond_8
    return-object v3

    :cond_9
    move-object v1, v0

    goto :goto_0
.end method

.method private destroyAllInputView()V
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 578
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    .line 580
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->destroy()V

    .line 578
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 585
    :cond_1
    return-void
.end method

.method private destroyAllInputs()V
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->finishAllInputView()V

    .line 609
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->destroyAllInputView()V

    .line 610
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->resetInputView()V

    .line 612
    const-string/jumbo v0, "NO_VIEW"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 613
    return-void
.end method

.method private extractDatabaseFromAssets(Lcom/nuance/flext9_OEM/input/BuildInfo;)V
    .locals 4

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mDabaseConfig:Lcom/nuance/flext9_OEM/input/DatabaseConfig;

    if-nez v0, :cond_0

    .line 2931
    new-instance v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/BuildInfo;->getBuildDate()J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mDabaseConfig:Lcom/nuance/flext9_OEM/input/DatabaseConfig;

    .line 2933
    :cond_0
    return-void
.end method

.method private finishAllInputView()V
    .locals 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 590
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    .line 592
    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->finishInput()V

    .line 590
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 597
    :cond_1
    return-void
.end method

.method private getCurrentLicense()Lcom/nuance/flext9_OEM/input/License;
    .locals 1

    .prologue
    .line 3588
    const/4 v0, 0x0

    return-object v0
.end method

.method private getHandWritingInputView()Lcom/nuance/flext9_OEM/input/InputView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 562
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    :cond_0
    return-object v1

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    return-object v0
.end method

.method private getHardKeyboardInputView()Lcom/nuance/flext9_OEM/input/InputView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 569
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    :cond_0
    return-object v1

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    const-string/jumbo v1, "Alpha.Hardkey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    return-object v0
.end method

.method private static getLabelSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 4185
    const-string/jumbo v0, "\\|"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 4186
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 4187
    return-object p0

    .line 4189
    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getLastSavedActiveWord()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 346
    return-object v0
.end method

.method private handleBackspace(I)V
    .locals 3

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 2248
    if-eqz v0, :cond_0

    .line 2249
    const/4 v1, -0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/nuance/flext9_OEM/input/InputView;->handleKey(IZI)Z

    move-result v0

    .line 2248
    if-eqz v0, :cond_0

    .line 2251
    return-void

    .line 2255
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/IME;->sendBackspace(I)V

    .line 2256
    return-void
.end method

.method private handleClose()V
    .locals 1

    .prologue
    .line 2474
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2475
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->handleClose()V

    .line 2478
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->requestHideSelf(I)V

    .line 2479
    return-void
.end method

.method private handleSpace(ZI)V
    .locals 2

    .prologue
    .line 2260
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 2262
    if-eqz v0, :cond_0

    .line 2263
    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->handleKey(IZI)Z

    move-result v0

    .line 2262
    if-eqz v0, :cond_0

    .line 2266
    return-void

    .line 2270
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->sendSpace()V

    .line 2271
    return-void
.end method

.method private handleXT9LanguageCyclingKey()V
    .locals 8

    .prologue
    const/16 v7, 0x70

    const/16 v6, 0x65

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2189
    iput-boolean v5, p0, Lcom/nuance/flext9_OEM/input/IME;->mChanginglanguage:Z

    .line 2191
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getNextInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 2192
    if-nez v0, :cond_0

    .line 2193
    return-void

    .line 2204
    :cond_0
    iput-boolean v5, p0, Lcom/nuance/flext9_OEM/input/IME;->mWantToast:Z

    .line 2206
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v1

    .line 2207
    if-nez v1, :cond_1

    .line 2208
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mChanginglanguage:Z

    .line 2209
    return-void

    .line 2212
    :cond_1
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 2213
    iget v3, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 2214
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 2216
    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 2218
    :cond_2
    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    .line 2216
    if-eqz v0, :cond_5

    .line 2222
    :cond_3
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->finishInput()V

    .line 2223
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->handleClose()V

    .line 2227
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2228
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 2229
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    .line 2228
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2236
    :goto_0
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mChanginglanguage:Z

    .line 2237
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 2238
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2239
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 2240
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1e

    .line 2239
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2242
    :cond_4
    return-void

    .line 2232
    :cond_5
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->finishInput()V

    .line 2233
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-direct {p0, v0, v5, v4}, Lcom/nuance/flext9_OEM/input/IME;->setupInputView(Lcom/nuance/flext9_OEM/input/InputFieldInfo;ZZ)V

    .line 2234
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->invalidate()V

    goto :goto_0
.end method

.method private isCurrentUserAMonkey()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2486
    :try_start_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->isUserAMonkey:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2487
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->isUserAMonkey:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2486
    if-eqz v0, :cond_0

    .line 2488
    return v4

    .line 2490
    :catch_0
    move-exception v0

    .line 2494
    return v4

    .line 2497
    :cond_0
    return v3
.end method

.method private isShowWarningToast()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1359
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    if-nez v0, :cond_0

    .line 1360
    return v2

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 1365
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1366
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1367
    if-eqz v1, :cond_1

    .line 1368
    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v3, :cond_1

    .line 1369
    if-lez v0, :cond_1

    .line 1370
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->isLanguageSupportByHardKeyboard(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1371
    return v3

    .line 1375
    :cond_1
    return v2
.end method

.method private isSwitchingInputView()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1862
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 1863
    const/16 v1, 0x65

    .line 1862
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1864
    :cond_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1865
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1867
    :cond_2
    return v2
.end method

.method private launchSettings()V
    .locals 3

    .prologue
    .line 2503
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->isCurrentUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2504
    return-void

    .line 2507
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->handleClose()V

    .line 2509
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nuance/flext9_OEM/input/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2510
    const-string/jumbo v1, ":android:show_fragment"

    .line 2511
    const-class v2, Lcom/nuance/flext9_OEM/input/SettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2510
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2513
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2515
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->startActivity(Landroid/content/Intent;)V

    .line 2516
    return-void
.end method

.method private loadHardKeyboardList()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardList:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/HardKeyboardList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardList:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    .line 653
    :cond_0
    return-void
.end method

.method private loadHardKeyboardManager()V
    .locals 3

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    if-eqz v0, :cond_0

    .line 3450
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->isInitialized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3449
    if-eqz v0, :cond_3

    .line 3451
    :cond_0
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    .line 3452
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3451
    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    .line 3453
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    if-nez v0, :cond_1

    .line 3454
    return-void

    .line 3457
    :cond_1
    const v0, 0x7f050005

    .line 3459
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentHardKeyboardLayout()Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;

    move-result-object v1

    .line 3460
    if-eqz v1, :cond_2

    .line 3461
    iget v0, v1, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mLayout:I

    .line 3463
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3464
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v2, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->loadHardKeyboard(Landroid/content/res/XmlResourceParser;)Z

    .line 3465
    if-eqz v1, :cond_3

    .line 3466
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    .line 3467
    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mHardKeyboardLayoutID:Ljava/lang/String;

    .line 3466
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->setHardKeyboardLayoutID(Ljava/lang/String;)V

    .line 3470
    :cond_3
    return-void
.end method

.method private loadInputMethods(Z)V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mLocaleChanged:Z

    if-eqz v0, :cond_1

    .line 663
    :cond_0
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/InputMethods;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    .line 669
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mLocaleChanged:Z

    if-eqz v0, :cond_3

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->syncWithCurrentUserConfiguration(Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V

    .line 674
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mLocaleChanged:Z

    .line 677
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setInputLanguage(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    .line 678
    return-void
.end method

.method private loadSettings()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2519
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2521
    const-string/jumbo v3, "sound_effects_enabled"

    .line 2520
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSoundEnabled:Z

    .line 2524
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2527
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 2528
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "emojiunicode"

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2529
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2530
    const-string/jumbo v3, "!"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2531
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2533
    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 2534
    sget-object v6, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2533
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 2520
    goto :goto_0

    .line 2538
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2540
    array-length v4, v3

    move v0, v2

    .line 2541
    :goto_2
    if-ge v0, v4, :cond_2

    .line 2542
    sget-object v5, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    aget-object v6, v3, v0

    invoke-virtual {p0, v6}, Lcom/nuance/flext9_OEM/input/IME;->parseEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2541
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2545
    :cond_2
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiListDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 2546
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiListDeque:Ljava/util/ArrayDeque;

    sget-object v3, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 2547
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_3

    .line 2548
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2549
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2550
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 2555
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "vibrate_on"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mVibrateOn:Z

    .line 2556
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "sound_on"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSoundOn:Z

    .line 2562
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mShowSuggestions:Z

    .line 2563
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "language_switch_key"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mLanguageDialogOption:Z

    .line 2566
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "pref_suggest_contact_names"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2567
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsUtil;->checkAllPermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    .line 2568
    :cond_4
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSuggestContactNames:Z

    if-eq v2, v0, :cond_5

    .line 2569
    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->scheduleSync(Z)V

    .line 2570
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mSuggestContactNames:Z

    .line 2573
    :cond_5
    return-void
.end method

.method private onHardKeyEvent(ILandroid/view/KeyEvent;Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3025
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    .line 3026
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->updateInputViewShown()V

    .line 3027
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    if-eqz v0, :cond_0

    .line 3028
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->isInitialized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3027
    if-eqz v0, :cond_3

    .line 3029
    :cond_0
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    .line 3030
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3029
    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    .line 3031
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    if-nez v0, :cond_1

    .line 3032
    return v2

    .line 3035
    :cond_1
    const v0, 0x7f050005

    .line 3037
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentHardKeyboardLayout()Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;

    move-result-object v1

    .line 3038
    if-eqz v1, :cond_2

    .line 3039
    iget v0, v1, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mLayout:I

    .line 3041
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3042
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v2, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->loadHardKeyboard(Landroid/content/res/XmlResourceParser;)Z

    .line 3043
    if-eqz v1, :cond_3

    .line 3044
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    .line 3045
    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mHardKeyboardLayoutID:Ljava/lang/String;

    .line 3044
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->setHardKeyboardLayoutID(Ljava/lang/String;)V

    .line 3074
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v0, p3}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->setHardKeyEventListener(Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)V

    .line 3076
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3088
    return v0
.end method

.method public static parseEmojiLabels(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 4174
    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/IME;->getLabelSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4176
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 4177
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 4178
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 4176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4180
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private playKeyClick(I)V
    .locals 3

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2439
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->updateRingerMode()V

    .line 2442
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSoundEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSoundOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSilentMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2443
    const/4 v0, 0x5

    .line 2444
    sparse-switch p1, :sswitch_data_0

    .line 2455
    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 2457
    :cond_1
    return-void

    .line 2446
    :sswitch_0
    const/4 v0, 0x7

    .line 2447
    goto :goto_0

    .line 2449
    :sswitch_1
    const/16 v0, 0x8

    .line 2450
    goto :goto_0

    .line 2452
    :sswitch_2
    const/4 v0, 0x6

    .line 2453
    goto :goto_0

    .line 2444
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private removeAllAbortedkeys()V
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1635
    :cond_0
    return-void
.end method

.method private removeAllPendingMsgs()V
    .locals 2

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2822
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2823
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2824
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2825
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2826
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2827
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2829
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2830
    return-void
.end method

.method private removeEvent(Landroid/view/KeyEvent;)V
    .locals 3

    .prologue
    .line 3378
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3379
    :cond_0
    return-void

    .line 3380
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3381
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 3382
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3383
    return-void

    .line 3380
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3387
    :cond_3
    return-void
.end method

.method private removeFromAbortedList(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1619
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    if-eqz v0, :cond_2

    move v1, v2

    .line 1620
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1621
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAbortedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1623
    const/4 v0, 0x1

    return v0

    .line 1620
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1626
    :cond_1
    return v2

    .line 1628
    :cond_2
    return v2
.end method

.method private resetInputView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 600
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 604
    :cond_0
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    .line 605
    return-void
.end method

.method private rollBackToHWRfromHardKey()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3209
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3210
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getHandWritingInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3213
    :cond_0
    return-void

    .line 3211
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v0, :cond_0

    .line 3212
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandwritingCandidateView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3216
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->finishInput()V

    .line 3217
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    .line 3218
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandwritingCandidateView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setCandidatesView(Landroid/view/View;)V

    .line 3219
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getHandWritingInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    .line 3220
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 3219
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->setCurrentInputLanguage(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    .line 3221
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getHandWritingInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    .line 3222
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    .line 3221
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V

    .line 3223
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getHandWritingInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    .line 3224
    const/4 v1, 0x1

    .line 3223
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->showHandWritingView(Z)V

    .line 3225
    return-void
.end method

.method private runLicenseCheck()V
    .locals 0

    .prologue
    .line 3593
    return-void
.end method

.method private setCurrentInputViewName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    if-nez v1, :cond_0

    .line 354
    return-object v0

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 363
    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    const-string/jumbo v1, "Chinese.input"

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 386
    :goto_0
    return-object v0

    .line 367
    :cond_1
    const-string/jumbo v1, "Alpha.Input"

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 372
    :cond_2
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 371
    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 373
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    const-string/jumbo v1, "Chinese.HandWriting"

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 376
    :cond_3
    const-string/jumbo v1, "Chinese.input"

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 379
    :cond_4
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 380
    const-string/jumbo v1, "Alpha.HandWriting"

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0

    .line 382
    :cond_5
    const-string/jumbo v1, "Alpha.Input"

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    goto :goto_0
.end method

.method private setInputFieldInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-nez v0, :cond_0

    .line 1289
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-direct {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0, p1, p0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->setAttribute(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/flext9_OEM/input/IME;)V

    .line 1293
    return-void
.end method

.method private setInputLanguage(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    iget v1, p1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    if-eq v0, v1, :cond_1

    .line 685
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mWantToast:Z

    .line 688
    :cond_1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 691
    return-void
.end method

.method private static setLastActiveWord(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 331
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nuance/flext9_OEM/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 334
    :cond_0
    if-eqz p0, :cond_1

    .line 335
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mLastActiveWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 337
    :cond_1
    return-void
.end method

.method private setSpaceKeyAsLanguageSwitchKey()V
    .locals 2

    .prologue
    .line 1297
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1299
    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/flext9_OEM/input/KeyboardEx;Lcom/nuance/flext9_OEM/input/InputView;)V

    .line 1302
    :cond_0
    return-void
.end method

.method private setmEmojiCarsTab(Landroid/widget/ImageButton;)V
    .locals 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiCarsTab:Landroid/widget/ImageButton;

    .line 154
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiCarsTab:Landroid/widget/ImageButton;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method private setmEmojiNatureTab(Landroid/widget/ImageButton;)V
    .locals 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiNatureTab:Landroid/widget/ImageButton;

    .line 145
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiNatureTab:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method private setmEmojiObjectsTab(Landroid/widget/ImageButton;)V
    .locals 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiObjectsTab:Landroid/widget/ImageButton;

    .line 136
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiObjectsTab:Landroid/widget/ImageButton;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method private setmEmojiPeopleTab(Landroid/widget/ImageButton;)V
    .locals 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPeopleTab:Landroid/widget/ImageButton;

    .line 127
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPeopleTab:Landroid/widget/ImageButton;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method private setmEmojiPunctionsTab(Landroid/widget/ImageButton;)V
    .locals 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPunctionsTab:Landroid/widget/ImageButton;

    .line 163
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPunctionsTab:Landroid/widget/ImageButton;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method private setmEmojiRecentsTab(Landroid/widget/ImageButton;)V
    .locals 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiRecentsTab:Landroid/widget/ImageButton;

    .line 118
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiRecentsTab:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method private setmSymbolsTab(Landroid/widget/ImageButton;)V
    .locals 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsTab:Landroid/widget/ImageButton;

    .line 109
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsTab:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method private setupInputView(Lcom/nuance/flext9_OEM/input/InputFieldInfo;ZZ)V
    .locals 4

    .prologue
    const/16 v2, 0x72

    .line 950
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 951
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mLastKey:I

    .line 954
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->loadSettings()V

    .line 955
    invoke-direct {p0, p3}, Lcom/nuance/flext9_OEM/input/IME;->loadInputMethods(Z)V

    .line 957
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->loadHardKeyboardList()V

    .line 960
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->showCurrentLanguage()V

    .line 964
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->switchView()V

    .line 967
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->setCurrentInputLanguage(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    .line 968
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V

    .line 970
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->setSpaceKeyAsLanguageSwitchKey()V

    .line 971
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->setKeyboardPage()V

    .line 975
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->updateStatusBarIcon(Z)V

    .line 978
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 980
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 984
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 985
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 986
    const-wide/16 v2, 0x14

    .line 984
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 988
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isImeInTextField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 989
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->showWindow(Z)V

    .line 991
    :cond_2
    return-void
.end method

.method private showAlertMessageDialog(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2719
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2720
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2722
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2725
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2726
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2727
    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2728
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2729
    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2731
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 2732
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2733
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2735
    if-eqz v1, :cond_3

    .line 2736
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2737
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2738
    const/16 v0, 0x3eb

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2739
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2740
    const/high16 v0, 0x20000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 2743
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2744
    return-void

    .line 2721
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private showCurrentLanguage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1382
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    if-nez v0, :cond_0

    .line 1383
    return-void

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1386
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    .line 1393
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mWantToast:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isImeInTextField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1394
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mWarningIsShowing:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->isShowWarningToast()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1397
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mWantToast:Z

    .line 1401
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mWantLanguageToast:Z

    if-eqz v1, :cond_2

    .line 1402
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isImeInTextField()Z

    move-result v1

    .line 1401
    if-eqz v1, :cond_2

    .line 1403
    new-instance v1, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;

    .line 1404
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    .line 1403
    invoke-direct {v1, p0, v2, v3}, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;-><init>(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/InputMethods;Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V

    .line 1405
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;->getCount()I

    move-result v1

    .line 1408
    if-le v1, v5, :cond_2

    .line 1409
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mWantLanguageToast:Z

    .line 1410
    invoke-static {p0, v0, v4}, Lcom/nuance/flext9_OEM/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1414
    :cond_2
    return-void

    .line 1388
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 1390
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 1389
    const v2, 0x7f090192

    .line 1388
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showEULAMessageDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2747
    const-string/jumbo v0, "XT9IME"

    const-string/jumbo v1, "showEULAMessageDialog function..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2749
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2752
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2753
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2754
    new-instance v0, Lcom/nuance/flext9_OEM/input/IME$9;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/IME$9;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2764
    const v0, 0x7f020023

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2765
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0900fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2767
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2768
    const v2, 0x7f030015

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2770
    const v0, 0x7f0d003b

    .line 2769
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2772
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2773
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 2775
    new-instance v1, Lcom/nuance/flext9_OEM/input/IME$10;

    invoke-direct {v1, p0}, Lcom/nuance/flext9_OEM/input/IME$10;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2783
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2785
    if-eqz v1, :cond_1

    .line 2786
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2787
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2788
    const/16 v0, 0x3eb

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2789
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2790
    const/high16 v0, 0x20000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 2793
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2794
    return-void
.end method

.method private showLanguageMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2576
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2577
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2580
    :cond_1
    return-void

    .line 2578
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2579
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mLanguageDialogOption:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2576
    if-nez v0, :cond_1

    .line 2582
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2583
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->showWindow(Z)V

    .line 2586
    :cond_3
    new-instance v0, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;

    .line 2587
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    .line 2586
    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/flext9_OEM/input/LanguageListAdapter;-><init>(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/InputMethods;Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V

    .line 2589
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2591
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2592
    new-instance v2, Lcom/nuance/flext9_OEM/input/IME$5;

    invoke-direct {v2, p0}, Lcom/nuance/flext9_OEM/input/IME$5;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2604
    const v2, 0x7f020023

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2605
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2607
    new-instance v2, Lcom/nuance/flext9_OEM/input/IME$6;

    invoke-direct {v2, p0, v0}, Lcom/nuance/flext9_OEM/input/IME$6;-><init>(Lcom/nuance/flext9_OEM/input/IME;Lcom/nuance/flext9_OEM/input/LanguageListAdapter;)V

    .line 2606
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2638
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2639
    const v2, 0x7f090116

    .line 2638
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2641
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 2642
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2643
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2645
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2646
    const/16 v0, 0x3eb

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2648
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2649
    const/high16 v0, 0x20000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 2650
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2651
    return-void
.end method

.method private showOptionMenu()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2655
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2656
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2659
    :cond_1
    return-void

    .line 2657
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2662
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2664
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2665
    const v0, 0x7f020026

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2666
    const/high16 v0, 0x1040000

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2668
    new-instance v0, Lcom/nuance/flext9_OEM/input/IME$7;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/IME$7;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2681
    const v0, 0x7f0900fc

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2682
    const v2, 0x7f09013b

    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/IME;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2684
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2685
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2686
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2688
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 2690
    new-instance v2, Lcom/nuance/flext9_OEM/input/IME$8;

    invoke-direct {v2, p0}, Lcom/nuance/flext9_OEM/input/IME$8;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2706
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0900fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2707
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 2708
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2709
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2710
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2711
    const/16 v0, 0x3eb

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2712
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2713
    const/high16 v0, 0x20000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 2714
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2715
    return-void
.end method

.method private showShiftModeOptionDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4406
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4407
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4409
    :cond_1
    return-void

    .line 4408
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4411
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 4412
    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 4413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4414
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 4415
    const-string/jumbo v0, "abc"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4416
    const-string/jumbo v0, "Abc"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4417
    const-string/jumbo v0, "ABC"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4418
    const-string/jumbo v0, "123"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4419
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->ismKeyboardInputSuggestionOn()Z

    move-result v0

    .line 4421
    if-eqz v0, :cond_3

    .line 4422
    const-string/jumbo v0, "T9En"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4423
    const-string/jumbo v0, "T9EN"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4424
    const-string/jumbo v0, "T9en"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4439
    :cond_3
    :goto_0
    new-instance v0, Lcom/nuance/flext9_OEM/input/ShiftModeListAdapter;

    invoke-direct {v0, p0, v1}, Lcom/nuance/flext9_OEM/input/ShiftModeListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4441
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4443
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4444
    new-instance v2, Lcom/nuance/flext9_OEM/input/IME$14;

    invoke-direct {v2, p0}, Lcom/nuance/flext9_OEM/input/IME$14;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 4456
    const v2, 0x7f020023

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4457
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4459
    new-instance v2, Lcom/nuance/flext9_OEM/input/IME$15;

    invoke-direct {v2, p0, v0}, Lcom/nuance/flext9_OEM/input/IME$15;-><init>(Lcom/nuance/flext9_OEM/input/IME;Lcom/nuance/flext9_OEM/input/ShiftModeListAdapter;)V

    .line 4458
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4470
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4471
    const v2, 0x7f090191

    .line 4470
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4473
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 4474
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 4475
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4477
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4478
    const/16 v0, 0x3eb

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4480
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4481
    const/high16 v0, 0x20000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 4483
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4485
    return-void

    .line 4427
    :cond_4
    const-string/jumbo v0, "es"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4428
    const-string/jumbo v0, "Es"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4429
    const-string/jumbo v0, "ES"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4430
    const-string/jumbo v0, "123"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4431
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->ismKeyboardInputSuggestionOn()Z

    move-result v0

    .line 4433
    if-eqz v0, :cond_3

    .line 4434
    const-string/jumbo v0, "T9Es"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4435
    const-string/jumbo v0, "T9ES"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4436
    const-string/jumbo v0, "T9es"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private showWarningMessageDontSupportHardKey(Landroid/content/res/Configuration;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3757
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isImeInTextField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3758
    return v3

    .line 3760
    :cond_0
    if-eqz p1, :cond_3

    .line 3761
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_3

    .line 3762
    invoke-static {p0, v2}, Lcom/nuance/flext9_OEM/input/Settings;->getNeedShowWarningState(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3763
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    if-eqz v0, :cond_1

    .line 3764
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->isLanguageSupportByHardKeyboard(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3763
    if-eqz v0, :cond_1

    .line 3768
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3769
    const v1, 0x7f090173

    .line 3768
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3766
    invoke-static {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 3771
    invoke-static {p0, v3}, Lcom/nuance/flext9_OEM/input/Settings;->setNeedShowWarningSate(Landroid/content/Context;Z)V

    .line 3772
    return v2

    .line 3774
    :cond_1
    invoke-static {p0, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setNeedShowWarningSate(Landroid/content/Context;Z)V

    .line 3780
    :cond_2
    :goto_0
    return v3

    .line 3778
    :cond_3
    invoke-static {p0, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setNeedShowWarningSate(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private showWarningMessageDontSupportHardKey(Landroid/content/res/Configuration;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3785
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isImeInTextField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3786
    return v3

    .line 3788
    :cond_0
    if-eqz p1, :cond_3

    .line 3789
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_3

    .line 3790
    invoke-static {p0, v2}, Lcom/nuance/flext9_OEM/input/Settings;->getNeedShowWarningState(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3791
    invoke-virtual {p0, p2}, Lcom/nuance/flext9_OEM/input/IME;->isLanguageSupportByHardKeyboard(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3794
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3795
    const v1, 0x7f090173

    .line 3794
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3792
    invoke-static {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 3797
    invoke-static {p0, v3}, Lcom/nuance/flext9_OEM/input/Settings;->setNeedShowWarningSate(Landroid/content/Context;Z)V

    .line 3799
    return v2

    .line 3801
    :cond_1
    invoke-static {p0, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setNeedShowWarningSate(Landroid/content/Context;Z)V

    .line 3807
    :cond_2
    :goto_0
    return v3

    .line 3805
    :cond_3
    invoke-static {p0, v2}, Lcom/nuance/flext9_OEM/input/Settings;->setNeedShowWarningSate(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private stopLicenseCheck()V
    .locals 0

    .prologue
    .line 3597
    return-void
.end method

.method private switchFromHWRToHardkey()V
    .locals 3

    .prologue
    .line 1849
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 1851
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->finishInput()V

    .line 1852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    .line 1853
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardCandidateView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setCandidatesView(Landroid/view/View;)V

    .line 1854
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    .line 1855
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 1854
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setCurrentInputLanguage(Lcom/nuance/flext9_OEM/input/InputMethods$Language;)V

    .line 1857
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getHardKeyboardInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    .line 1858
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    const/4 v2, 0x0

    .line 1857
    invoke-virtual {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->startInput(Lcom/nuance/flext9_OEM/input/InputFieldInfo;Z)V

    .line 1859
    return-void
.end method

.method private switchView()V
    .locals 2

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->setCurrentInputViewName()Ljava/lang/String;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 769
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->createInputViewFor(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setInputView(Landroid/view/View;)V

    .line 773
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->createCandidatesViewForHardKeyInput()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardCandidateView:Landroid/view/View;

    .line 775
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->createCandidatesViewForHandwritingInput()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandwritingCandidateView:Landroid/view/View;

    .line 776
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardCandidateView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setCandidatesView(Landroid/view/View;)V

    .line 784
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->updateInputViewShown()V

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 792
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->showWindow(Z)V

    .line 800
    :cond_1
    return-void

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandwritingCandidateView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setCandidatesView(Landroid/view/View;)V

    goto :goto_0

    .line 782
    :cond_3
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->createCandidatesView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setCandidatesView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private syncHardKeyboardLayout()V
    .locals 0

    .prologue
    .line 3511
    return-void
.end method

.method private togleHwrAndKeyboardInputMode()V
    .locals 4

    .prologue
    const/16 v2, 0x65

    .line 2798
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 2800
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->toggleHandwritingAndInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    .line 2803
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2804
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v0

    .line 2803
    if-eqz v0, :cond_0

    .line 2811
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->finishInput()V

    .line 2813
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2814
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 2815
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    .line 2814
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2817
    :cond_0
    return-void
.end method

.method private updateLanguageCyclingKey(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1324
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v2

    .line 1326
    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    .line 1328
    instance-of v1, v1, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->countEnabledLanguageMode()I

    move-result v1

    if-le v1, v0, :cond_1

    move v1, v0

    .line 1331
    :goto_0
    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->updateLanguageCyclingKey(Z)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v0

    .line 1334
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1335
    invoke-virtual {v2, v0}, Lcom/nuance/flext9_OEM/input/InputView;->invalidateKey(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V

    .line 1338
    :cond_0
    return-void

    .line 1330
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2427
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAudioManager:Landroid/media/AudioManager;

    .line 2429
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 2430
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSilentMode:Z

    .line 2432
    :cond_1
    return-void

    .line 2430
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validatingLicense(Lcom/nuance/flext9_OEM/input/License;)Z
    .locals 1

    .prologue
    .line 3600
    const/4 v0, 0x1

    return v0
.end method

.method private vibrate()V
    .locals 4

    .prologue
    .line 2461
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mVibrateOn:Z

    if-nez v0, :cond_0

    .line 2462
    return-void

    .line 2464
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 2465
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mVibrator:Landroid/os/Vibrator;

    .line 2467
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    .line 2468
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mVibrator:Landroid/os/Vibrator;

    iget-wide v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mVibrateDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2470
    :cond_2
    return-void
.end method


# virtual methods
.method public assignImage(IIIIIIIIIIIIIIII)V
    .locals 3

    .prologue
    .line 4317
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4319
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4321
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiRecentsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4323
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiRecentsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4325
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPeopleTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4327
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPeopleTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4329
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiObjectsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4331
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiObjectsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4333
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiNatureTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4335
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiNatureTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4337
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiCarsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4339
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiCarsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4341
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPunctionsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4343
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPunctionsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p15

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4345
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmoticonsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4347
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmoticonsTab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4349
    return-void
.end method

.method assignVisibilityForGridandTabs(I)V
    .locals 1

    .prologue
    .line 4193
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setVisibility(I)V

    .line 4194
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPeopleEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setVisibility(I)V

    .line 4195
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mObjectEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setVisibility(I)V

    .line 4196
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mNatureEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setVisibility(I)V

    .line 4197
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPlacesEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setVisibility(I)V

    .line 4198
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setVisibility(I)V

    .line 4199
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiemoticonsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setVisibility(I)V

    .line 4200
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiRecentsTab:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4201
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPeopleTab:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4202
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiObjectsTab:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4203
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiNatureTab:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4204
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiCarsTab:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4205
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPunctionsTab:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4206
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmoticonsTab:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4207
    return-void
.end method

.method public checkEULAInfo()Z
    .locals 5

    .prologue
    const/16 v3, 0x6f

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1265
    # Wave: checkEULAInfo is (isCurrentUserAMonkey() || mBuildInfo.isOEMBuild()); both are
    # side-effect free, so on OEM builds answer true without the ActivityManager call (IPC).
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    if-eqz v0, :wave_monkey

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->isOEMBuild()Z

    move-result v0

    if-eqz v0, :wave_monkey

    return v2

    :wave_monkey
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->isCurrentUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    return v2

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->isOEMBuild()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1270
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1271
    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1272
    const-string/jumbo v1, "eula_accepted"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1274
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 1275
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 1274
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1276
    return v4

    .line 1278
    :cond_1
    return v2

    .line 1280
    :cond_2
    return v4

    .line 1282
    :cond_3
    return v2
.end method

.method public closeDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1451
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1456
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1459
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1460
    if-eqz v0, :cond_2

    .line 1461
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->handleClose()V

    .line 1463
    :cond_2
    return-void
.end method

.method public cyclingLanguage()V
    .locals 5

    .prologue
    const/16 v4, 0x70

    const/16 v2, 0x66

    const/4 v0, 0x1

    .line 3332
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mWantLanguageToast:Z

    .line 3333
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mChanginglanguage:Z

    .line 3334
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_0

    .line 3335
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 3334
    if-eqz v0, :cond_0

    .line 3336
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->rollBackToHWRfromHardKey()V

    .line 3339
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3340
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 3341
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    .line 3340
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mChanginglanguage:Z

    .line 3343
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3344
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3345
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 3346
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1e

    .line 3345
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3348
    :cond_1
    return-void
.end method

.method public dismissEmojiDialog()V
    .locals 1

    .prologue
    .line 3827
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3828
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3830
    :cond_0
    return-void
.end method

.method public getCurrentFocusedPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4355
    const-string/jumbo v0, ""

    .line 4356
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4357
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 4359
    :cond_0
    return-object v0
.end method

.method public getCurrentHardKeyboardLayout()Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;
    .locals 1

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardList:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    if-nez v0, :cond_0

    .line 3094
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->loadHardKeyboardList()V

    .line 3096
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardList:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->getCurrentHardKeyboardLayout()Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    return-object v1

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    const-string/jumbo v1, "Alpha.Hardkey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    return-object v0

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    return-object v0
.end method

.method public getDatabaseConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mDabaseConfig:Lcom/nuance/flext9_OEM/input/DatabaseConfig;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->getDatabaseConfigureFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardKeyboardManager()Lcom/nuance/flext9_OEM/input/HardKeyboardManager;
    .locals 1

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    return-object v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 803
    if-eqz v0, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getHandWritingInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    return-object v0

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 2943
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getmEmojiCarsTab()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiCarsTab:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getmEmojiNatureTab()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiNatureTab:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getmEmojiObjectsTab()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiObjectsTab:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getmEmojiPeopleTab()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPeopleTab:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getmEmojiPunctionsTab()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPunctionsTab:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getmEmojiRecentsTab()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiRecentsTab:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getmEmoticonsTab()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmoticonsTab:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getmOptionsDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getmSymbolsTab()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsTab:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public hideWindow()V
    .locals 0

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->closeDialogs()V

    .line 1447
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1448
    return-void
.end method

.method initEmojiGridView()V
    .locals 11

    .prologue
    const v10, 0x7f030024

    const/16 v9, 0x8

    const v8, 0x7f030016

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 3845
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiGridViewLoaded:Z

    if-eqz v0, :cond_0

    .line 3846
    return-void

    .line 3848
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAllEmojis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3849
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 3850
    const-string/jumbo v1, "layout_inflater"

    .line 3849
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3852
    const v1, 0x7f030013

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    .line 3854
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 3856
    const v1, 0x7f030019

    .line 3855
    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/GridEmojiView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    .line 3857
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    new-instance v4, Lcom/nuance/flext9_OEM/input/SymbolAdapter;

    invoke-direct {v4, p0, v10, v3}, Lcom/nuance/flext9_OEM/input/SymbolAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3858
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setTag(Ljava/lang/Object;)V

    .line 3861
    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/GridEmojiView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    .line 3862
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 3863
    sget-object v4, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    .line 3862
    invoke-direct {v1, v3, v10, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiAdapter:Landroid/widget/ArrayAdapter;

    .line 3864
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3865
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setTag(Ljava/lang/Object;)V

    .line 3868
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 3869
    array-length v1, v3

    new-array v4, v1, [Ljava/lang/String;

    move v1, v2

    .line 3871
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 3872
    aget-object v5, v3, v1

    invoke-virtual {p0, v5}, Lcom/nuance/flext9_OEM/input/IME;->parseEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 3873
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/IME;->mAllEmojis:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3871
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3875
    :cond_1
    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/GridEmojiView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mPeopleEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    .line 3877
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mPeopleEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v1, v4}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setArray([Ljava/lang/String;)V

    .line 3878
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mPeopleEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setTag(Ljava/lang/Object;)V

    .line 3882
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 3883
    array-length v1, v3

    new-array v4, v1, [Ljava/lang/String;

    move v1, v2

    .line 3884
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 3885
    aget-object v5, v3, v1

    invoke-virtual {p0, v5}, Lcom/nuance/flext9_OEM/input/IME;->parseEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 3886
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/IME;->mAllEmojis:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3884
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3888
    :cond_2
    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/GridEmojiView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mObjectEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    .line 3890
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mObjectEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v1, v4}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setArray([Ljava/lang/String;)V

    .line 3891
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mObjectEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setTag(Ljava/lang/Object;)V

    .line 3895
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 3896
    array-length v1, v3

    new-array v4, v1, [Ljava/lang/String;

    move v1, v2

    .line 3897
    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_3

    .line 3898
    aget-object v5, v3, v1

    invoke-virtual {p0, v5}, Lcom/nuance/flext9_OEM/input/IME;->parseEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 3899
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/IME;->mAllEmojis:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3897
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3901
    :cond_3
    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/GridEmojiView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mNatureEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    .line 3903
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mNatureEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v1, v4}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setArray([Ljava/lang/String;)V

    .line 3904
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mNatureEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setTag(Ljava/lang/Object;)V

    .line 3907
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 3908
    array-length v1, v3

    new-array v4, v1, [Ljava/lang/String;

    move v1, v2

    .line 3909
    :goto_3
    array-length v5, v3

    if-ge v1, v5, :cond_4

    .line 3910
    aget-object v5, v3, v1

    invoke-static {v5}, Lcom/nuance/flext9_OEM/input/IME;->parseEmojiLabels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 3911
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/IME;->mAllEmojis:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3909
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3913
    :cond_4
    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/GridEmojiView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mPlacesEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    .line 3915
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mPlacesEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v1, v4}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setArray([Ljava/lang/String;)V

    .line 3916
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mPlacesEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setTag(Ljava/lang/Object;)V

    .line 3919
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3920
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 3921
    :goto_4
    array-length v4, v1

    if-ge v2, v4, :cond_5

    .line 3922
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/IME;->parseEmojiLabels(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3923
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mAllEmojis:Ljava/util/ArrayList;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3921
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3925
    :cond_5
    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/GridEmojiView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    .line 3927
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setArray([Ljava/lang/String;)V

    .line 3928
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setTag(Ljava/lang/Object;)V

    .line 3930
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3932
    const v1, 0x7f030017

    .line 3931
    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/GridEmojiView;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiemoticonsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    .line 3933
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiemoticonsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setArray([Ljava/lang/String;)V

    .line 3934
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiemoticonsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setTag(Ljava/lang/Object;)V

    .line 3935
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiGridViewLoaded:Z

    .line 3938
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3940
    const v2, 0x7f030018

    .line 3939
    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/GridEmojiView;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPhoneSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    .line 3941
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPhoneSymbolsAdapter:Landroid/widget/ArrayAdapter;

    .line 3943
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPhoneSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mPhoneSymbolsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3944
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPhoneSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setTag(Ljava/lang/Object;)V

    .line 3946
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HorizontalPager;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    .line 3959
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    .line 3960
    const v1, 0x7f0d0031

    .line 3959
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3961
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setmSymbolsTab(Landroid/widget/ImageButton;)V

    .line 3962
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    .line 3963
    const v1, 0x7f0d0032

    .line 3962
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3964
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setmEmojiRecentsTab(Landroid/widget/ImageButton;)V

    .line 3965
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    .line 3966
    const v1, 0x7f0d0033

    .line 3965
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3967
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setmEmojiPeopleTab(Landroid/widget/ImageButton;)V

    .line 3968
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    .line 3969
    const v1, 0x7f0d0034

    .line 3968
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3970
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setmEmojiObjectsTab(Landroid/widget/ImageButton;)V

    .line 3971
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    .line 3972
    const v1, 0x7f0d0035

    .line 3971
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3973
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setmEmojiNatureTab(Landroid/widget/ImageButton;)V

    .line 3974
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    .line 3975
    const v1, 0x7f0d0036

    .line 3974
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3976
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setmEmojiCarsTab(Landroid/widget/ImageButton;)V

    .line 3977
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    .line 3978
    const v1, 0x7f0d0037

    .line 3977
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3979
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setmEmojiPunctionsTab(Landroid/widget/ImageButton;)V

    .line 3980
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    .line 3981
    const v1, 0x7f0d0038

    .line 3980
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3982
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->setmEmoticonsTab(Landroid/widget/ImageButton;)V

    .line 3984
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsTab:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3985
    invoke-virtual {p0, v9}, Lcom/nuance/flext9_OEM/input/IME;->assignVisibilityForGridandTabs(I)V

    .line 3987
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    const v1, 0x7f0d0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3989
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    new-instance v2, Lcom/nuance/flext9_OEM/input/IME$11;

    invoke-direct {v2, p0, v0}, Lcom/nuance/flext9_OEM/input/IME$11;-><init>(Lcom/nuance/flext9_OEM/input/IME;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->setOnScreenSwitchListener(Lcom/nuance/flext9_OEM/input/HorizontalPager$OnScreenSwitchListener;)V

    .line 4000
    new-instance v0, Lcom/nuance/flext9_OEM/input/IME$12;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/IME$12;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 4009
    new-instance v1, Lcom/nuance/flext9_OEM/input/IME$13;

    invoke-direct {v1, p0}, Lcom/nuance/flext9_OEM/input/IME$13;-><init>(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 4034
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v2, v1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4035
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v2, v1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4036
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mPeopleEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v2, v1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4037
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mObjectEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v2, v1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4038
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mNatureEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v2, v1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4039
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mPlacesEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v2, v1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4040
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v2, v1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4041
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiemoticonsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v2, v1}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4043
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsTab:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4044
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiRecentsTab:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4045
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPeopleTab:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4046
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiObjectsTab:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4047
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiNatureTab:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4048
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiCarsTab:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4049
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPunctionsTab:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4050
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmoticonsTab:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4052
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsTab:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->onClickListerner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4053
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiRecentsTab:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->onClickListerner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4054
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPeopleTab:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->onClickListerner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4055
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiObjectsTab:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->onClickListerner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4056
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiNatureTab:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->onClickListerner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4057
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiCarsTab:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->onClickListerner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4058
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiPunctionsTab:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->onClickListerner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4059
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmoticonsTab:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->onClickListerner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4061
    return-void
.end method

.method public isCurrentViewWithinBrowser()Z
    .locals 2

    .prologue
    .line 4391
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 4394
    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4395
    const-string/jumbo v1, "com.android.captiveportallogin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 4394
    if-eqz v0, :cond_2

    .line 4396
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isWebEditText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4397
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isWebEmailField()Z

    move-result v0

    .line 4396
    if-nez v0, :cond_1

    .line 4398
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isWebPasswordField()Z

    move-result v0

    .line 4394
    if-eqz v0, :cond_2

    .line 4399
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 4401
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusOnHardKey()Z
    .locals 2

    .prologue
    .line 3324
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_0

    .line 3325
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 3324
    if-eqz v0, :cond_0

    .line 3326
    const/4 v0, 0x1

    return v0

    .line 3328
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHardKeyboardCapsState()Z
    .locals 1

    .prologue
    .line 1604
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardCapsState:Z

    return v0
.end method

.method public isHardKeyboardCapsState(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1600
    const/4 v0, 0x0

    return v0
.end method

.method public isImeInTextField()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3135
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3136
    return v2

    .line 3139
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v0, :cond_1

    .line 3140
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    .line 3139
    if-eqz v0, :cond_1

    .line 3141
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 3142
    const-string/jumbo v1, "com.android.dialer"

    .line 3141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 3139
    if-eqz v0, :cond_1

    .line 3143
    return v2

    .line 3145
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v0, :cond_2

    .line 3146
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3147
    const-string/jumbo v1, "com.android.cts.stub"

    .line 3146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 3145
    if-eqz v0, :cond_2

    .line 3148
    return v2

    .line 3153
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 3154
    const-string/jumbo v1, "com.android.calculator2"

    .line 3153
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3155
    return v2

    .line 3158
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_4

    .line 3159
    return v2

    .line 3161
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public isLanguageSupportByHardKeyboard(I)Z
    .locals 1

    .prologue
    .line 3575
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardList:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    if-nez v0, :cond_0

    .line 3576
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->loadHardKeyboardList()V

    .line 3577
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardList:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    if-nez v0, :cond_1

    .line 3578
    const/4 v0, 0x0

    return v0

    .line 3579
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardList:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->isSupportLanguage(I)Z

    move-result v0

    return v0
.end method

.method public isNumLockSpecialKey(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1590
    const/4 v0, 0x0

    return v0
.end method

.method public ismForHardkeyOnly()Z
    .locals 1

    .prologue
    .line 2960
    const/4 v0, 0x0

    return v0
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1

    .prologue
    .line 1570
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1572
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1573
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1575
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mLocaleChanged:Z

    .line 618
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mLocale:Ljava/lang/String;

    .line 620
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/IME;->showWarningMessageDontSupportHardKey(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mWarningIsShowing:Z

    .line 624
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 626
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->removeAllPendingMsgs()V

    .line 630
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->destroyAllInputs()V

    .line 631
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mWarningIsShowing:Z

    .line 646
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 647
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/nuance/flext9_OEM/input/IME;->mMaxRecentEmojis:I

    .line 392
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSupportHardKeyboardOnly:Z

    .line 393
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->isUserAMonkey:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 395
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    .line 396
    const-string/jumbo v1, "isUserAMonkey"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 395
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/flext9_OEM/input/IME;->isUserAMonkey:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    :goto_0
    new-instance v0, Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/BuildInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    .line 403
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->extractDatabaseFromAssets(Lcom/nuance/flext9_OEM/input/BuildInfo;)V

    .line 405
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 406
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mLocale:Ljava/lang/String;

    .line 407
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 408
    const v1, 0x7f0a0005

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mVibrateDuration:J

    .line 409
    iput-boolean v5, p0, Lcom/nuance/flext9_OEM/input/IME;->mWantToast:Z

    .line 410
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mDontShowToast:Z

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyEvent:Ljava/util/List;

    .line 414
    invoke-static {p0, v5}, Lcom/nuance/flext9_OEM/input/Settings;->setNeedShowWarningSate(Landroid/content/Context;Z)V

    .line 416
    new-instance v0, Landroid/content/IntentFilter;

    .line 417
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    .line 416
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 422
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 421
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 425
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 426
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    .line 425
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 429
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 430
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    .line 429
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "action_ptt_call_started"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 435
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "action_ptt_alert"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 438
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 439
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->resetToolTipState()V

    .line 441
    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 442
    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->start(Landroid/content/Context;)V

    .line 444
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->initEmojiGridView()V

    .line 449
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 448
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 450
    new-instance v1, Lcom/nuance/flext9_OEM/input/IME$IncomingCallListener;

    invoke-direct {v1, p0, v3}, Lcom/nuance/flext9_OEM/input/IME$IncomingCallListener;-><init>(Lcom/nuance/flext9_OEM/input/IME;Lcom/nuance/flext9_OEM/input/IME$IncomingCallListener;)V

    .line 451
    const/16 v2, 0x20

    .line 450
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 455
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->alarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeAppList:Ljava/util/List;

    .line 458
    return-void

    .line 397
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 918
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 920
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 923
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->removeAllPendingMsgs()V

    .line 924
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->destroyAllInputs()V

    .line 932
    return-object v1
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 503
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 505
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 507
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 508
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 509
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 514
    :cond_1
    invoke-static {v7}, Lcom/nuance/flext9_OEM/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 515
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 515
    if-eqz v0, :cond_2

    .line 517
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->rollBackToHWRfromHardKey()V

    .line 520
    :cond_2
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->removeAllPendingMsgs()V

    .line 522
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 523
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move v1, v3

    .line 524
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 525
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    .line 526
    if-eqz v0, :cond_3

    .line 527
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->destroyInstance()V

    .line 524
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 532
    :cond_4
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->destroyAllInputs()V

    .line 533
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 534
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->stopLicenseCheck()V

    .line 536
    iput-object v7, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    .line 538
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->alarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 540
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 541
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 542
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 547
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    .prologue
    .line 1481
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1483
    if-eqz v0, :cond_0

    .line 1484
    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1491
    :cond_0
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 3

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 481
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    .line 484
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 485
    const v2, 0x7f0c0019

    .line 484
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 486
    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 487
    const/4 v0, 0x0

    .line 492
    :goto_0
    return v0

    .line 489
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    goto :goto_0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2973
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSupportHardKeyboardOnly:Z

    if-eqz v0, :cond_0

    .line 2980
    return v2

    .line 2987
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 2988
    if-nez v0, :cond_1

    .line 2989
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    return v0

    .line 2992
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    if-nez v1, :cond_3

    .line 2996
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    .line 2999
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->isLanguageSupportByHardKeyboard(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3001
    return v3

    .line 3003
    :cond_2
    return v2

    .line 3005
    :cond_3
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->invalidateAll()V

    .line 3011
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->isLanguageSupportByHardKeyboard(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3013
    return v3

    .line 3015
    :cond_4
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    return v0
.end method

.method public onExtractedTextClicked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1500
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 1501
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1507
    if-eqz v0, :cond_1

    .line 1508
    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 1509
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    .line 1510
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 1512
    const-string/jumbo v1, "Alpha.HandWriting"

    .line 1511
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1510
    if-eqz v0, :cond_0

    .line 1513
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->rollBackToHWRfromHardKey()V

    .line 1515
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1518
    if-eqz v0, :cond_1

    .line 1519
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->useKDBHardkey(Z)V

    .line 1522
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1524
    if-eqz v0, :cond_2

    .line 1526
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->flushCurrentActiveWord()V

    .line 1527
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->start()V

    .line 1530
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->updateInputViewShown()V

    .line 1533
    :cond_2
    return-void
.end method

.method public onFinishInput()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1148
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1151
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1152
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1154
    :cond_0
    const-string/jumbo v0, "emojiunicode"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1155
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1161
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1162
    iput-object v6, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1164
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1165
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1166
    iput-object v6, p0, Lcom/nuance/flext9_OEM/input/IME;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 1169
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1170
    :cond_4
    const-string/jumbo v0, "XT9IME"

    const-string/jumbo v1, "onFinishInput()...no input view"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    return-void

    .line 1174
    :cond_5
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->removeAllPendingMsgs()V

    .line 1176
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1178
    if-eqz v0, :cond_7

    .line 1179
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsViewNeedToPersist:Z

    if-eqz v1, :cond_6

    .line 1180
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v1

    .line 1182
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getInputModeAndShiftState()Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v2

    .line 1183
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeMap:Ljava/util/HashMap;

    .line 1184
    const-string/jumbo v4, "FlexT9PersistInputMode"

    .line 1185
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1183
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    :cond_6
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->finishInput()V

    .line 1197
    invoke-virtual {v0, v6}, Lcom/nuance/flext9_OEM/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 1199
    :cond_7
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_8

    .line 1200
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1199
    if-eqz v0, :cond_8

    .line 1201
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->rollBackToHWRfromHardKey()V

    .line 1202
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1203
    if-eqz v0, :cond_8

    .line 1204
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->finishInput()V

    .line 1205
    invoke-virtual {v0, v6}, Lcom/nuance/flext9_OEM/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/flext9_OEM/input/IME;)V

    .line 1208
    :cond_8
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 1210
    iput-boolean v7, p0, Lcom/nuance/flext9_OEM/input/IME;->mStarted:Z

    .line 1211
    invoke-virtual {p0, v7}, Lcom/nuance/flext9_OEM/input/IME;->updateStatusBarIcon(Z)V

    .line 1212
    iput-boolean v7, p0, Lcom/nuance/flext9_OEM/input/IME;->mStatusBarIconShown:Z

    .line 1213
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPressedKeyEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1214
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1219
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 2

    .prologue
    .line 1130
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1130
    if-eqz v0, :cond_0

    .line 1132
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->rollBackToHWRfromHardKey()V

    .line 1135
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1140
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 2940
    return-void
.end method

.method public onInitializeInterface()V
    .locals 1

    .prologue
    .line 466
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 468
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->runLicenseCheck()V

    .line 470
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 475
    return-void
.end method

.method public onKey(I[I)V
    .locals 11

    .prologue
    const/16 v10, 0x6b

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2059
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mStarted:Z

    if-nez v0, :cond_0

    .line 2060
    return-void

    .line 2063
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentLicense()Lcom/nuance/flext9_OEM/input/License;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->validatingLicense(Lcom/nuance/flext9_OEM/input/License;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2064
    return-void

    .line 2067
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2068
    return-void

    .line 2071
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->checkEULAInfo()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2072
    return-void

    .line 2075
    :cond_3
    invoke-static {}, Lcom/nuance/flext9_OEM/input/InputMethodToast;->hide()V

    .line 2077
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v3

    .line 2079
    if-nez v3, :cond_4

    .line 2080
    return-void

    .line 2083
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2085
    iget v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mLastKey:I

    if-ne p1, v0, :cond_7

    iget-wide v6, p0, Lcom/nuance/flext9_OEM/input/IME;->mLastKeyTime:J

    .line 2086
    const-wide/16 v8, 0x2ee

    .line 2085
    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mQuickPressed:Z

    .line 2087
    iput-wide v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mLastKeyTime:J

    .line 2088
    iput p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mLastKey:I

    .line 2090
    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2091
    invoke-virtual {v3, v2}, Lcom/nuance/flext9_OEM/input/InputView;->useKDBHardkey(Z)V

    .line 2095
    :cond_5
    iget v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mRepeatedKeyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mRepeatedKeyCount:I

    .line 2102
    sparse-switch p1, :sswitch_data_0

    .line 2184
    invoke-virtual {v3, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->handleCharKey(I[I)V

    .line 2186
    :cond_6
    :goto_1
    return-void

    :cond_7
    move v0, v2

    .line 2085
    goto :goto_0

    .line 2106
    :sswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 2107
    :cond_8
    const/4 v0, -0x3

    invoke-virtual {v3, v0, v2, v1}, Lcom/nuance/flext9_OEM/input/InputView;->handleKey(IZI)Z

    goto :goto_1

    .line 2113
    :sswitch_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->showOptionMenu()V

    goto :goto_1

    .line 2118
    :sswitch_2
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->showLanguageMenu()V

    goto :goto_1

    .line 2123
    :sswitch_3
    const/4 v0, -0x2

    invoke-virtual {v3, v0, v2, v1}, Lcom/nuance/flext9_OEM/input/InputView;->handleKey(IZI)Z

    goto :goto_1

    .line 2128
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->showEmojilayout()V

    goto :goto_1

    .line 2133
    :sswitch_5
    iget v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mRepeatedKeyCount:I

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->handleBackspace(I)V

    goto :goto_1

    .line 2138
    :sswitch_6
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mQuickPressed:Z

    iget v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mRepeatedKeyCount:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->handleSpace(ZI)V

    goto :goto_1

    .line 2143
    :sswitch_7
    const/4 v0, -0x1

    invoke-virtual {v3, v0, v2, v1}, Lcom/nuance/flext9_OEM/input/InputView;->handleKey(IZI)Z

    goto :goto_1

    .line 2148
    :sswitch_8
    const/16 v0, -0x13

    invoke-virtual {v3, v0, v2, v1}, Lcom/nuance/flext9_OEM/input/InputView;->handleKey(IZI)Z

    .line 2150
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->setSpaceKeyAsLanguageSwitchKey()V

    goto :goto_1

    .line 2155
    :sswitch_9
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->handleXT9LanguageCyclingKey()V

    goto :goto_1

    .line 2160
    :sswitch_a
    const/16 v0, -0x15

    invoke-virtual {v3, v0, v2, v1}, Lcom/nuance/flext9_OEM/input/InputView;->handleKey(IZI)Z

    goto :goto_1

    .line 2165
    :sswitch_b
    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputView;->getCurrentDefaultWord()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 2166
    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputView;->clearCurrentActiveWord()V

    .line 2167
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2168
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    .line 2169
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    .line 2168
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 2173
    :sswitch_c
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mQuickPressed:Z

    iget v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mRepeatedKeyCount:I

    invoke-virtual {v3, p1, v0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->handleKey(IZI)Z

    goto :goto_1

    .line 2177
    :sswitch_d
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->handleSwitchPage()V

    goto :goto_1

    .line 2181
    :sswitch_e
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->showShiftModeOptionDialog()V

    goto/16 :goto_1

    .line 2102
    :sswitch_data_0
    .sparse-switch
        -0x3e9 -> :sswitch_e
        -0x65 -> :sswitch_2
        -0x64 -> :sswitch_1
        -0x18 -> :sswitch_d
        -0x15 -> :sswitch_a
        -0x14 -> :sswitch_9
        -0x13 -> :sswitch_8
        -0xb -> :sswitch_4
        -0x9 -> :sswitch_c
        -0x8 -> :sswitch_b
        -0x7 -> :sswitch_b
        -0x5 -> :sswitch_5
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_7
        0x20 -> :sswitch_6
    .end sparse-switch
.end method

.method private onKeyDown$wave(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/16 v6, 0x13

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1647
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isImeInTextField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1648
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1650
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->isSwitchingInputView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1653
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/IME;->addToAbortedList(I)V

    .line 1654
    return v3

    .line 1658
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->removeAllAbortedkeys()V

    .line 1660
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1662
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->isMiniKeyboardShown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1668
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_2

    .line 1669
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1671
    :cond_2
    const/16 v1, 0x43

    if-ne p1, v1, :cond_3

    .line 1672
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->dismissPopupKeyboard()V

    .line 1673
    return v3

    .line 1675
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->miniKeyboardOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1678
    :cond_4
    instance-of v0, v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    if-nez v0, :cond_7

    .line 1679
    if-eq p1, v5, :cond_5

    .line 1682
    const/16 v0, 0x17

    if-ne p1, v0, :cond_6

    .line 1686
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1683
    :cond_6
    const/16 v0, 0x14

    if-eq p1, v0, :cond_5

    .line 1684
    if-eq p1, v6, :cond_5

    .line 1685
    const/16 v0, 0x15

    if-eq p1, v0, :cond_5

    const/16 v0, 0x16

    if-eq p1, v0, :cond_5

    .line 1688
    :cond_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v0, :cond_a

    .line 1689
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1690
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    .line 1689
    if-nez v0, :cond_8

    .line 1690
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    .line 1688
    if-eqz v0, :cond_a

    .line 1692
    :cond_8
    const/16 v0, 0x11

    if-ne p1, v0, :cond_9

    .line 1695
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/NonTouchUtils;->isDeviceNonTouchAnd12Key(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1696
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    .line 1697
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->updateInputViewShown()V

    .line 1698
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1703
    :cond_9
    const/16 v0, 0x12

    if-ne p1, v0, :cond_a

    .line 1705
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    .line 1706
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->updateInputViewShown()V

    .line 1707
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1710
    :cond_a
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentLicense()Lcom/nuance/flext9_OEM/input/License;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->validatingLicense(Lcom/nuance/flext9_OEM/input/License;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1711
    return v3

    .line 1714
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->checkEULAInfo()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1715
    return v3

    .line 1718
    :cond_c
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mStarted:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1719
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1721
    :cond_e
    invoke-virtual {p0, p2}, Lcom/nuance/flext9_OEM/input/IME;->isHardKeyboardCapsState(Landroid/view/KeyEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardCapsState:Z

    .line 1723
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v1

    .line 1724
    if-nez v1, :cond_f

    .line 1725
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1728
    :cond_f
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->isLanguageSupportByHardKeyboard(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    .line 1729
    instance-of v0, v1, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    if-eqz v0, :cond_10

    move-object v0, v1

    .line 1730
    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getmAlphaWordListView()Lcom/nuance/flext9_OEM/input/CandidatesListView;

    move-result-object v0

    if-eqz v0, :cond_10

    move-object v0, v1

    .line 1731
    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getmAlphaWordListView()Lcom/nuance/flext9_OEM/input/CandidatesListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_10

    move-object v0, v1

    .line 1733
    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 1737
    :cond_10
    instance-of v0, v1, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    if-eqz v0, :cond_11

    .line 1738
    check-cast v1, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/AlphaHandWritingInputView;->flushCurrentActiveWord()V

    .line 1742
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1745
    :cond_12
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_13

    .line 1746
    if-ne p1, v5, :cond_15

    .line 1748
    :cond_13
    if-ne p1, v5, :cond_14

    .line 1749
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->hideWindow()V

    .line 1751
    :cond_14
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1747
    :cond_15
    const/16 v0, 0x17

    if-eq p1, v0, :cond_13

    .line 1754
    invoke-virtual {p0, p2}, Lcom/nuance/flext9_OEM/input/IME;->isNumLockSpecialKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1755
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1757
    :cond_16
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-nez v0, :cond_17

    .line 1758
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v2, "Alpha.HandWriting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1757
    if-eqz v0, :cond_17

    .line 1759
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->switchFromHWRToHardkey()V

    .line 1760
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v1

    .line 1761
    if-nez v1, :cond_17

    .line 1762
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1767
    :cond_17
    const/16 v0, 0x15

    if-eq p1, v0, :cond_18

    .line 1768
    const/16 v0, 0x16

    if-ne p1, v0, :cond_19

    .line 1771
    :cond_18
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->isAllWindowClosed:Z

    if-eqz v0, :cond_1d

    .line 1772
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1769
    :cond_19
    if-eq p1, v6, :cond_18

    .line 1770
    const/16 v0, 0x14

    if-eq p1, v0, :cond_18

    .line 1782
    :cond_1a
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    .line 1810
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1811
    invoke-virtual {v1, v3}, Lcom/nuance/flext9_OEM/input/InputView;->useKDBHardkey(Z)V

    .line 1814
    :cond_1b
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/IME;->addEvent(Landroid/view/KeyEvent;)V

    .line 1816
    if-eqz v1, :cond_21

    .line 1817
    instance-of v0, v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    .line 1816
    if-eqz v0, :cond_21

    .line 1818
    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    .line 1819
    invoke-direct {p0, p1, p2, v1}, Lcom/nuance/flext9_OEM/input/IME;->onHardKeyEvent(ILandroid/view/KeyEvent;Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1820
    const/16 v0, 0x42

    if-ne p1, v0, :cond_20

    .line 1826
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v0

    if-eq v0, v5, :cond_1c

    .line 1827
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isCurrentViewWithinBrowser()Z

    move-result v0

    .line 1826
    if-eqz v0, :cond_1f

    .line 1828
    :cond_1c
    return v3

    .line 1773
    :cond_1d
    instance-of v0, v1, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    if-eqz v0, :cond_1a

    move-object v0, v1

    .line 1774
    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getmAlphaWordListView()Lcom/nuance/flext9_OEM/input/CandidatesListView;

    move-result-object v0

    if-eqz v0, :cond_1e

    move-object v0, v1

    .line 1775
    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getmAlphaWordListView()Lcom/nuance/flext9_OEM/input/CandidatesListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-ge v0, v3, :cond_1a

    .line 1777
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1831
    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1834
    :cond_20
    return v3

    .line 1843
    :cond_21
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1639
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private onKeyUp$wave(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/16 v5, 0x13

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1899
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isImeInTextField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1900
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1902
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->isSwitchingInputView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1903
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/IME;->removeFromAbortedList(I)Z

    .line 1904
    return v2

    .line 1905
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/IME;->removeFromAbortedList(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1906
    return v2

    .line 1908
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1911
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->isMiniKeyboardShown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1917
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_3

    .line 1918
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1920
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->miniKeyboardOnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1923
    :cond_4
    instance-of v0, v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    if-nez v0, :cond_7

    .line 1924
    if-eq p1, v4, :cond_5

    .line 1927
    const/16 v0, 0x17

    if-ne p1, v0, :cond_6

    .line 1931
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1928
    :cond_6
    const/16 v0, 0x14

    if-eq p1, v0, :cond_5

    .line 1929
    if-eq p1, v5, :cond_5

    .line 1930
    const/16 v0, 0x15

    if-eq p1, v0, :cond_5

    const/16 v0, 0x16

    if-eq p1, v0, :cond_5

    .line 1933
    :cond_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v0, :cond_a

    .line 1934
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1935
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    .line 1934
    if-nez v0, :cond_8

    .line 1935
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    .line 1933
    if-eqz v0, :cond_a

    .line 1937
    :cond_8
    const/16 v0, 0x11

    if-eq p1, v0, :cond_9

    .line 1938
    const/16 v0, 0x12

    if-ne p1, v0, :cond_a

    .line 1940
    :cond_9
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    .line 1941
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->updateInputViewShown()V

    .line 1942
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1947
    :cond_a
    invoke-virtual {p0, p2}, Lcom/nuance/flext9_OEM/input/IME;->isHardKeyboardCapsState(Landroid/view/KeyEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardCapsState:Z

    .line 1952
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/IME;->removeEvent(Landroid/view/KeyEvent;)V

    .line 1954
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputLanguage:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->isLanguageSupportByHardKeyboard(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    .line 1955
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1958
    :cond_b
    invoke-virtual {p0, p2}, Lcom/nuance/flext9_OEM/input/IME;->isNumLockSpecialKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1959
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1962
    :cond_c
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_d

    .line 1963
    if-ne p1, v4, :cond_e

    .line 1965
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1964
    :cond_e
    const/16 v0, 0x17

    if-eq p1, v0, :cond_d

    .line 1967
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-nez v0, :cond_f

    .line 1968
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1967
    if-eqz v0, :cond_f

    .line 1970
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->switchFromHWRToHardkey()V

    .line 1973
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v1

    .line 1974
    if-nez v1, :cond_10

    .line 1975
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1979
    :cond_10
    const/16 v0, 0x15

    if-eq p1, v0, :cond_11

    .line 1980
    const/16 v0, 0x16

    if-ne p1, v0, :cond_12

    .line 1983
    :cond_11
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->isAllWindowClosed:Z

    if-eqz v0, :cond_14

    .line 1984
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1981
    :cond_12
    if-eq p1, v5, :cond_11

    .line 1982
    const/16 v0, 0x14

    if-eq p1, v0, :cond_11

    .line 1994
    :cond_13
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    .line 2021
    if-eqz v1, :cond_18

    .line 2022
    instance-of v0, v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    .line 2021
    if-eqz v0, :cond_18

    .line 2023
    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    .line 2024
    invoke-direct {p0, p1, p2, v1}, Lcom/nuance/flext9_OEM/input/IME;->onHardKeyEvent(ILandroid/view/KeyEvent;Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2025
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/IME;->updateStatusBarIcon(Z)V

    .line 2026
    const/16 v0, 0x42

    if-ne p1, v0, :cond_17

    .line 2040
    invoke-static {}, Lcom/nuance/flext9_OEM/input/EditState;->current()I

    move-result v0

    if-nez v0, :cond_16

    .line 2041
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1985
    :cond_14
    instance-of v0, v1, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    if-eqz v0, :cond_13

    move-object v0, v1

    .line 1986
    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getmAlphaWordListView()Lcom/nuance/flext9_OEM/input/CandidatesListView;

    move-result-object v0

    if-eqz v0, :cond_15

    move-object v0, v1

    .line 1987
    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getmAlphaWordListView()Lcom/nuance/flext9_OEM/input/CandidatesListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->wordCount()I

    move-result v0

    if-ge v0, v2, :cond_13

    .line 1989
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2043
    :cond_16
    return v2

    .line 2046
    :cond_17
    return v2

    .line 2051
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMultitapTimeout()V
    .locals 1

    .prologue
    .line 2336
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 2337
    if-nez v0, :cond_0

    .line 2338
    return-void

    .line 2340
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->onMultitapTimeout()V

    .line 2341
    return-void
.end method

.method public onPress(I)V
    .locals 1

    .prologue
    .line 2323
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->vibrate()V

    .line 2324
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/IME;->playKeyClick(I)V

    .line 2328
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mRepeatedKeyCount:I

    .line 2329
    return-void
.end method

.method public onRelease(I)V
    .locals 0

    .prologue
    .line 2333
    return-void
.end method

.method public onShowInputRequested(IZ)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3166
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 3167
    if-nez v0, :cond_0

    .line 3168
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v0

    return v0

    .line 3170
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3175
    if-eqz v1, :cond_3

    .line 3176
    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_3

    .line 3177
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    .line 3178
    instance-of v1, v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    if-eqz v1, :cond_1

    .line 3179
    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->setBackLayout()V

    .line 3181
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_2

    .line 3182
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 3183
    const-string/jumbo v1, "Alpha.HandWriting"

    .line 3182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 3181
    if-eqz v0, :cond_2

    .line 3184
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->rollBackToHWRfromHardKey()V

    .line 3186
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 3189
    if-eqz v0, :cond_3

    .line 3190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->useKDBHardkey(Z)V

    .line 3193
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->updateInputViewShown()V

    .line 3194
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v0

    return v0
.end method

.method private onStartInput$wave(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 999
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 999
    if-eqz v0, :cond_0

    .line 1001
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->rollBackToHWRfromHardKey()V

    .line 1003
    :cond_0
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_4

    .line 1004
    iput-boolean v7, p0, Lcom/nuance/flext9_OEM/input/IME;->mStatusBarIconShown:Z

    .line 1009
    :goto_0
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/IME;->setInputFieldInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1010
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-direct {p0, v0, p2, v7}, Lcom/nuance/flext9_OEM/input/IME;->setupInputView(Lcom/nuance/flext9_OEM/input/InputFieldInfo;ZZ)V

    .line 1012
    iput-boolean v7, p0, Lcom/nuance/flext9_OEM/input/IME;->mStarted:Z

    .line 1014
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->checkTrialBuildInfo()V

    .line 1015
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    if-eqz v0, :cond_2

    .line 1016
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardList:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    if-nez v0, :cond_1

    .line 1017
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->loadHardKeyboardList()V

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardList:Lcom/nuance/flext9_OEM/input/HardKeyboardList;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardList;->getCurrentHardKeyboardLayout()Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;

    move-result-object v0

    .line 1023
    if-nez v0, :cond_5

    .line 1024
    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    .line 1035
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1036
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->showWarningMessageDontSupportHardKey(Landroid/content/res/Configuration;)Z

    .line 1040
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1041
    const v1, 0x7f090193

    .line 1040
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1043
    const-string/jumbo v1, ""

    .line 1044
    const-string/jumbo v0, ""

    .line 1045
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v2, :cond_c

    .line 1046
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v1

    .line 1047
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    .line 1049
    :goto_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeAppList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 1050
    const-string/jumbo v0, "FlexT9PersistInputMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1049
    :goto_3
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsViewNeedToPersist:Z

    .line 1051
    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1052
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1051
    if-eqz v0, :cond_8

    .line 1053
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1054
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    if-eqz v1, :cond_3

    .line 1055
    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    .line 1056
    if-eqz v0, :cond_3

    .line 1057
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->setInputModeToNumDefault()V

    .line 1089
    :cond_3
    :goto_4
    return-void

    .line 1006
    :cond_4
    invoke-virtual {p0, v3}, Lcom/nuance/flext9_OEM/input/IME;->updateStatusBarIcon(Z)V

    .line 1007
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mStatusBarIconShown:Z

    goto/16 :goto_0

    .line 1026
    :cond_5
    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeyboardList$HardKeyboardLayout;->mHardKeyboardLayoutID:Ljava/lang/String;

    .line 1027
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->getHardKeyboardLayoutID()Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1029
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->resetKeyboardState()V

    goto :goto_1

    .line 1031
    :cond_6
    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    goto :goto_1

    :cond_7
    move v0, v3

    .line 1049
    goto :goto_3

    .line 1060
    :cond_8
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsViewNeedToPersist:Z

    if-eqz v0, :cond_3

    .line 1061
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_3

    instance-of v5, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    if-eqz v5, :cond_3

    .line 1063
    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    .line 1065
    const-string/jumbo v5, "FlexT9PersistInputMode"

    .line 1064
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1066
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 1068
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1069
    if-nez v1, :cond_9

    .line 1070
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    if-eqz v1, :cond_b

    .line 1072
    const-string/jumbo v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1073
    array-length v6, v1

    if-le v6, v7, :cond_a

    .line 1074
    aget-object v2, v1, v3

    .line 1075
    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1077
    :goto_5
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeMap:Ljava/util/HashMap;

    .line 1078
    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v4, v2, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1077
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1085
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->updateInputMode(Ljava/lang/String;I)V

    goto :goto_4

    .line 1081
    :cond_9
    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1082
    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_6

    :cond_a
    move-object v1, v2

    move-object v2, v4

    goto :goto_5

    :cond_b
    move-object v1, v2

    move-object v2, v4

    goto :goto_6

    :cond_c
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_2
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1098
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1104
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_0

    .line 1105
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mStatusBarIconShown:Z

    .line 1111
    :goto_0
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mStarted:Z

    .line 1113
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/IME;->setInputFieldInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1114
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-direct {p0, v0, p2, v2}, Lcom/nuance/flext9_OEM/input/IME;->setupInputView(Lcom/nuance/flext9_OEM/input/InputFieldInfo;ZZ)V

    .line 1117
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->checkTrialBuildInfo()V

    .line 1122
    return-void

    .line 1107
    :cond_0
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/IME;->updateStatusBarIcon(Z)V

    .line 1108
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mStatusBarIconShown:Z

    goto :goto_0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 2275
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mStarted:Z

    if-nez v0, :cond_0

    .line 2276
    return-void

    .line 2279
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2280
    return-void

    .line 2283
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->checkEULAInfo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2284
    return-void

    .line 2287
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 2288
    if-nez v0, :cond_3

    .line 2289
    return-void

    .line 2291
    :cond_3
    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->onText(Ljava/lang/CharSequence;)V

    .line 2292
    return-void
.end method

.method public onTrace(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2345
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mStarted:Z

    if-nez v0, :cond_0

    .line 2346
    return-void

    .line 2349
    :cond_0
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentLicense()Lcom/nuance/flext9_OEM/input/License;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->validatingLicense(Lcom/nuance/flext9_OEM/input/License;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2350
    return-void

    .line 2353
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mBuildInfo:Lcom/nuance/flext9_OEM/input/BuildInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2354
    return-void

    .line 2356
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->checkEULAInfo()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2357
    return-void

    .line 2359
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 2360
    if-nez v0, :cond_4

    .line 2361
    return-void

    .line 2365
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2366
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->useKDBHardkey(Z)V

    .line 2370
    :cond_5
    invoke-virtual {v0, p1}, Lcom/nuance/flext9_OEM/input/InputView;->handleTrace(Ljava/util/ArrayList;)V

    .line 2371
    return-void
.end method

.method public onUnbindInput()V
    .locals 2

    .prologue
    .line 1873
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    .line 1874
    if-eqz v0, :cond_0

    .line 1875
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->onApplicationUnbind()V

    .line 1877
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mFocusOnHardKeyBoard:Z

    if-eqz v0, :cond_1

    .line 1878
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    const-string/jumbo v1, "Alpha.HandWriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1877
    if-eqz v0, :cond_1

    .line 1879
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->rollBackToHWRfromHardKey()V

    .line 1881
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 1882
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2

    .prologue
    .line 1538
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 1540
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1541
    :cond_0
    const-string/jumbo v0, "XT9IME"

    const-string/jumbo v1, "onUpdateSelection()...no input view"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    return-void

    .line 1540
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/InputView;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 1547
    return-void
.end method

.method private onUpdateSelection$wave(IIIIII)V
    .locals 7

    .prologue
    .line 1421
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 1428
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1430
    :cond_0
    const-string/jumbo v0, "XT9IME"

    const-string/jumbo v1, "onUpdateSelection()...no input view"

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    return-void

    .line 1428
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1436
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/flext9_OEM/input/InputView;->updateSelection(IIIIII)V

    .line 1442
    return-void
.end method

.method public onWindowHidden()V
    .locals 1

    .prologue
    .line 3124
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 3125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->isAllWindowClosed:Z

    .line 3126
    return-void
.end method

.method public onWindowShown()V
    .locals 1

    .prologue
    .line 3130
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 3131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->isAllWindowClosed:Z

    .line 3132
    return-void
.end method

.method public parseEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4167
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 4168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 4169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public populateRecentEmojilist(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3812
    sget v0, Lcom/nuance/flext9_OEM/input/IME;->mMaxRecentEmojis:I

    .line 3813
    sget-object v1, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiListDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3814
    sget-object v1, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiListDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    .line 3816
    :cond_0
    sget-object v1, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiListDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 3817
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiListDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 3819
    :cond_1
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiListDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 3820
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3821
    sget-object v0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojilist:Ljava/util/List;

    sget-object v1, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiListDeque:Ljava/util/ArrayDeque;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3823
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojiAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 3824
    return-void
.end method

.method public refreshLanguageOnSpaceKey(Lcom/nuance/flext9_OEM/input/KeyboardEx;Lcom/nuance/flext9_OEM/input/InputView;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1305
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    if-eqz v1, :cond_1

    .line 1308
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isInputTextClass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->countEnabledLanguageMode()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    .line 1314
    :cond_0
    check-cast p1, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {p1, v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->setSpaceKeyAsLanguageSwitchKey(Ljava/lang/CharSequence;)Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;

    move-result-object v0

    .line 1316
    if-eqz v0, :cond_1

    .line 1317
    invoke-virtual {p2, v0}, Lcom/nuance/flext9_OEM/input/InputView;->invalidateKey(Lcom/nuance/flext9_OEM/input/KeyboardEx$Key;)V

    .line 1320
    :cond_1
    return-void
.end method

.method public sendBackspace(I)V
    .locals 2

    .prologue
    const/16 v1, 0x43

    .line 2296
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/IME;->sendDownUpKeyEvents(I)V

    .line 2298
    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 2299
    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/IME;->sendDownUpKeyEvents(I)V

    .line 2301
    :cond_0
    return-void
.end method

.method public sendSpace()V
    .locals 1

    .prologue
    .line 2304
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->sendKeyChar(C)V

    .line 2305
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1

    .prologue
    .line 1552
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mShowSuggestions:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNoSuggestionOnField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1553
    :cond_0
    const/4 p1, 0x0

    .line 1563
    :cond_1
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 1565
    return-void
.end method

.method public setFocusForcategory(I)V
    .locals 18

    .prologue
    .line 4210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 4211
    invoke-virtual {v1}, Landroid/widget/GridView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4212
    if-nez v1, :cond_1

    .line 4213
    const v2, 0x7f020040

    .line 4214
    const v3, 0x7f02003c

    .line 4215
    const v4, 0x7f020032

    .line 4216
    const v5, 0x7f02002f

    .line 4217
    const v6, 0x7f02002c

    .line 4218
    const v7, 0x7f020035

    .line 4219
    const v8, 0x7f020044

    .line 4220
    const v9, 0x7f02003f

    .line 4221
    const v11, 0x7f0b0003

    .line 4222
    const v12, 0x7f0b0003

    const v13, 0x7f0b0003

    const v14, 0x7f0b0003

    const v15, 0x7f0b0003

    .line 4223
    const v16, 0x7f0b0003

    const v17, 0x7f0b0003

    move-object/from16 v1, p0

    move/from16 v10, p1

    .line 4213
    invoke-virtual/range {v1 .. v17}, Lcom/nuance/flext9_OEM/input/IME;->assignImage(IIIIIIIIIIIIIIII)V

    .line 4311
    :cond_0
    :goto_0
    return-void

    .line 4224
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4225
    const v2, 0x7f020041

    .line 4226
    const v3, 0x7f02003a

    .line 4227
    const v4, 0x7f020032

    .line 4228
    const v5, 0x7f02002f

    .line 4229
    const v6, 0x7f02002c

    .line 4230
    const v7, 0x7f020035

    .line 4231
    const v8, 0x7f020044

    .line 4232
    const v9, 0x7f02003f

    const v10, 0x7f0b0003

    .line 4233
    const v12, 0x7f0b0003

    .line 4234
    const v13, 0x7f0b0003

    const v14, 0x7f0b0003

    const v15, 0x7f0b0003

    const v16, 0x7f0b0003

    .line 4235
    const v17, 0x7f0b0003

    move-object/from16 v1, p0

    move/from16 v11, p1

    .line 4225
    invoke-virtual/range {v1 .. v17}, Lcom/nuance/flext9_OEM/input/IME;->assignImage(IIIIIIIIIIIIIIII)V

    goto :goto_0

    .line 4236
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 4237
    const v2, 0x7f020041

    .line 4238
    const v3, 0x7f02003c

    .line 4239
    const v4, 0x7f020030

    .line 4240
    const v5, 0x7f02002f

    .line 4241
    const v6, 0x7f02002c

    .line 4242
    const v7, 0x7f020035

    .line 4243
    const v8, 0x7f020044

    .line 4244
    const v9, 0x7f02003f

    const v10, 0x7f0b0003

    .line 4245
    const v11, 0x7f0b0003

    .line 4246
    const v13, 0x7f0b0003

    const v14, 0x7f0b0003

    const v15, 0x7f0b0003

    const v16, 0x7f0b0003

    .line 4247
    const v17, 0x7f0b0003

    move-object/from16 v1, p0

    move/from16 v12, p1

    .line 4237
    invoke-virtual/range {v1 .. v17}, Lcom/nuance/flext9_OEM/input/IME;->assignImage(IIIIIIIIIIIIIIII)V

    goto :goto_0

    .line 4248
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 4249
    const v2, 0x7f020041

    .line 4250
    const v3, 0x7f02003c

    .line 4251
    const v4, 0x7f020032

    .line 4252
    const v5, 0x7f02002d

    .line 4253
    const v6, 0x7f02002c

    .line 4254
    const v7, 0x7f020035

    .line 4255
    const v8, 0x7f020044

    .line 4256
    const v9, 0x7f02003f

    const v10, 0x7f0b0003

    .line 4257
    const v11, 0x7f0b0003

    const v12, 0x7f0b0003

    .line 4258
    const v14, 0x7f0b0003

    .line 4259
    const v15, 0x7f0b0003

    const v16, 0x7f0b0003

    const v17, 0x7f0b0003

    move-object/from16 v1, p0

    move/from16 v13, p1

    .line 4249
    invoke-virtual/range {v1 .. v17}, Lcom/nuance/flext9_OEM/input/IME;->assignImage(IIIIIIIIIIIIIIII)V

    goto/16 :goto_0

    .line 4260
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 4261
    const v2, 0x7f020041

    .line 4262
    const v3, 0x7f02003c

    .line 4263
    const v4, 0x7f020032

    .line 4264
    const v5, 0x7f02002f

    .line 4265
    const v6, 0x7f02002a

    .line 4266
    const v7, 0x7f020035

    .line 4267
    const v8, 0x7f020044

    .line 4268
    const v9, 0x7f02003f

    const v10, 0x7f0b0003

    .line 4269
    const v11, 0x7f0b0003

    const v12, 0x7f0b0003

    const v13, 0x7f0b0003

    .line 4270
    const v15, 0x7f0b0003

    .line 4271
    const v16, 0x7f0b0003

    const v17, 0x7f0b0003

    move-object/from16 v1, p0

    move/from16 v14, p1

    .line 4261
    invoke-virtual/range {v1 .. v17}, Lcom/nuance/flext9_OEM/input/IME;->assignImage(IIIIIIIIIIIIIIII)V

    goto/16 :goto_0

    .line 4272
    :cond_5
    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 4273
    const v2, 0x7f020041

    .line 4274
    const v3, 0x7f02003c

    .line 4275
    const v4, 0x7f020032

    .line 4276
    const v5, 0x7f02002f

    .line 4277
    const v6, 0x7f02002c

    .line 4278
    const v7, 0x7f020033

    .line 4279
    const v8, 0x7f020044

    .line 4280
    const v9, 0x7f02003f

    const v10, 0x7f0b0003

    .line 4281
    const v11, 0x7f0b0003

    const v12, 0x7f0b0003

    const v13, 0x7f0b0003

    const v14, 0x7f0b0003

    .line 4282
    const v16, 0x7f0b0003

    .line 4283
    const v17, 0x7f0b0003

    move-object/from16 v1, p0

    move/from16 v15, p1

    .line 4273
    invoke-virtual/range {v1 .. v17}, Lcom/nuance/flext9_OEM/input/IME;->assignImage(IIIIIIIIIIIIIIII)V

    goto/16 :goto_0

    .line 4285
    :cond_6
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 4286
    const v2, 0x7f020041

    .line 4287
    const v3, 0x7f02003c

    .line 4288
    const v4, 0x7f020032

    .line 4289
    const v5, 0x7f02002f

    .line 4290
    const v6, 0x7f02002c

    .line 4291
    const v7, 0x7f020035

    .line 4292
    const v8, 0x7f020042

    .line 4293
    const v9, 0x7f02003f

    const v10, 0x7f0b0003

    .line 4294
    const v11, 0x7f0b0003

    const v12, 0x7f0b0003

    const v13, 0x7f0b0003

    const v14, 0x7f0b0003

    .line 4295
    const v15, 0x7f0b0003

    .line 4296
    const v17, 0x7f0b0003

    move-object/from16 v1, p0

    move/from16 v16, p1

    .line 4286
    invoke-virtual/range {v1 .. v17}, Lcom/nuance/flext9_OEM/input/IME;->assignImage(IIIIIIIIIIIIIIII)V

    goto/16 :goto_0

    .line 4298
    :cond_7
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 4299
    const v2, 0x7f020041

    .line 4300
    const v3, 0x7f02003c

    .line 4301
    const v4, 0x7f020032

    .line 4302
    const v5, 0x7f02002f

    .line 4303
    const v6, 0x7f02002c

    .line 4304
    const v7, 0x7f020035

    .line 4305
    const v8, 0x7f020044

    .line 4306
    const v9, 0x7f02003e

    const v10, 0x7f0b0003

    .line 4307
    const v11, 0x7f0b0003

    const v12, 0x7f0b0003

    const v13, 0x7f0b0003

    const v14, 0x7f0b0003

    .line 4308
    const v15, 0x7f0b0003

    const v16, 0x7f0b0003

    move-object/from16 v1, p0

    move/from16 v17, p1

    .line 4299
    invoke-virtual/range {v1 .. v17}, Lcom/nuance/flext9_OEM/input/IME;->assignImage(IIIIIIIIIIIIIIII)V

    goto/16 :goto_0
.end method

.method public setmEmoticonsTab(Landroid/widget/ImageButton;)V
    .locals 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmoticonsTab:Landroid/widget/ImageButton;

    .line 172
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmoticonsTab:Landroid/widget/ImageButton;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public setmIsInputViewShown(Z)V
    .locals 0

    .prologue
    .line 2967
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsInputViewShown:Z

    .line 2968
    return-void
.end method

.method public setmOptionsDialog(Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 3109
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3110
    return-void
.end method

.method public showCapLockState(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3351
    if-eqz p1, :cond_0

    .line 3353
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3352
    invoke-static {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 3360
    :goto_0
    return-void

    .line 3357
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3356
    invoke-static {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method showEmojilayout()V
    .locals 1

    .prologue
    .line 4064
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->showEmojilayout(Z)V

    .line 4065
    return-void
.end method

.method showEmojilayout(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 4068
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getIsEmojiShownInCandidateView()Z

    move-result v0

    move v1, v0

    .line 4069
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4070
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 4071
    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4076
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4077
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->clearComposingState()V

    .line 4080
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4081
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/IME;->showWindow(Z)V

    .line 4084
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isShortMessageField()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isLongMessageField()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4085
    :cond_3
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/IME;->assignVisibilityForGridandTabs(I)V

    .line 4087
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->removeAllViews()V

    .line 4088
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->addView(Landroid/view/View;)V

    .line 4089
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mRecentEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->addView(Landroid/view/View;)V

    .line 4090
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mPeopleEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->addView(Landroid/view/View;)V

    .line 4091
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mObjectEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->addView(Landroid/view/View;)V

    .line 4092
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mNatureEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->addView(Landroid/view/View;)V

    .line 4093
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mPlacesEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->addView(Landroid/view/View;)V

    .line 4094
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsEmojisGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->addView(Landroid/view/View;)V

    .line 4095
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiemoticonsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->addView(Landroid/view/View;)V

    .line 4120
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4121
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPhoneSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setVisibility(I)V

    .line 4127
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4128
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 4129
    const-string/jumbo v3, "layout_inflater"

    .line 4128
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4131
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4133
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 4134
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 4136
    :cond_4
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 4137
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 4138
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 4139
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputViews:Ljava/util/Map;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4140
    const/16 v0, 0x3eb

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4141
    const/16 v0, 0x30

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4142
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0003

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4143
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4144
    const/high16 v0, 0x20000

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 4145
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4147
    if-eqz v1, :cond_b

    .line 4148
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mEmojiRecentsTab:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->callOnClick()Z

    .line 4162
    :goto_3
    return-void

    :cond_5
    move v1, v2

    .line 4068
    goto/16 :goto_0

    .line 4103
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4104
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    .line 4103
    if-eqz v0, :cond_8

    .line 4105
    :cond_7
    return-void

    .line 4107
    :cond_8
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4108
    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/IME;->assignVisibilityForGridandTabs(I)V

    .line 4109
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->removeAllViews()V

    .line 4110
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mPhoneSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->addView(Landroid/view/View;)V

    .line 4111
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->setCurrentScreen(IZ)V

    goto/16 :goto_1

    .line 4113
    :cond_9
    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/IME;->assignVisibilityForGridandTabs(I)V

    .line 4115
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->removeAllViews()V

    .line 4116
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v3}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->addView(Landroid/view/View;)V

    .line 4117
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mPager:Lcom/nuance/flext9_OEM/input/HorizontalPager;

    invoke-virtual {v0, v2, v2}, Lcom/nuance/flext9_OEM/input/HorizontalPager;->setCurrentScreen(IZ)V

    goto/16 :goto_1

    .line 4123
    :cond_a
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsGridView:Lcom/nuance/flext9_OEM/input/GridEmojiView;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setVisibility(I)V

    .line 4124
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsTab:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 4150
    :cond_b
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mSymbolsTab:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->callOnClick()Z

    goto :goto_3
.end method

.method protected showLanguageMenuWrap()V
    .locals 0

    .prologue
    .line 3113
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->showLanguageMenu()V

    .line 3114
    return-void
.end method

.method protected showOptionMenuWrap()V
    .locals 0

    .prologue
    .line 3117
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/IME;->showOptionMenu()V

    .line 3118
    return-void
.end method

.method public showWindowOnLongPress()V
    .locals 1

    .prologue
    .line 4499
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IME;->showWindow(Z)V

    .line 4502
    :cond_0
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 2316
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 2312
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 2308
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 2320
    return-void
.end method

.method public switchViewNow()V
    .locals 3

    .prologue
    .line 3100
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/flext9_OEM/input/IME;->setupInputView(Lcom/nuance/flext9_OEM/input/InputFieldInfo;ZZ)V

    .line 3101
    return-void
.end method

.method public updatePersistMap()V
    .locals 5

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mIsViewNeedToPersist:Z

    if-eqz v0, :cond_0

    .line 3199
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v0

    .line 3201
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputView;->getInputModeAndShiftState()Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v1

    .line 3202
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mPersistInputModeMap:Ljava/util/HashMap;

    .line 3203
    const-string/jumbo v3, "FlexT9PersistInputMode"

    .line 3204
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputFieldInfo:Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3202
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3206
    :cond_0
    return-void
.end method

.method public updateStatusBarIcon(Z)V
    .locals 9

    .prologue
    const v8, 0x7f0a0012

    const v7, 0x7f0a000e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3235
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentFocusedPackage()Ljava/lang/String;

    .line 3238
    if-nez p1, :cond_0

    .line 3240
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/IME;->showStatusIcon(I)V

    .line 3248
    iput v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mStatusBarIconID:I

    .line 3249
    return-void

    .line 3251
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    instance-of v0, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    if-eqz v0, :cond_1

    .line 3252
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->isHoldingShiftKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3253
    return-void

    .line 3256
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mStatusBarIconShown:Z

    if-nez v0, :cond_2

    .line 3257
    return-void

    .line 3261
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputView()Lcom/nuance/flext9_OEM/input/InputView;

    move-result-object v3

    .line 3263
    if-nez v3, :cond_3

    .line 3264
    return-void

    .line 3266
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IME;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 3267
    iget v4, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    .line 3269
    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputView;->getKeyboardSwitcherMode()Ljava/lang/String;

    move-result-object v5

    .line 3270
    if-nez v5, :cond_4

    .line 3271
    return-void

    .line 3276
    :cond_4
    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3277
    const/4 v0, 0x2

    .line 3283
    :goto_0
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    if-eqz v3, :cond_7

    .line 3284
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->getCurrentPageName()Ljava/lang/String;

    move-result-object v3

    .line 3285
    const-string/jumbo v6, "Function"

    .line 3284
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 3283
    if-eqz v3, :cond_7

    .line 3286
    const v2, 0x7f020059

    .line 3312
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/IME;->showStatusIcon(I)V

    .line 3320
    iput v2, p0, Lcom/nuance/flext9_OEM/input/IME;->mStatusBarIconID:I

    .line 3321
    return-void

    .line 3278
    :cond_6
    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/InputView;->getKeyboard()Lcom/nuance/flext9_OEM/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/XT9Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 3279
    goto :goto_0

    .line 3287
    :cond_7
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    if-eqz v3, :cond_8

    .line 3288
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IME;->mHardKeyboardManager:Lcom/nuance/flext9_OEM/input/HardKeyboardManager;

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/HardKeyboardManager;->getCurrentPageName()Ljava/lang/String;

    move-result-object v3

    .line 3289
    const-string/jumbo v6, "Fn_Lock"

    .line 3288
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 3287
    if-eqz v3, :cond_8

    .line 3290
    const v2, 0x7f02005b

    goto :goto_1

    .line 3291
    :cond_8
    const-string/jumbo v3, "ambig"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3292
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v4, v1, :cond_9

    .line 3293
    sget-object v1, Lcom/nuance/flext9_OEM/input/IME;->ENGLISH_STATUS_DRAWABLES:[[I

    aget-object v1, v1, v2

    aget v2, v1, v0

    goto :goto_1

    .line 3294
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v4, v1, :cond_a

    .line 3295
    sget-object v1, Lcom/nuance/flext9_OEM/input/IME;->SPANISH_STATUS_DRAWABLES:[[I

    aget-object v1, v1, v2

    aget v2, v1, v0

    goto :goto_1

    .line 3296
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v4, v1, :cond_5

    .line 3297
    sget-object v1, Lcom/nuance/flext9_OEM/input/IME;->FRENCH_STATUS_DRAWABLES:[[I

    aget-object v1, v1, v2

    aget v2, v1, v0

    goto :goto_1

    .line 3299
    :cond_b
    const-string/jumbo v3, "abc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3300
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v4, v3, :cond_c

    .line 3301
    sget-object v2, Lcom/nuance/flext9_OEM/input/IME;->ENGLISH_STATUS_DRAWABLES:[[I

    aget-object v1, v2, v1

    aget v2, v1, v0

    goto/16 :goto_1

    .line 3302
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0019

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v4, v3, :cond_d

    .line 3303
    sget-object v2, Lcom/nuance/flext9_OEM/input/IME;->SPANISH_STATUS_DRAWABLES:[[I

    aget-object v1, v2, v1

    aget v2, v1, v0

    goto/16 :goto_1

    .line 3304
    :cond_d
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v4, v3, :cond_5

    .line 3305
    sget-object v2, Lcom/nuance/flext9_OEM/input/IME;->FRENCH_STATUS_DRAWABLES:[[I

    aget-object v1, v2, v1

    aget v2, v1, v0

    goto/16 :goto_1

    .line 3307
    :cond_e
    const-string/jumbo v0, "number"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3308
    const v2, 0x7f02004b

    goto/16 :goto_1

    :cond_f
    move v0, v2

    goto/16 :goto_0
.end method

# Wave: hook around the stock onKeyDown (now onKeyDown$wave).
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    invoke-static/range {p0 .. p2}, Lcom/nuance/flext9_OEM/input/WaveSpec;->keyStart(Ljava/lang/Object;ILandroid/view/KeyEvent;)V
    invoke-direct/range {p0 .. p2}, Lcom/nuance/flext9_OEM/input/IME;->onKeyDown$wave(ILandroid/view/KeyEvent;)Z
    move-result v0
    invoke-static {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/WaveSpec;->keyDownEnd(Ljava/lang/Object;ILandroid/view/KeyEvent;Z)V
    return v0
.end method

# Wave: hook around the stock onKeyUp (now onKeyUp$wave).
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    invoke-static/range {p0 .. p2}, Lcom/nuance/flext9_OEM/input/WaveSpec;->keyStart(Ljava/lang/Object;ILandroid/view/KeyEvent;)V
    invoke-direct/range {p0 .. p2}, Lcom/nuance/flext9_OEM/input/IME;->onKeyUp$wave(ILandroid/view/KeyEvent;)Z
    move-result v0
    invoke-static {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/WaveSpec;->keyUpEnd(Ljava/lang/Object;ILandroid/view/KeyEvent;Z)V
    return v0
.end method

# Wave: status bar icon updates (a synchronous call into system_server per key) are
# made in order on a background thread (WaveStatus), off the key handling path.
.method public showStatusIcon(I)V
    .registers 2
    invoke-static {p0, p1}, Lcom/nuance/flext9_OEM/input/WaveStatus;->show(Ljava/lang/Object;I)V
    return-void
.end method

.method public wave$showStatusIcon(I)V
    .registers 2
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showStatusIcon(I)V
    return-void
.end method

# Wave: hook around the stock onUpdateSelection (now onUpdateSelection$wave).
.method public onUpdateSelection(IIIIII)V
    .registers 9
    invoke-static/range {p0 .. p6}, Lcom/nuance/flext9_OEM/input/WaveSpec;->selectionChanging(Ljava/lang/Object;IIIIII)V
    invoke-direct/range {p0 .. p6}, Lcom/nuance/flext9_OEM/input/IME;->onUpdateSelection$wave(IIIIII)V
    invoke-static/range {p0 .. p6}, Lcom/nuance/flext9_OEM/input/WaveSpec;->selectionUpdated(Ljava/lang/Object;IIIIII)V
    return-void
.end method

# Wave: hook around the stock onStartInput (now onStartInput$wave).
.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 5
    invoke-static/range {p0 .. p2}, Lcom/nuance/flext9_OEM/input/WaveSpec;->startInput(Ljava/lang/Object;Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-direct/range {p0 .. p2}, Lcom/nuance/flext9_OEM/input/IME;->onStartInput$wave(Landroid/view/inputmethod/EditorInfo;Z)V
    return-void
.end method

# Wave: the text field connection goes through WaveConnection.
.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    move-result-object v0
    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveConnection;->wrap(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;
    move-result-object v0
    return-object v0
.end method
