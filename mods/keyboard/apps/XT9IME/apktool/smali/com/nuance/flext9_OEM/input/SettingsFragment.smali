.class public Lcom/nuance/flext9_OEM/input/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager$PermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/SettingsFragment$TextViewImageGetter;
    }
.end annotation


# static fields
.field public static final EULA_ACCEPTED_KEY:Ljava/lang/String; = "eula_accepted"

.field private static final LANGUAGE_MODEL_CATEGORY_KEY:Ljava/lang/String; = "language_model_category_key"

.field public static final LANGUAGE_MODEL_KEY:Ljava/lang/String; = "language_model"

.field public static final LANGUAGE_MODEL_SETTING_DEFAULT:Z = true

.field public static final PREF_AUTO_CAP:Ljava/lang/String; = "auto_cap"

.field public static final PREF_AUTO_CORRECTION_MODE:Ljava/lang/String; = "auto_correction_mode"

.field public static final PREF_AUTO_PUNCTUATION:Ljava/lang/String; = "auto_punctuation"

.field public static final PREF_KEYBOARD_LAYOUTS:Ljava/lang/String; = "keyboard_layouts"

.field public static final PREF_LANGUAGE_SWITCH_KEY:Ljava/lang/String; = "language_switch_key"

.field public static final PREF_NEED_SHOW_WARNING:Ljava/lang/String; = "Show_Warning"

.field public static final PREF_NEXT_WORD_PREDICTION:Ljava/lang/String; = "next_word_prediction"

.field public static final PREF_PERSONAL_DICTIONARY:Ljava/lang/String; = "personal_dictionary"

.field public static final PREF_RECAPTURE:Ljava/lang/String; = "recapture"

.field public static final PREF_SCREEN_CONFIGURATION_KEY:Ljava/lang/String; = "configuration_screen_key"

.field public static final PREF_SCREEN_LANGUAGE_KEY:Ljava/lang/String; = "language_screen_key"

.field public static final PREF_SHOW_SELECTION_LIST:Ljava/lang/String; = "show_selection_list"

.field public static final PREF_SOUND_ON:Ljava/lang/String; = "sound_on"

.field public static final PREF_SUGGEST_CONTACT_NAMES:Ljava/lang/String; = "pref_suggest_contact_names"

.field public static final PREF_VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field public static final PREF_WORD_COMPLETION_POINT:Ljava/lang/String; = "word_completion_point"

.field public static final SETTING_CURRENT_INPUT_MODE:Ljava/lang/String; = "current_input_mode"

.field public static final SETTING_CURRENT_LANGUAGE:Ljava/lang/String; = "current_language"

.field public static final SETTING_LANGUAGE_MODEL:Ljava/lang/String; = "bigram"

.field public static final SINGLE_TAP_SELECTION_DEFAULT_SETTING:Z = false

.field private static final SINGLE_TAP_SELECTION_SETTING_CATEGORY_KEY:Ljava/lang/String; = "single_tap_selection_category_key"

.field public static final SINGLE_TAP_SELECTION_SETTING_KEY:Ljava/lang/String; = "single_tap_selection"

.field public static final SPEECH_SETTINGS_CATETORY_KEY:Ljava/lang/String; = "speech_settings_cat_key"

.field public static final TEXT_SETTINGS_CATERORY_KEY:Ljava/lang/String; = "text_input_settings"

.field private static final TRACE_FILTER_CATETORY_KEY:Ljava/lang/String; = "trace_filter_category_key"

.field public static final TRACE_FILTER_DEFAULT:Ljava/lang/String; = "hi"

.field public static final TRACE_FILTER_HIGH:Ljava/lang/String; = "hi"

.field public static final TRACE_FILTER_KEY:Ljava/lang/String; = "trace_filter"

.field public static final TRACE_FILTER_LOW:Ljava/lang/String; = "low"

.field public static final TRACE_SETTINGS_CATETORY_KEY:Ljava/lang/String; = "trace_settings_cat_key"


# instance fields
.field private mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

