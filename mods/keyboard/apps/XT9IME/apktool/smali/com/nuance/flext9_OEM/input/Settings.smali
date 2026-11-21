.class public Lcom/nuance/flext9_OEM/input/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field public static final ALPHA_INPUT_MODE_ABC:Ljava/lang/String; = "abc"

.field public static final ALPHA_INPUT_MODE_AMBIG:Ljava/lang/String; = "ambig"

.field public static final ALPHA_INPUT_MODE_NUMBER:Ljava/lang/String; = "number"

.field public static final ARABIC_LANGUAGE_ID:I = 0x101

.field public static final CHINESE_FUZZY_F_H:Ljava/lang/String; = "fuzzy_pinyin_f_h"

.field public static final CHINESE_FUZZY_N_L:Ljava/lang/String; = "fuzzy_pinyin_n_l"

.field public static final CHINESE_FUZZY_N_NG:Ljava/lang/String; = "fuzzy_pinyin_n_ng"

.field public static final CHINESE_FUZZY_R_L:Ljava/lang/String; = "fuzzy_pinyin_r_l"

.field public static final CHINESE_FUZZY_Z_ZH_C_CH_S_SH:Ljava/lang/String; = "fuzzy_pinyin_z_zh_c_ch_s_sh"

.field public static final CHINESE_HWR_MODE:Ljava/lang/String; = "chinese_hwr_mode"

.field public static final CHINESE_INPUT_MODE_BPMF:Ljava/lang/String; = "bpmf"

.field public static final CHINESE_INPUT_MODE_CANGJIE:Ljava/lang/String; = "cangjie"

.field public static final CHINESE_INPUT_MODE_PINYIN:Ljava/lang/String; = "pinyin"

.field public static final CHINESE_INPUT_MODE_QUICK_CANGJIE:Ljava/lang/String; = "quick_cangjie"

.field public static final CHINESE_INPUT_MODE_STROKE:Ljava/lang/String; = "stroke"

.field public static final CZECH_LANGUAGE_ID:I = 0x105

.field public static final ENGLISH_CANADIAN_LANGUAGE_ID:I = 0xc09

.field public static final ENGLISH_LANGUAGE_ID:I = 0x109

.field public static final ENGLISH_UK_LANGUAGE_ID:I = 0x809

.field public static final FARSI_LANGUAGE_ID:I = 0x129

.field public static final FRENCH_CANADIAN_LANGUAGE_ID:I = 0xc0c

.field public static final FRENCH_LANGUAGE_ID:I = 0x10c

.field public static final GERMAN_LANGUAGE_ID:I = 0x107

.field public static final HANDWRITING_INPUT_MODE:Ljava/lang/String; = "handwriting"

.field public static final HANDWRITING_LAYOUT:I = 0xbea

.field public static final HARD_KEYBOARD_AZERTY:Ljava/lang/String; = "AZERTY"

.field public static final HARD_KEYBOARD_QWERTY:Ljava/lang/String; = "QWERTY"

.field public static final HARD_KEYBOARD_QWERTY_EL:Ljava/lang/String; = "QWERTY_el"

.field public static final HARD_KEYBOARD_QWERTY_ES:Ljava/lang/String; = "QWERTY_es"

.field public static final HARD_KEYBOARD_QWERTY_IT:Ljava/lang/String; = "QWERTY_it"

.field public static final HARD_KEYBOARD_QWERTY_zh_rCN:Ljava/lang/String; = "QWERTY_zh-rCN"

.field public static final HARD_KEYBOARD_QWERTY_zh_rTW:Ljava/lang/String; = "QWERTY_zh-rTW"

.field public static final HARD_KEYBOARD_QWERTZ:Ljava/lang/String; = "QWERTZ"

.field public static final HEBREW_LANGUAGE_ID:I = 0x10d

.field public static final HINDI_LANGUAGE_ID:I = 0x139

.field public static final ITALIAN_LANGUAGE_ID:I = 0x110

.field public static final KDB_ID_DEFAULT_QWERTY:I = 0x6ff

.field public static final KDB_QWERTY_THAI_ID_PAGE1:I = 0x91e

.field public static final KDB_QWERTY_THAI_ID_PAGE2:I = 0x9fd

.field public static final KEYPAD_KEYBOARD_LAYOUT:I = 0x600

.field public static final QWERTY_KEYBOARD_LAYOUT:I = 0x900

.field public static final REDUCED_QWERTY_KEYBOARD_LAYOUT:I = 0xa00

.field public static final RUSSIAN_LANGUAGE_ID:I = 0x119

.field public static final SETTING_CURRENT_HARD_KEYBOARD_LAYOUT_ID:Ljava/lang/String; = "hard_keyboard_layout_id"

.field public static final SPANISH_LANGUAGE_ID:I = 0x10a

