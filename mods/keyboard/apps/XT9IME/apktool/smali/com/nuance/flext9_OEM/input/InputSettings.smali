.class public Lcom/nuance/flext9_OEM/input/InputSettings;
.super Landroid/preference/PreferenceActivity;
.source "InputSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/InputSettings$SeekBarCreator;
    }
.end annotation


# static fields
.field public static final INPUT_MODE_KEY:Ljava/lang/String; = "input_mode"

.field public static final LANGUAGE_ID_KEY:Ljava/lang/String; = "language_id"


# instance fields
.field private mInputModeName:Ljava/lang/String;

.field private mLanguageID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createAlphaHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const v4, 0x7f030020

    .line 322
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 323
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 325
    const v1, 0x7f090140

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 326
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 327
    const v2, 0x7f090141

    .line 326
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 329
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 331
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 332
    const v1, 0x7f09013f

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 333
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 336
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 337
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 342
    const v3, 0x7f090138

    .line 341
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 344
    const v3, 0x7f090142

    .line 343
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 346
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 349
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 350
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 354
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090139

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 356
    const v3, 0x7f090143

    .line 355
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 358
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 361
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09013a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 368
    const v3, 0x7f090144

    .line 367
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 370
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 372
    return-object p1
.end method

.method private createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 304
    const v1, 0x7f090148

    .line 303
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 306
    const v1, 0x7f090149

    .line 305
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 307
    new-instance v1, Lcom/nuance/flext9_OEM/input/InputSettings$SeekBarCreator;

    invoke-direct {v1, p0}, Lcom/nuance/flext9_OEM/input/InputSettings$SeekBarCreator;-><init>(Lcom/nuance/flext9_OEM/input/InputSettings;)V

    .line 308
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 309
    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    .line 311
    return-object v0
.end method

.method private createChineseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    const v3, 0x7f030020

    .line 379
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 380
    const v0, 0x7f09013f

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 381
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    .line 384
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 385
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 389
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 390
    const v2, 0x7f090138

    .line 389
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 392
    const v2, 0x7f090145

    .line 391
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 394
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 397
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 398
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 402
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 404
    const v2, 0x7f090146

    .line 403
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 406
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 409
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 414
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 416
    const v2, 0x7f090147

    .line 415
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 417
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 418
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 421
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/InputSettings;->createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 423
    return-object p1
.end method