.field private mLanguageScreenPref:Landroid/preference/PreferenceScreen;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mSuggestContactNames:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/SettingsFragment;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -set0(Lcom/nuance/flext9_OEM/input/SettingsFragment;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 0

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/SettingsFragment;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->buildLanguagesScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/nuance/flext9_OEM/input/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->validateAndCheckCurrentLanguage()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    .line 77
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    .line 78
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 36
    return-void
.end method

.method private addLanguageModelSetting(Landroid/preference/PreferenceScreen;)V
    .locals 4

    .prologue
    .line 498
    const-string/jumbo v0, "language_model_category_key"

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createCategoryPref(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "language model"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 501
    const-string/jumbo v1, "language_model"

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v0

    .line 502
    const-string/jumbo v1, "Language model"

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 503
    const-string/jumbo v1, "Using language model in word suggestion"

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "language_model"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 505
    return-void
.end method

.method private addSingleTapSelectionSetting(Landroid/preference/PreferenceScreen;)V
    .locals 4

    .prologue
    .line 511
    const-string/jumbo v0, "single_tap_selection_category_key"

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createCategoryPref(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 512
    const-string/jumbo v1, "single tap selection"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 513
    const-string/jumbo v1, "single_tap_selection_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 515
    const-string/jumbo v1, "single_tap_selection"

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v0

    .line 516
    const-string/jumbo v1, "single tap selection"

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "single_tap_selection"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 518
    return-void
.end method

.method private addSpeechSettings(Landroid/preference/PreferenceScreen;)V
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isSpeechEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    const-string/jumbo v1, "speech_settings_cat_key"

    invoke-direct {p0, p1, v1}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createCategoryPref(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    .line 467
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getEndofSpeechDetectiionPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v1

    .line 470
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEndofSpeechDetectionEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 471
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09015b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09015c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 474
    :cond_0
    return-void
.end method

.method private addTextInputSettings(Landroid/preference/PreferenceScreen;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 237
    const-string/jumbo v0, "text_input_settings"

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createCategoryPref(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 242
    const-string/jumbo v2, "vibrate_on"

    invoke-direct {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    .line 243
    const-string/jumbo v3, "vibrate_on"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090100

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    const-string/jumbo v2, "sound_on"

    invoke-direct {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    .line 247
    const-string/jumbo v3, "sound_on"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    const-string/jumbo v2, "auto_cap"

    invoke-direct {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    .line 251
    const-string/jumbo v3, "auto_cap"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 252
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090109

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    const-string/jumbo v2, "auto_punctuation"

    invoke-direct {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    .line 256
    const-string/jumbo v3, "auto_punctuation"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v2

    .line 261
    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v2

    .line 263
    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getAutoCorrectionPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getAutoCorrectionMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createListPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/ListPreference;

    move-result-object v2

    .line 264
    const v3, 0x7f09011e

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 265
    const v3, 0x7f09011f

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 266
    const v3, 0x7f090120

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 267
    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 268
    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 270
    const-string/jumbo v2, "show_selection_list"

    invoke-direct {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    .line 271
    const-string/jumbo v3, "show_selection_list"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090174

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090175

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 275
    const-string/jumbo v2, "language_switch_key"

    invoke-direct {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v0

    .line 276
    const-string/jumbo v2, "language_switch_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method private addTraceFilterSetting(Landroid/preference/PreferenceScreen;)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 480
    const-string/jumbo v0, "trace_filter_category_key"

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createCategoryPref(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 481
    const-string/jumbo v1, "trace filter"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 483
    const-string/jumbo v2, "trace_filter"

    const-string/jumbo v3, "low"

    invoke-direct {p0, v0, v2, v3}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createListPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/ListPreference;

    move-result-object v0

    .line 484
    const-string/jumbo v2, "Trace filter"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 485
    const-string/jumbo v2, "Set trace filter to low or high"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 486
    new-array v2, v4, [Ljava/lang/CharSequence;

    const-string/jumbo v3, "Low"

    aput-object v3, v2, v5

    const-string/jumbo v3, "High"

    aput-object v3, v2, v6

    .line 487
    new-array v3, v4, [Ljava/lang/CharSequence;

    const-string/jumbo v4, "low"

    aput-object v4, v3, v5

    const-string/jumbo v4, "hi"

    aput-object v4, v3, v6

    .line 489
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 490
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 491
    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/Settings;->getTraceFilter(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method private addTraceSettings(Landroid/preference/PreferenceScreen;)V
    .locals 5

    .prologue
    .line 439
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    .line 442
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isTraceFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const-string/jumbo v0, "trace_settings_cat_key"

    invoke-direct {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createCategoryPref(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    .line 445
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    const-string/jumbo v2, "trace_settings_cat_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v2

    .line 449
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isTraceEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 450
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09014f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090150

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v0

    .line 454
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 455
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 458
    :cond_0
    return-void
.end method

.method private buildLanguagesScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 5

    .prologue
    .line 335
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    .line 338
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getChineseInputLanguages()Ljava/util/List;

    move-result-object v2

    .line 339
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getAlphabeticInputLanguages()Ljava/util/List;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 344
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 347
    invoke-direct {p0, p1, v1, v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createInputModeCheckbox(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 352
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    .line 353
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-direct {v3, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 354
    iget-object v4, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 356
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v0

    .line 358
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    .line 359
    invoke-direct {p0, p1, v1, v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->createInputModeCheckbox(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 365
    :cond_3
    return-void
.end method

.method private buildPreferenceScreen()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->addTextInputSettings(Landroid/preference/PreferenceScreen;)V

    .line 116
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->addTraceSettings(Landroid/preference/PreferenceScreen;)V

    .line 129
    return-void
.end method

.method private checkForCurrentLanguageToBroadcast()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 530
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 531
    const-string/jumbo v2, ""

    .line 532
    const-string/jumbo v1, ""

    .line 533
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090111

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v3, v0

    .line 534
    :goto_0
    if-ge v3, v4, :cond_1

    .line 535
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 536
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    :cond_0
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 540
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    iget-object v2, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    .line 552
    :cond_1
    return-object v2

    .line 542
    :cond_2
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 543
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 544
    if-nez v3, :cond_4

    .line 545
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 546
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 547
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 542
    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method private createCategoryPref(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 225
    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 228
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 232
    :cond_0
    return-object v0
.end method

.method private createInputModeCheckbox(Landroid/content/Context;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Landroid/preference/SwitchPreference;
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/preference/SwitchPreference;

    invoke-direct {v0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 371
    invoke-virtual {p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p3, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 380
    :goto_0
    invoke-virtual {p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    invoke-virtual {p2, p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    const v1, 0x7f090113

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 391
    :cond_0
    :goto_1
    invoke-virtual {p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    invoke-virtual {p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 401
    :goto_2
    new-instance v1, Lcom/nuance/flext9_OEM/input/SettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment$1;-><init>(Lcom/nuance/flext9_OEM/input/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 414
    return-object v0

    .line 375
    :cond_1
    iget-object v1, p3, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    invoke-virtual {p3}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 387
    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 398
    :cond_3
    iget-object v1, p3, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 399
    iget-object v1, p3, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method private createListPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/ListPreference;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 198
    if-nez v0, :cond_0

    .line 200
    new-instance v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 201
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 202
    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    .line 203
    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    :cond_0
    return-object v0
.end method

.method private createPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 215
    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 216
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 218
    :cond_0
    return-object v0
.end method

.method private createSwitchPref(Landroid/preference/PreferenceCategory;Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 184
    if-nez v0, :cond_0

    .line 185
    new-instance v0, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 187
    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setLayoutResource(I)V

    .line 188
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_0
    return-object v0
.end method

.method private turnOffUseContactsIfNoPermission()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 327
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 328
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v1, v3

    .line 327
    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsUtil;->checkAllPermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mSuggestContactNames:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 331
    :cond_0
    return-void
.end method

.method private updateLanguagePreferenceSummary()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 173
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method private validateAndCheckCurrentLanguage()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    .line 419
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090111

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move v4, v0

    move v3, v0

    .line 422
    :goto_0
    if-ge v4, v5, :cond_1

    .line 423
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 425
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, v0

    .line 428
    :cond_0
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 422
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 432
    :cond_1
    if-nez v3, :cond_2

    .line 433
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 435
    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f050052

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 89
    const-string/jumbo v0, "language_screen_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    .line 90
    const-string/jumbo v0, "language_switch_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 91
    const-string/jumbo v2, "pref_suggest_contact_names"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mSuggestContactNames:Landroid/preference/SwitchPreference;

    .line 92
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->turnOffUseContactsIfNoPermission()V

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/nuance/flext9_OEM/input/SettingsFragment$TextViewImageGetter;

    invoke-direct {v2, p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment$TextViewImageGetter;-><init>(Lcom/nuance/flext9_OEM/input/SettingsFragment;)V

    .line 96
    invoke-static {v1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 294
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "personal_dictionary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 297
    const-class v1, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 298
    const/4 v6, -0x1

    move-object v4, v2

    move-object v5, v2

    .line 296
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 299
    return v7

    .line 300
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "pref_suggest_contact_names"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mSuggestContactNames:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 302
    new-array v1, v7, [Ljava/lang/String;

    .line 303
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v1, v3

    .line 302
    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsUtil;->checkAllPermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->get(Landroid/content/Context;)Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 305
    new-array v2, v7, [Ljava/lang/String;

    .line 308
    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    aput-object v4, v2, v3

    .line 305
    invoke-virtual {v0, p0, v1, v2}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->requestPermissions(Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager$PermissionsResultCallback;Landroid/app/Activity;[Ljava/lang/String;)V

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "language_screen_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    .line 314
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 316
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->buildLanguagesScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 318
    :cond_2
    return v3
.end method

.method public onRequestPermissionsResult(Z)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->turnOffUseContactsIfNoPermission()V

    .line 324
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 134
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 136
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    .line 137
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mInputMethods:Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-virtual {v0, v2}, Lcom/nuance/flext9_OEM/input/InputMethods;->syncWithCurrentUserConfiguration(Lcom/nuance/flext9_OEM/input/InputFieldInfo;)V

    .line 138
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 141
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->buildLanguagesScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 143
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v0, v4, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment;->mLanguageScreenPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 152
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 153
    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v4, :cond_3

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "configuration_screen_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 155
    const-string/jumbo v1, "vibrate_on"

    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    :cond_1
    const-string/jumbo v1, "sound_on"

    invoke-virtual {p0, v1}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_2
    return-void

    .line 152
    :cond_3
    if-eqz v1, :cond_2

    goto :goto_0
.end method