.field public static final THAI_LANGUAGE_ID:I = 0x11e


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getAutoCap(Landroid/content/SharedPreferences;Z)Z
    .locals 1

    .prologue
    .line 169
    const-string/jumbo v0, "auto_cap"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAutoPunctuation(Landroid/content/SharedPreferences;Z)Z
    .locals 1

    .prologue
    .line 191
    const-string/jumbo v0, "auto_punctuation"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFuzzyPairs(Landroid/content/SharedPreferences;I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 197
    const-string/jumbo v0, "fuzzy_pinyin_z_zh_c_ch_s_sh"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 199
    if-eqz v0, :cond_4

    .line 200
    const/4 v0, 0x7

    .line 203
    :goto_0
    const-string/jumbo v2, "fuzzy_pinyin_n_ng"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 204
    if-eqz v2, :cond_0

    .line 205
    or-int/lit16 v0, v0, 0x1c0

    .line 209
    :cond_0
    const-string/jumbo v2, "fuzzy_pinyin_n_l"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 210
    if-eqz v2, :cond_1

    .line 211
    or-int/lit8 v0, v0, 0x8

    .line 213
    :cond_1
    const-string/jumbo v2, "fuzzy_pinyin_r_l"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 214
    if-eqz v2, :cond_2

    .line 215
    or-int/lit8 v0, v0, 0x10

    .line 217
    :cond_2
    const-string/jumbo v2, "fuzzy_pinyin_f_h"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 218
    if-eqz v1, :cond_3

    .line 219
    or-int/lit8 v0, v0, 0x20

    .line 221
    :cond_3
    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static getMultitapMode(Landroid/content/SharedPreferences;Z)Z
    .locals 1

    .prologue
    .line 236
    const-string/jumbo v0, "abc"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getNeedShowWarningState(Landroid/content/Context;Z)Z
    .locals 2

    .prologue
    .line 173
    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    .line 175
    return p1

    .line 177
    :cond_0
    const-string/jumbo v1, "Show_Warning"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 225
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getTraceFilter(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    const-string/jumbo v0, "trace_filter"

    const-string/jumbo v1, "hi"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isArabicLanguage(I)Z
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0x101

    if-ne p0, v0, :cond_0

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCzechLanguage(I)Z
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x105

    if-ne p0, v0, :cond_0

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isEFGISOrChinese(I)Z
    .locals 1

    .prologue
    .line 127
    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x109

    if-ne p0, v0, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_1
    const/16 v0, 0x10c

    if-eq p0, v0, :cond_0

    .line 129
    const/16 v0, 0x107

    if-eq p0, v0, :cond_0

    .line 130
    const/16 v0, 0x110

    if-eq p0, v0, :cond_0

    .line 131
    const/16 v0, 0x809

    if-eq p0, v0, :cond_0

    .line 132
    const/16 v0, 0xc09

    if-eq p0, v0, :cond_0

    .line 133
    const/16 v0, 0xc0c

    if-eq p0, v0, :cond_0

    .line 134
    const/16 v0, 0x10a

    if-eq p0, v0, :cond_0

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public static isFrenchLanguage(I)Z
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0x10c

    if-ne p0, v0, :cond_0

    .line 149
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLanguageHaveShiftPage(I)Z
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x139

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/Settings;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x11e

    if-ne p0, v0, :cond_1

    .line 115
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_1
    const/16 v0, 0x129

    if-eq p0, v0, :cond_0

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public static isSpecialLanguage(I)Z
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x139

    if-eq p0, v0, :cond_0

    const/16 v0, 0x101

    if-ne p0, v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_1
    const/16 v0, 0x10d

    if-eq p0, v0, :cond_0

    .line 106
    const/16 v0, 0x129

    if-eq p0, v0, :cond_0

    .line 107
    const/16 v0, 0x11e

    if-eq p0, v0, :cond_0

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public static isThaiLanguage(I)Z
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0x11e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x91e

    if-ne p0, v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_1
    const/16 v0, 0x9fd

    if-eq p0, v0, :cond_0

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public static islangugeHaveCapsNumberPage(I)Z
    .locals 1

    .prologue
    .line 160
    const/16 v0, 0x105

    if-eq p0, v0, :cond_0

    .line 161
    const/16 v0, 0x10c

    if-ne p0, v0, :cond_1

    .line 164
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_1
    const/16 v0, 0x11e

    if-eq p0, v0, :cond_0

    .line 163
    const/16 v0, 0x107

    if-eq p0, v0, :cond_0

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public static setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 241
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void
.end method

.method public static setInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 248
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 249
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    return-void
.end method

.method public static setMultitapMode(Landroid/content/SharedPreferences;Z)V
    .locals 2

    .prologue
    .line 230
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    const-string/jumbo v1, "abc"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    return-void
.end method

.method public static setNeedShowWarningSate(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 181
    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v1, "Show_Warning"

    invoke-static {v0, v1, p1}, Lcom/nuance/flext9_OEM/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 185
    :cond_0
    return-void
.end method

.method public static setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 255
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    const-string/jumbo v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    if-nez v1, :cond_0

    .line 81
    const-string/jumbo v1, ":android:show_fragment"

    const-class v2, Lcom/nuance/flext9_OEM/input/SettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    :cond_0
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 262
    invoke-static {p0}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->get(Landroid/content/Context;)Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 263
    return-void
.end method