.method private createChineseSimplifiedMohuPiny(Landroid/preference/PreferenceCategory;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V
    .locals 3

    .prologue
    const v2, 0x7f030020

    .line 265
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 266
    const-string/jumbo v1, "fuzzy_pinyin_z_zh_c_ch_s_sh"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 267
    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 268
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 271
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 272
    const-string/jumbo v1, "fuzzy_pinyin_n_ng"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 273
    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 274
    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 275
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 276
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 278
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 279
    const-string/jumbo v1, "fuzzy_pinyin_n_l"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 280
    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 281
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 282
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 284
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 285
    const-string/jumbo v1, "fuzzy_pinyin_r_l"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 286
    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 287
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 288
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 290
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 291
    const-string/jumbo v1, "fuzzy_pinyin_f_h"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 292
    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 293
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 294
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 296
    return-void
.end method

.method private createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/InputMethods$Layout;",
            ">;)",
            "Landroid/preference/PreferenceScreen;"
        }
    .end annotation

    .prologue
    const v4, 0x7f030020

    .line 138
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 161
    iget-object v0, p2, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p2, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 161
    if-eqz v0, :cond_3

    .line 164
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    invoke-direct {p0, v0, p2}, Lcom/nuance/flext9_OEM/input/InputSettings;->createChineseSimplifiedMohuPiny(Landroid/preference/PreferenceCategory;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)V

    .line 259
    :cond_0
    :goto_1
    return-object p1

    .line 143
    :cond_1
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getLanguageId()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p2, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mParent:Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 176
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getRecapturePrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 178
    const v2, 0x7f09010d

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 179
    const v2, 0x7f09010e

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 180
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isRecaptureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 181
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 182
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getNextWordPredictionPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 186
    const v2, 0x7f09010f

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 187
    const v2, 0x7f090110

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 188
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isNextWordPredictionEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 189
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 190
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 192
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 196
    new-instance v1, Landroid/preference/ListPreference;

    invoke-direct {v1, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getAutoCorrectionPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 198
    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 199
    const v2, 0x7f09011f

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 200
    const v2, 0x7f090120

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 201
    const/high16 v2, 0x7f070000

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 202
    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 206
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getAutoCorrectionMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    .line 208
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 210
    new-instance v1, Landroid/preference/ListPreference;

    invoke-direct {v1, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getWordCompletionPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 212
    const v2, 0x7f090124

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 213
    const v2, 0x7f090125

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 214
    const v2, 0x7f090126

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 215
    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 216
    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 220
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getWordCompletionPoint()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    .line 222
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/InputMethods;-><init>(Landroid/content/Context;)V

    .line 226
    iget v1, p0, Lcom/nuance/flext9_OEM/input/InputSettings;->mLanguageID:I

    .line 225
    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->findInputLanguage(I)Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v0

    .line 228
    if-nez v0, :cond_4

    .line 229
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    iget v2, p0, Lcom/nuance/flext9_OEM/input/InputSettings;->mLanguageID:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    const-string/jumbo v2, " in our available input languages"

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-object p1

    .line 235
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isTraceFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isTraceEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090150

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 247
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 249
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 252
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090151

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f05004c

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputSettings;->addPreferencesFromResource(I)V

    .line 38
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "language_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/InputSettings;->mLanguageID:I

    .line 40
    const-string/jumbo v1, "input_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/InputSettings;->mInputModeName:Ljava/lang/String;

    .line 42
    iget v0, p0, Lcom/nuance/flext9_OEM/input/InputSettings;->mLanguageID:I

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "We\'re expecting a language ID but we don\'t get it."

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputSettings;->mInputModeName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string/jumbo v1, "We\'re expecting a input mode but we don\'t get it."

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    new-instance v0, Lcom/nuance/flext9_OEM/input/InputMethods;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/InputMethods;-><init>(Landroid/content/Context;)V

    .line 53
    iget v1, p0, Lcom/nuance/flext9_OEM/input/InputSettings;->mLanguageID:I

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputMethods;->findInputLanguage(I)Lcom/nuance/flext9_OEM/input/InputMethods$Language;

    move-result-object v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    iget v2, p0, Lcom/nuance/flext9_OEM/input/InputSettings;->mLanguageID:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    const-string/jumbo v2, " in our available input languages"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/InputSettings;->mInputModeName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/InputSettings;->mInputModeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    const-string/jumbo v2, " in our available input methods"

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/InputSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 70
    iget-object v0, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget v0, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    const-string/jumbo v0, "keyboard_input_screen_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    :cond_4
    const-string/jumbo v0, "handwriting_input_screen_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_5
    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    iget-object v0, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    invoke-direct {p0, v3, v0}, Lcom/nuance/flext9_OEM/input/InputSettings;->createChineseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    .line 127
    :cond_6
    :goto_0
    return-void

    .line 95
    :cond_7
    iget-object v0, v2, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 98
    invoke-direct {p0, v3, v2, v0}, Lcom/nuance/flext9_OEM/input/InputSettings;->createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;

    goto :goto_0

    .line 108
    :cond_8
    iget-object v0, v1, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/InputSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    const-string/jumbo v0, "keyboard_input_screen_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 112
    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v4

    .line 113
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 114
    invoke-direct {p0, v0, v2, v4}, Lcom/nuance/flext9_OEM/input/InputSettings;->createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 117
    :cond_9
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;

    move-result-object v1

    .line 118
    const-string/jumbo v0, "handwriting_input_screen_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 120
    if-eqz v1, :cond_a

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/InputSettings;->createAlphaHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/flext9_OEM/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 124
    :cond_a
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 132
    return-void
.end method
